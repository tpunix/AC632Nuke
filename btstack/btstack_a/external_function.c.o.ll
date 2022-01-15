; ModuleID = 'external_function.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/external_function.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

; Function Attrs: nounwind optsize
define hidden void @btstack_cpu_disable_irqs() local_unnamed_addr #0 section ".bt_stack_code" !dbg !6 {
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #2, !dbg !10
  ret void, !dbg !11
}

; Function Attrs: optsize
declare void @local_irq_disable(...) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @btstack_cpu_enable_irqs() local_unnamed_addr #0 section ".bt_stack_code" !dbg !12 {
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #2, !dbg !13
  ret void, !dbg !14
}

; Function Attrs: optsize
declare void @local_irq_enable(...) local_unnamed_addr #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "../btcommon/external_function.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!6 = distinct !DISubprogram(name: "btstack_cpu_disable_irqs", scope: !7, file: !7, line: 69, type: !8, isLocal: false, isDefinition: true, scopeLine: 70, isOptimized: true, unit: !0, variables: !2)
!7 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/external_function.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocation(line: 71, column: 5, scope: !6)
!11 = !DILocation(line: 72, column: 1, scope: !6)
!12 = distinct !DISubprogram(name: "btstack_cpu_enable_irqs", scope: !7, file: !7, line: 73, type: !8, isLocal: false, isDefinition: true, scopeLine: 74, isOptimized: true, unit: !0, variables: !2)
!13 = !DILocation(line: 75, column: 5, scope: !12)
!14 = !DILocation(line: 76, column: 1, scope: !12)
