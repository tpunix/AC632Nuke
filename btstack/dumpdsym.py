import os;
import sys;
import pickle;


def isTagLevel1(tagname):
    if ((tagname == 'DW_TAG_subprogram' ) or (tagname.endswith('_type') and tagname != 'DW_TAG_subrange_type') or (tagname == 'DW_TAG_typedef')) :
        return True;
    return False;

def isTagLevel2(tagname):
    if (tagname == 'DW_TAG_formal_parameter' ) or (tagname == 'DW_TAG_member') or (tagname == 'DW_TAG_subrange_type') or (tagname == 'DW_TAG_enumerator'):
        return True;
    return False;

def getTypeId(str):
    arr = str.split();
    return int(arr[2], 16);

def getTypeName(str):
    return str[str.find('"')+1:-1];

def getTypeBase(id):
    global otable;

    tobj = otable[id];
    tag = tobj['tag'];
    if ((tag == 'DW_TAG_typedef') or (tag == 'DW_TAG_base_type') or (tag == 'DW_TAG_structure_type') or (tag == 'DW_TAG_array_type')):
        return tobj;

    next_id = getTypeId(tobj['DW_AT_type']);
    return getTypeBase(next_id);


def commitObj1(obj1):
    global otable, ftable;

    if (obj1 == None):
        return;

    #print(obj1);
    if('DW_AT_name' in obj1):
        obj1['name'] = obj1['DW_AT_name'][1:-1];
    if (obj1['tag'] == 'DW_TAG_subprogram' ):
        if('DW_AT_name' in obj1):
            ftable[obj1['name']] = obj1;
    otable[obj1['id']] = obj1;


def commitObj2(obj1, obj2):
    if (obj1 == None) or (obj2 == None):
        return;
    if('DW_AT_name' in obj2):
        obj2['name'] = obj2['DW_AT_name'][1:-1];
    if (obj2['tag'] == 'DW_TAG_subrange_type'):
        obj1['count'] = int(obj2['DW_AT_count'], 16);
    else:
        obj1['child'].append(obj2);


def loadDwarfText(fname):
    global otable, ftable;
    otable = {};
    ftable = {};
    obj1 = None;
    obj2 = None;
    
    lastParam = None;
    
    
    with open(fname, 'r') as f:
        for line in f: 
            if len(line.strip()) == 0:
                continue;
            if (line.startswith('0x')): 
                arr = line.split();
                tagName = arr[1];
                #print("\n");
                #print(tagName);
                if (isTagLevel1(tagName)):
                    commitObj2(obj1, obj2);
                    commitObj1(obj1);
                    obj2 = None;
                    obj1 = None;
                    obj1 = {'id': int(arr[0][2:10], 16), 'tag': tagName, 'child': []};
                elif (isTagLevel2(tagName)):
                    commitObj2(obj1, obj2);
                    obj2 = {'id': int(arr[0][2:10], 16), 'tag': tagName};
                else: 
                    commitObj2(obj1, obj2);
                    commitObj1(obj1);
                    obj2 = None;
                    obj1 = None;
                continue;

            arr2 = line.strip().split();
            if (arr2[0].startswith('DW_AT_')):
                attrName = arr2[0];
                attrValue = line[line.find('(')+1:line.find(')')];
                #print(attrName, attrValue);
                if (obj2 != None):
                    obj2[attrName] = attrValue;
                elif (obj1 != None):
                    obj1[attrName] = attrValue;
                continue;


def exportFunc() :
    print('\n\n');
    fnlist = ftable.keys();
    
    for fname in fnlist:
        fobj = ftable[fname];
        if('DW_AT_type' in fobj):
            lines = getTypeName(fobj['DW_AT_type']);
        else:
            lines = "void";

        lines += ' ' + fname + '('

        args = '';
        for child in fobj['child']:
            if (child['tag'] != 'DW_TAG_formal_parameter'): 
                continue;
            args += getTypeName(child['DW_AT_type']);
            args += ' ' + child['name'];
            args += ', ';
        lines += args[0:-2];
        lines += ');\n'

        print(lines);

def exportTypedef() :
    print('\n\n');
    for id in otable:
        obj = otable[id];
        if(obj['tag'] != 'DW_TAG_typedef'):
            continue;
        #print("\n\n", obj);

        bobj = getTypeBase(getTypeId(obj['DW_AT_type']));

        count = 0;
        if(bobj['tag'] == 'DW_TAG_array_type'):
            count = bobj['count'];
            bobj = getTypeBase(getTypeId(bobj['DW_AT_type']));

        if ('DW_AT_name' in bobj):
            outs = 'typedef ';
            outs += bobj['name'];
            if(count):
                outs += '[' + str(count) + ']';
            outs += ' ' + obj['name'] + ';';
            print(outs);

def exportEnum() :
    print('\n\n');
    for id in otable:
        obj = otable[id];
        if(obj['tag'] != 'DW_TAG_enumeration_type'):
            continue;
        #print("\n\n", obj);

        enums = 'enum {\n';
        for child in obj['child']:
            if (child['tag'] != 'DW_TAG_enumerator'): 
                continue;
            enums += '\t' + child['name'] + ' : ';
            enums += child['DW_AT_const_value']
            enums += '\n'
        enums += '};\n\n'
        print(enums);

def exportStruct() :
    print('\n\n');
    for id in otable:
        obj = otable[id];
        if(obj['tag'] != 'DW_TAG_structure_type'):
            continue;

        lines = 'struct ';
        if ('DW_AT_name' in obj):
            lines += obj['name'];
        lines += ' {\n'

        for child in obj['child']:
            if (child['tag'] != 'DW_TAG_member'): 
                continue;
            lines += '\t' + getTypeName(child['DW_AT_type']) + ' ' + child['name'] + ';\n';
        lines += '};\n\n'
        print(lines);


loadDwarfText(sys.argv[1]);
exportTypedef();
exportEnum();
exportStruct();
exportFunc();
