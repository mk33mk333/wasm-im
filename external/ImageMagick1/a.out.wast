(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$jiji (func (param i32 i64 i32) (result i64)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "memory" (memory $memory 256 256))
 (data (i32.const 1024) "\05")
 (data (i32.const 1036) "\01")
 (data (i32.const 1060) "\01\00\00\00\01\00\00\00\a8\04\00\00\00\04")
 (data (i32.const 1084) "\01")
 (data (i32.const 1099) "\n\ff\ff\ff\ff")
 (data (i32.const 1169) "\04")
 (import "env" "table" (table $table 6 6 funcref))
 (elem (global.get $__table_base) $b0 $___emscripten_stdout_close $b1 $___stdio_write $b2 $___emscripten_stdout_seek)
 (import "env" "__table_base" (global $__table_base i32))
 (import "env" "DYNAMICTOP_PTR" (global $DYNAMICTOP_PTR$asm2wasm$import i32))
 (import "env" "abort" (func $abort (param i32)))
 (import "env" "___lock" (func $___lock (param i32)))
 (import "env" "___setErrNo" (func $___setErrNo (param i32)))
 (import "env" "___unlock" (func $___unlock (param i32)))
 (import "env" "___wasi_fd_write" (func $___wasi_fd_write (param i32 i32 i32 i32) (result i32)))
 (import "env" "_abort" (func $_abort))
 (import "env" "_emscripten_get_heap_size" (func $_emscripten_get_heap_size (result i32)))
 (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (param i32 i32 i32) (result i32)))
 (import "env" "_emscripten_resize_heap" (func $_emscripten_resize_heap (param i32) (result i32)))
 (import "env" "abortOnCannotGrowMemory" (func $abortOnCannotGrowMemory (param i32) (result i32)))
 (import "env" "setTempRet0" (func $setTempRet0 (param i32)))
 (global $STACKTOP (mut i32) (i32.const 3968))
 (global $STACK_MAX (mut i32) (i32.const 5246848))
 (export "___errno_location" (func $___errno_location))
 (export "_fflush" (func $_fflush))
 (export "_free" (func $_free))
 (export "_malloc" (func $_malloc))
 (export "_memcpy" (func $_memcpy))
 (export "_memset" (func $_memset))
 (export "_sbrk" (func $_sbrk))
 (export "dynCall_ii" (func $dynCall_ii))
 (export "dynCall_iiii" (func $dynCall_iiii))
 (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
 (export "establishStackSpace" (func $establishStackSpace))
 (export "stackAlloc" (func $stackAlloc))
 (export "stackRestore" (func $stackRestore))
 (export "stackSave" (func $stackSave))
 (func $stackAlloc (; 11 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (local.get $0)
    (global.get $STACKTOP)
   )
  )
  (global.set $STACKTOP
   (i32.and
    (i32.add
     (global.get $STACKTOP)
     (i32.const 15)
    )
    (i32.const -16)
   )
  )
  (local.get $1)
 )
 (func $stackSave (; 12 ;) (; has Stack IR ;) (result i32)
  (global.get $STACKTOP)
 )
 (func $stackRestore (; 13 ;) (; has Stack IR ;) (param $0 i32)
  (global.set $STACKTOP
   (local.get $0)
  )
 )
 (func $establishStackSpace (; 14 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (global.set $STACKTOP
   (local.get $0)
  )
  (global.set $STACK_MAX
   (local.get $1)
  )
 )
 (func $___errno_location (; 15 ;) (; has Stack IR ;) (result i32)
  (i32.const 2224)
 )
 (func $___stdio_write (; 16 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local.set $6
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 32)
   )
  )
  (local.set $7
   (i32.add
    (local.get $6)
    (i32.const 16)
   )
  )
  (i32.store
   (local.tee $3
    (local.get $6)
   )
   (local.tee $4
    (i32.load
     (local.tee $9
      (i32.add
       (local.get $0)
       (i32.const 28)
      )
     )
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 4)
   )
   (local.tee $5
    (i32.sub
     (i32.load
      (local.tee $10
       (i32.add
        (local.get $0)
        (i32.const 20)
       )
      )
     )
     (local.get $4)
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 8)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 12)
   )
   (local.get $2)
  )
  (local.set $12
   (i32.add
    (local.get $0)
    (i32.const 60)
   )
  )
  (local.set $4
   (i32.const 2)
  )
  (local.set $5
   (i32.add
    (local.get $2)
    (local.get $5)
   )
  )
  (local.set $1
   (local.get $3)
  )
  (block $__rjto$1
   (block $__rjti$1
    (loop $while-in
     (if
      (i32.ne
       (local.tee $3
        (if (result i32)
         (i32.and
          (call $___wasi_fd_write
           (i32.load
            (local.get $12)
           )
           (local.get $1)
           (local.get $4)
           (local.get $7)
          )
          (i32.const 65535)
         )
         (block (result i32)
          (i32.store
           (local.get $7)
           (i32.const -1)
          )
          (i32.const -1)
         )
         (i32.load
          (local.get $7)
         )
        )
       )
       (local.get $5)
      )
      (block
       (br_if $__rjti$1
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
       )
       (i32.store
        (local.tee $1
         (select
          (i32.add
           (local.get $1)
           (i32.const 8)
          )
          (local.get $1)
          (local.tee $11
           (i32.gt_u
            (local.get $3)
            (local.tee $8
             (i32.load
              (i32.add
               (local.get $1)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
        )
        (i32.add
         (local.tee $8
          (i32.sub
           (local.get $3)
           (select
            (local.get $8)
            (i32.const 0)
            (local.get $11)
           )
          )
         )
         (i32.load
          (local.get $1)
         )
        )
       )
       (i32.store
        (local.tee $13
         (i32.add
          (local.get $1)
          (i32.const 4)
         )
        )
        (i32.sub
         (i32.load
          (local.get $13)
         )
         (local.get $8)
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.shr_s
          (i32.shl
           (local.get $11)
           (i32.const 31)
          )
          (i32.const 31)
         )
        )
       )
       (local.set $5
        (i32.sub
         (local.get $5)
         (local.get $3)
        )
       )
       (br $while-in)
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 16)
     )
     (i32.add
      (local.tee $1
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 44)
        )
       )
      )
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 48)
       )
      )
     )
    )
    (i32.store
     (local.get $9)
     (local.get $1)
    )
    (i32.store
     (local.get $10)
     (local.get $1)
    )
    (br $__rjto$1)
   )
   (i32.store
    (i32.add
     (local.get $0)
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.store
    (local.get $9)
    (i32.const 0)
   )
   (i32.store
    (local.get $10)
    (i32.const 0)
   )
   (i32.store
    (local.get $0)
    (i32.or
     (i32.load
      (local.get $0)
     )
     (i32.const 32)
    )
   )
   (local.set $2
    (if (result i32)
     (i32.eq
      (local.get $4)
      (i32.const 2)
     )
     (i32.const 0)
     (i32.sub
      (local.get $2)
      (i32.load
       (i32.add
        (local.get $1)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (global.set $STACKTOP
   (local.get $6)
  )
  (local.get $2)
 )
 (func $___emscripten_stdout_close (; 17 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (i32.const 0)
 )
 (func $___emscripten_stdout_seek (; 18 ;) (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (i64.const 0)
 )
 (func $_fflush (; 19 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (local.get $0)
   (local.set $0
    (block $do-once (result i32)
     (if
      (i32.le_s
       (i32.load offset=76
        (local.get $0)
       )
       (i32.const -1)
      )
      (br $do-once
       (call $___fflush_unlocked
        (local.get $0)
       )
      )
     )
     (call $___fflush_unlocked
      (local.get $0)
     )
    )
   )
   (block
    (local.set $0
     (if (result i32)
      (i32.load
       (i32.const 1168)
      )
      (call $_fflush
       (i32.load
        (i32.const 1168)
       )
      )
      (i32.const 0)
     )
    )
    (if
     (block (result i32)
      (call $___lock
       (i32.const 2228)
      )
      (local.tee $1
       (i32.load
        (i32.const 2236)
       )
      )
     )
     (loop $while-in
      (drop
       (if (result i32)
        (i32.gt_s
         (i32.load offset=76
          (local.get $1)
         )
         (i32.const -1)
        )
        (i32.const 1)
        (i32.const 0)
       )
      )
      (if
       (i32.gt_u
        (i32.load offset=20
         (local.get $1)
        )
        (i32.load offset=28
         (local.get $1)
        )
       )
       (local.set $0
        (i32.or
         (call $___fflush_unlocked
          (local.get $1)
         )
         (local.get $0)
        )
       )
      )
      (br_if $while-in
       (local.tee $1
        (i32.load offset=56
         (local.get $1)
        )
       )
      )
     )
    )
    (call $___unlock
     (i32.const 2228)
    )
   )
  )
  (local.get $0)
 )
 (func $___fflush_unlocked (; 20 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $__rjto$0 (result i32)
   (block $__rjti$0
    (br_if $__rjti$0
     (i32.le_u
      (i32.load
       (local.tee $2
        (i32.add
         (local.get $0)
         (i32.const 20)
        )
       )
      )
      (i32.load
       (local.tee $3
        (i32.add
         (local.get $0)
         (i32.const 28)
        )
       )
      )
     )
    )
    (local.set $1
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 36)
      )
     )
    )
    (drop
     (call_indirect (type $FUNCSIG$iiii)
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
      (i32.add
       (i32.and
        (local.get $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (br_if $__rjti$0
     (i32.load
      (local.get $2)
     )
    )
    (br $__rjto$0
     (i32.const -1)
    )
   )
   (if
    (i32.lt_u
     (local.tee $4
      (i32.load
       (local.tee $1
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
     (local.tee $6
      (i32.load
       (local.tee $5
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
       )
      )
     )
    )
    (block
     (local.set $7
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 40)
       )
      )
     )
     (drop
      (call_indirect (type $FUNCSIG$jiji)
       (local.get $0)
       (i64.extend_i32_s
        (i32.sub
         (local.get $4)
         (local.get $6)
        )
       )
       (i32.const 1)
       (i32.add
        (i32.and
         (local.get $7)
         (i32.const 1)
        )
        (i32.const 4)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (local.get $0)
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.store
    (local.get $3)
    (i32.const 0)
   )
   (i32.store
    (local.get $2)
    (i32.const 0)
   )
   (i32.store
    (local.get $5)
    (i32.const 0)
   )
   (i32.store
    (local.get $1)
    (i32.const 0)
   )
   (i32.const 0)
  )
 )
 (func $_malloc (; 21 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local.set $14
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (local.set $3
   (if (result i32)
    (i32.lt_u
     (local.get $0)
     (i32.const 245)
    )
    (block (result i32)
     (if
      (i32.and
       (local.tee $3
        (i32.shr_u
         (local.tee $7
          (i32.load
           (i32.const 2240)
          )
         )
         (local.tee $0
          (i32.shr_u
           (local.tee $2
            (select
             (i32.const 16)
             (i32.and
              (i32.add
               (local.get $0)
               (i32.const 11)
              )
              (i32.const -8)
             )
             (i32.lt_u
              (local.get $0)
              (i32.const 11)
             )
            )
           )
           (i32.const 3)
          )
         )
        )
       )
       (i32.const 3)
      )
      (block
       (if
        (i32.eq
         (local.tee $0
          (i32.load
           (local.tee $6
            (i32.add
             (local.tee $3
              (i32.load
               (local.tee $4
                (i32.add
                 (local.tee $2
                  (i32.add
                   (i32.shl
                    (local.tee $1
                     (i32.add
                      (i32.xor
                       (i32.and
                        (local.get $3)
                        (i32.const 1)
                       )
                       (i32.const 1)
                      )
                      (local.get $0)
                     )
                    )
                    (i32.const 3)
                   )
                   (i32.const 2280)
                  )
                 )
                 (i32.const 8)
                )
               )
              )
             )
             (i32.const 8)
            )
           )
          )
         )
         (local.get $2)
        )
        (i32.store
         (i32.const 2240)
         (i32.and
          (i32.xor
           (i32.shl
            (i32.const 1)
            (local.get $1)
           )
           (i32.const -1)
          )
          (local.get $7)
         )
        )
        (block
         (if
          (i32.gt_u
           (i32.load
            (i32.const 2256)
           )
           (local.get $0)
          )
          (call $_abort)
         )
         (if
          (i32.eq
           (local.get $3)
           (i32.load
            (local.tee $5
             (i32.add
              (local.get $0)
              (i32.const 12)
             )
            )
           )
          )
          (block
           (i32.store
            (local.get $5)
            (local.get $2)
           )
           (i32.store
            (local.get $4)
            (local.get $0)
           )
          )
          (call $_abort)
         )
        )
       )
       (i32.store offset=4
        (local.get $3)
        (i32.or
         (local.tee $0
          (i32.shl
           (local.get $1)
           (i32.const 3)
          )
         )
         (i32.const 3)
        )
       )
       (i32.store
        (local.tee $0
         (i32.add
          (i32.add
           (local.get $0)
           (local.get $3)
          )
          (i32.const 4)
         )
        )
        (i32.or
         (i32.load
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (global.set $STACKTOP
        (local.get $14)
       )
       (return
        (local.get $6)
       )
      )
     )
     (if (result i32)
      (i32.gt_u
       (local.get $2)
       (local.tee $12
        (i32.load
         (i32.const 2248)
        )
       )
      )
      (block (result i32)
       (if
        (local.get $3)
        (block
         (if
          (i32.eq
           (local.tee $3
            (i32.load
             (local.tee $9
              (i32.add
               (local.tee $0
                (i32.load
                 (local.tee $10
                  (i32.add
                   (local.tee $5
                    (i32.add
                     (i32.shl
                      (local.tee $1
                       (i32.add
                        (i32.or
                         (i32.or
                          (i32.or
                           (i32.or
                            (local.tee $3
                             (i32.and
                              (i32.shr_u
                               (local.tee $0
                                (i32.add
                                 (i32.and
                                  (local.tee $0
                                   (i32.and
                                    (i32.shl
                                     (local.get $3)
                                     (local.get $0)
                                    )
                                    (i32.or
                                     (local.tee $0
                                      (i32.shl
                                       (i32.const 2)
                                       (local.get $0)
                                      )
                                     )
                                     (i32.sub
                                      (i32.const 0)
                                      (local.get $0)
                                     )
                                    )
                                   )
                                  )
                                  (i32.sub
                                   (i32.const 0)
                                   (local.get $0)
                                  )
                                 )
                                 (i32.const -1)
                                )
                               )
                               (i32.const 12)
                              )
                              (i32.const 16)
                             )
                            )
                            (local.tee $3
                             (i32.and
                              (i32.shr_u
                               (local.tee $0
                                (i32.shr_u
                                 (local.get $0)
                                 (local.get $3)
                                )
                               )
                               (i32.const 5)
                              )
                              (i32.const 8)
                             )
                            )
                           )
                           (local.tee $3
                            (i32.and
                             (i32.shr_u
                              (local.tee $0
                               (i32.shr_u
                                (local.get $0)
                                (local.get $3)
                               )
                              )
                              (i32.const 2)
                             )
                             (i32.const 4)
                            )
                           )
                          )
                          (local.tee $3
                           (i32.and
                            (i32.shr_u
                             (local.tee $0
                              (i32.shr_u
                               (local.get $0)
                               (local.get $3)
                              )
                             )
                             (i32.const 1)
                            )
                            (i32.const 2)
                           )
                          )
                         )
                         (local.tee $3
                          (i32.and
                           (i32.shr_u
                            (local.tee $0
                             (i32.shr_u
                              (local.get $0)
                              (local.get $3)
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.const 1)
                          )
                         )
                        )
                        (i32.shr_u
                         (local.get $0)
                         (local.get $3)
                        )
                       )
                      )
                      (i32.const 3)
                     )
                     (i32.const 2280)
                    )
                   )
                   (i32.const 8)
                  )
                 )
                )
               )
               (i32.const 8)
              )
             )
            )
           )
           (local.get $5)
          )
          (i32.store
           (i32.const 2240)
           (local.tee $4
            (i32.and
             (i32.xor
              (i32.shl
               (i32.const 1)
               (local.get $1)
              )
              (i32.const -1)
             )
             (local.get $7)
            )
           )
          )
          (block
           (if
            (i32.gt_u
             (i32.load
              (i32.const 2256)
             )
             (local.get $3)
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (local.get $0)
             (i32.load
              (local.tee $11
               (i32.add
                (local.get $3)
                (i32.const 12)
               )
              )
             )
            )
            (block
             (i32.store
              (local.get $11)
              (local.get $5)
             )
             (i32.store
              (local.get $10)
              (local.get $3)
             )
             (local.set $4
              (local.get $7)
             )
            )
            (call $_abort)
           )
          )
         )
         (i32.store offset=4
          (local.get $0)
          (i32.or
           (local.get $2)
           (i32.const 3)
          )
         )
         (i32.store offset=4
          (local.tee $7
           (i32.add
            (local.get $0)
            (local.get $2)
           )
          )
          (i32.or
           (local.tee $5
            (i32.sub
             (local.tee $3
              (i32.shl
               (local.get $1)
               (i32.const 3)
              )
             )
             (local.get $2)
            )
           )
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $0)
           (local.get $3)
          )
          (local.get $5)
         )
         (if
          (local.get $12)
          (block
           (local.set $2
            (i32.load
             (i32.const 2260)
            )
           )
           (local.set $0
            (i32.add
             (i32.shl
              (local.tee $3
               (i32.shr_u
                (local.get $12)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
             (i32.const 2280)
            )
           )
           (if
            (i32.and
             (local.tee $3
              (i32.shl
               (i32.const 1)
               (local.get $3)
              )
             )
             (local.get $4)
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.tee $1
               (i32.load
                (local.tee $3
                 (i32.add
                  (local.get $0)
                  (i32.const 8)
                 )
                )
               )
              )
             )
             (call $_abort)
             (block
              (local.set $6
               (local.get $1)
              )
              (local.set $13
               (local.get $3)
              )
             )
            )
            (block
             (i32.store
              (i32.const 2240)
              (i32.or
               (local.get $3)
               (local.get $4)
              )
             )
             (local.set $6
              (local.get $0)
             )
             (local.set $13
              (i32.add
               (local.get $0)
               (i32.const 8)
              )
             )
            )
           )
           (i32.store
            (local.get $13)
            (local.get $2)
           )
           (i32.store offset=12
            (local.get $6)
            (local.get $2)
           )
           (i32.store offset=8
            (local.get $2)
            (local.get $6)
           )
           (i32.store offset=12
            (local.get $2)
            (local.get $0)
           )
          )
         )
         (i32.store
          (i32.const 2248)
          (local.get $5)
         )
         (i32.store
          (i32.const 2260)
          (local.get $7)
         )
         (global.set $STACKTOP
          (local.get $14)
         )
         (return
          (local.get $9)
         )
        )
       )
       (if (result i32)
        (local.tee $13
         (i32.load
          (i32.const 2244)
         )
        )
        (block
         (local.set $3
          (local.tee $4
           (i32.load
            (i32.add
             (i32.shl
              (i32.add
               (i32.or
                (i32.or
                 (i32.or
                  (i32.or
                   (local.tee $3
                    (i32.and
                     (i32.shr_u
                      (local.tee $0
                       (i32.add
                        (i32.and
                         (local.get $13)
                         (i32.sub
                          (i32.const 0)
                          (local.get $13)
                         )
                        )
                        (i32.const -1)
                       )
                      )
                      (i32.const 12)
                     )
                     (i32.const 16)
                    )
                   )
                   (local.tee $3
                    (i32.and
                     (i32.shr_u
                      (local.tee $0
                       (i32.shr_u
                        (local.get $0)
                        (local.get $3)
                       )
                      )
                      (i32.const 5)
                     )
                     (i32.const 8)
                    )
                   )
                  )
                  (local.tee $3
                   (i32.and
                    (i32.shr_u
                     (local.tee $0
                      (i32.shr_u
                       (local.get $0)
                       (local.get $3)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.const 4)
                   )
                  )
                 )
                 (local.tee $3
                  (i32.and
                   (i32.shr_u
                    (local.tee $0
                     (i32.shr_u
                      (local.get $0)
                      (local.get $3)
                     )
                    )
                    (i32.const 1)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (local.tee $3
                 (i32.and
                  (i32.shr_u
                   (local.tee $0
                    (i32.shr_u
                     (local.get $0)
                     (local.get $3)
                    )
                   )
                   (i32.const 1)
                  )
                  (i32.const 1)
                 )
                )
               )
               (i32.shr_u
                (local.get $0)
                (local.get $3)
               )
              )
              (i32.const 2)
             )
             (i32.const 2544)
            )
           )
          )
         )
         (local.set $9
          (i32.sub
           (i32.and
            (i32.load offset=4
             (local.get $4)
            )
            (i32.const -8)
           )
           (local.get $2)
          )
         )
         (loop $while-in
          (block $while-out
           (if
            (i32.eqz
             (local.tee $0
              (i32.load offset=16
               (local.get $3)
              )
             )
            )
            (br_if $while-out
             (i32.eqz
              (local.tee $0
               (i32.load offset=20
                (local.get $3)
               )
              )
             )
            )
           )
           (local.set $3
            (local.get $0)
           )
           (local.set $4
            (select
             (local.get $0)
             (local.get $4)
             (local.tee $6
              (i32.lt_u
               (local.tee $0
                (i32.sub
                 (i32.and
                  (i32.load offset=4
                   (local.get $0)
                  )
                  (i32.const -8)
                 )
                 (local.get $2)
                )
               )
               (local.get $9)
              )
             )
            )
           )
           (local.set $9
            (select
             (local.get $0)
             (local.get $9)
             (local.get $6)
            )
           )
           (br $while-in)
          )
         )
         (if
          (i32.gt_u
           (local.tee $15
            (i32.load
             (i32.const 2256)
            )
           )
           (local.get $4)
          )
          (call $_abort)
         )
         (if
          (i32.le_u
           (local.tee $8
            (i32.add
             (local.get $2)
             (local.get $4)
            )
           )
           (local.get $4)
          )
          (call $_abort)
         )
         (local.set $11
          (i32.load offset=24
           (local.get $4)
          )
         )
         (if
          (i32.eq
           (local.get $4)
           (local.tee $0
            (i32.load offset=12
             (local.get $4)
            )
           )
          )
          (block $do-once4
           (if
            (i32.eqz
             (local.tee $0
              (i32.load
               (local.tee $3
                (i32.add
                 (local.get $4)
                 (i32.const 20)
                )
               )
              )
             )
            )
            (br_if $do-once4
             (i32.eqz
              (local.tee $0
               (i32.load
                (local.tee $3
                 (i32.add
                  (local.get $4)
                  (i32.const 16)
                 )
                )
               )
              )
             )
            )
           )
           (loop $while-in7
            (block $while-out6
             (local.set $0
              (if (result i32)
               (local.tee $10
                (i32.load
                 (local.tee $6
                  (i32.add
                   (local.get $0)
                   (i32.const 20)
                  )
                 )
                )
               )
               (block (result i32)
                (local.set $3
                 (local.get $6)
                )
                (local.get $10)
               )
               (block (result i32)
                (br_if $while-out6
                 (i32.eqz
                  (local.tee $10
                   (i32.load
                    (local.tee $6
                     (i32.add
                      (local.get $0)
                      (i32.const 16)
                     )
                    )
                   )
                  )
                 )
                )
                (local.set $3
                 (local.get $6)
                )
                (local.get $10)
               )
              )
             )
             (br $while-in7)
            )
           )
           (if
            (i32.gt_u
             (local.get $15)
             (local.get $3)
            )
            (call $_abort)
            (block
             (i32.store
              (local.get $3)
              (i32.const 0)
             )
             (local.set $1
              (local.get $0)
             )
            )
           )
          )
          (block
           (if
            (i32.gt_u
             (local.get $15)
             (local.tee $3
              (i32.load offset=8
               (local.get $4)
              )
             )
            )
            (call $_abort)
           )
           (if
            (i32.ne
             (i32.load
              (local.tee $6
               (i32.add
                (local.get $3)
                (i32.const 12)
               )
              )
             )
             (local.get $4)
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (local.get $4)
             (i32.load
              (local.tee $10
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
            (block
             (i32.store
              (local.get $6)
              (local.get $0)
             )
             (i32.store
              (local.get $10)
              (local.get $3)
             )
             (local.set $1
              (local.get $0)
             )
            )
            (call $_abort)
           )
          )
         )
         (if
          (local.get $11)
          (block $label$break$L78
           (if
            (i32.eq
             (local.get $4)
             (i32.load
              (local.tee $3
               (i32.add
                (i32.shl
                 (local.tee $0
                  (i32.load offset=28
                   (local.get $4)
                  )
                 )
                 (i32.const 2)
                )
                (i32.const 2544)
               )
              )
             )
            )
            (block
             (i32.store
              (local.get $3)
              (local.get $1)
             )
             (if
              (i32.eqz
               (local.get $1)
              )
              (block
               (i32.store
                (i32.const 2244)
                (i32.and
                 (local.get $13)
                 (i32.xor
                  (i32.shl
                   (i32.const 1)
                   (local.get $0)
                  )
                  (i32.const -1)
                 )
                )
               )
               (br $label$break$L78)
              )
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.get $11)
             )
             (call $_abort)
             (block
              (i32.store
               (select
                (local.tee $0
                 (i32.add
                  (local.get $11)
                  (i32.const 16)
                 )
                )
                (i32.add
                 (local.get $11)
                 (i32.const 20)
                )
                (i32.eq
                 (local.get $4)
                 (i32.load
                  (local.get $0)
                 )
                )
               )
               (local.get $1)
              )
              (br_if $label$break$L78
               (i32.eqz
                (local.get $1)
               )
              )
             )
            )
           )
           (if
            (i32.gt_u
             (local.tee $3
              (i32.load
               (i32.const 2256)
              )
             )
             (local.get $1)
            )
            (call $_abort)
           )
           (i32.store offset=24
            (local.get $1)
            (local.get $11)
           )
           (if
            (local.tee $0
             (i32.load offset=16
              (local.get $4)
             )
            )
            (if
             (i32.gt_u
              (local.get $3)
              (local.get $0)
             )
             (call $_abort)
             (block
              (i32.store offset=16
               (local.get $1)
               (local.get $0)
              )
              (i32.store offset=24
               (local.get $0)
               (local.get $1)
              )
             )
            )
           )
           (if
            (local.tee $0
             (i32.load offset=20
              (local.get $4)
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.get $0)
             )
             (call $_abort)
             (block
              (i32.store offset=20
               (local.get $1)
               (local.get $0)
              )
              (i32.store offset=24
               (local.get $0)
               (local.get $1)
              )
             )
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $9)
           (i32.const 16)
          )
          (block
           (i32.store offset=4
            (local.get $4)
            (i32.or
             (local.tee $0
              (i32.add
               (local.get $2)
               (local.get $9)
              )
             )
             (i32.const 3)
            )
           )
           (i32.store
            (local.tee $0
             (i32.add
              (i32.add
               (local.get $0)
               (local.get $4)
              )
              (i32.const 4)
             )
            )
            (i32.or
             (i32.load
              (local.get $0)
             )
             (i32.const 1)
            )
           )
          )
          (block
           (i32.store offset=4
            (local.get $4)
            (i32.or
             (local.get $2)
             (i32.const 3)
            )
           )
           (i32.store offset=4
            (local.get $8)
            (i32.or
             (local.get $9)
             (i32.const 1)
            )
           )
           (i32.store
            (i32.add
             (local.get $8)
             (local.get $9)
            )
            (local.get $9)
           )
           (if
            (local.get $12)
            (block
             (local.set $2
              (i32.load
               (i32.const 2260)
              )
             )
             (local.set $0
              (i32.add
               (i32.shl
                (local.tee $3
                 (i32.shr_u
                  (local.get $12)
                  (i32.const 3)
                 )
                )
                (i32.const 3)
               )
               (i32.const 2280)
              )
             )
             (if
              (i32.and
               (local.tee $3
                (i32.shl
                 (i32.const 1)
                 (local.get $3)
                )
               )
               (local.get $7)
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 2256)
                )
                (local.tee $1
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $0)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
               (call $_abort)
               (block
                (local.set $5
                 (local.get $1)
                )
                (local.set $16
                 (local.get $3)
                )
               )
              )
              (block
               (i32.store
                (i32.const 2240)
                (i32.or
                 (local.get $3)
                 (local.get $7)
                )
               )
               (local.set $5
                (local.get $0)
               )
               (local.set $16
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
             )
             (i32.store
              (local.get $16)
              (local.get $2)
             )
             (i32.store offset=12
              (local.get $5)
              (local.get $2)
             )
             (i32.store offset=8
              (local.get $2)
              (local.get $5)
             )
             (i32.store offset=12
              (local.get $2)
              (local.get $0)
             )
            )
           )
           (i32.store
            (i32.const 2248)
            (local.get $9)
           )
           (i32.store
            (i32.const 2260)
            (local.get $8)
           )
          )
         )
         (global.set $STACKTOP
          (local.get $14)
         )
         (return
          (i32.add
           (local.get $4)
           (i32.const 8)
          )
         )
        )
        (local.get $2)
       )
      )
      (local.get $2)
     )
    )
    (if (result i32)
     (i32.gt_u
      (local.get $0)
      (i32.const -65)
     )
     (i32.const -1)
     (block $do-once (result i32)
      (local.set $4
       (i32.and
        (local.tee $0
         (i32.add
          (local.get $0)
          (i32.const 11)
         )
        )
        (i32.const -8)
       )
      )
      (if (result i32)
       (local.tee $6
        (i32.load
         (i32.const 2244)
        )
       )
       (block (result i32)
        (local.set $18
         (if (result i32)
          (local.tee $0
           (i32.shr_u
            (local.get $0)
            (i32.const 8)
           )
          )
          (if (result i32)
           (i32.gt_u
            (local.get $4)
            (i32.const 16777215)
           )
           (i32.const 31)
           (i32.or
            (i32.shl
             (local.tee $0
              (i32.add
               (i32.sub
                (i32.const 14)
                (i32.or
                 (i32.or
                  (local.tee $0
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.tee $2
                       (i32.shl
                        (local.get $0)
                        (local.tee $1
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (local.get $0)
                            (i32.const 1048320)
                           )
                           (i32.const 16)
                          )
                          (i32.const 8)
                         )
                        )
                       )
                      )
                      (i32.const 520192)
                     )
                     (i32.const 16)
                    )
                    (i32.const 4)
                   )
                  )
                  (local.get $1)
                 )
                 (local.tee $1
                  (i32.and
                   (i32.shr_u
                    (i32.add
                     (local.tee $0
                      (i32.shl
                       (local.get $2)
                       (local.get $0)
                      )
                     )
                     (i32.const 245760)
                    )
                    (i32.const 16)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
               (i32.shr_u
                (i32.shl
                 (local.get $0)
                 (local.get $1)
                )
                (i32.const 15)
               )
              )
             )
             (i32.const 1)
            )
            (i32.and
             (i32.shr_u
              (local.get $4)
              (i32.add
               (local.get $0)
               (i32.const 7)
              )
             )
             (i32.const 1)
            )
           )
          )
          (i32.const 0)
         )
        )
        (local.set $2
         (i32.sub
          (i32.const 0)
          (local.get $4)
         )
        )
        (block $__rjto$1
         (block $__rjti$1
          (if
           (i32.eqz
            (i32.or
             (local.tee $0
              (if (result i32)
               (local.tee $0
                (i32.load
                 (i32.add
                  (i32.shl
                   (local.get $18)
                   (i32.const 2)
                  )
                  (i32.const 2544)
                 )
                )
               )
               (block (result i32)
                (local.set $1
                 (i32.const 0)
                )
                (local.set $13
                 (i32.shl
                  (local.get $4)
                  (select
                   (i32.const 0)
                   (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                     (local.get $18)
                     (i32.const 1)
                    )
                   )
                   (i32.eq
                    (local.get $18)
                    (i32.const 31)
                   )
                  )
                 )
                )
                (loop $while-in15 (result i32)
                 (if
                  (i32.lt_u
                   (local.tee $16
                    (i32.sub
                     (i32.and
                      (i32.load offset=4
                       (local.get $0)
                      )
                      (i32.const -8)
                     )
                     (local.get $4)
                    )
                   )
                   (local.get $2)
                  )
                  (local.set $1
                   (if (result i32)
                    (local.get $16)
                    (block (result i32)
                     (local.set $2
                      (local.get $16)
                     )
                     (local.get $0)
                    )
                    (block
                     (local.set $1
                      (local.get $0)
                     )
                     (local.set $2
                      (i32.const 0)
                     )
                     (br $__rjti$1)
                    )
                   )
                  )
                 )
                 (local.set $5
                  (select
                   (local.get $5)
                   (local.tee $5
                    (i32.load offset=20
                     (local.get $0)
                    )
                   )
                   (i32.or
                    (i32.eqz
                     (local.get $5)
                    )
                    (i32.eq
                     (local.get $5)
                     (local.tee $0
                      (i32.load
                       (i32.add
                        (i32.add
                         (local.get $0)
                         (i32.const 16)
                        )
                        (i32.shl
                         (i32.shr_u
                          (local.get $13)
                          (i32.const 31)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $13
                  (i32.shl
                   (local.get $13)
                   (i32.const 1)
                  )
                 )
                 (br_if $while-in15
                  (local.get $0)
                 )
                 (local.get $1)
                )
               )
               (i32.const 0)
              )
             )
             (local.get $5)
            )
           )
           (block
            (drop
             (br_if $do-once
              (local.get $4)
              (i32.eqz
               (local.tee $1
                (i32.and
                 (local.get $6)
                 (i32.or
                  (local.tee $0
                   (i32.shl
                    (i32.const 2)
                    (local.get $18)
                   )
                  )
                  (i32.sub
                   (i32.const 0)
                   (local.get $0)
                  )
                 )
                )
               )
              )
             )
            )
            (local.set $5
             (i32.load
              (i32.add
               (i32.shl
                (i32.add
                 (i32.or
                  (i32.or
                   (i32.or
                    (i32.or
                     (local.tee $5
                      (i32.and
                       (i32.shr_u
                        (local.tee $1
                         (i32.add
                          (i32.and
                           (local.get $1)
                           (i32.sub
                            (i32.const 0)
                            (local.get $1)
                           )
                          )
                          (i32.const -1)
                         )
                        )
                        (i32.const 12)
                       )
                       (i32.const 16)
                      )
                     )
                     (local.tee $5
                      (i32.and
                       (i32.shr_u
                        (local.tee $1
                         (i32.shr_u
                          (local.get $1)
                          (local.get $5)
                         )
                        )
                        (i32.const 5)
                       )
                       (i32.const 8)
                      )
                     )
                    )
                    (local.tee $5
                     (i32.and
                      (i32.shr_u
                       (local.tee $1
                        (i32.shr_u
                         (local.get $1)
                         (local.get $5)
                        )
                       )
                       (i32.const 2)
                      )
                      (i32.const 4)
                     )
                    )
                   )
                   (local.tee $5
                    (i32.and
                     (i32.shr_u
                      (local.tee $1
                       (i32.shr_u
                        (local.get $1)
                        (local.get $5)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                  (local.tee $5
                   (i32.and
                    (i32.shr_u
                     (local.tee $1
                      (i32.shr_u
                       (local.get $1)
                       (local.get $5)
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.const 1)
                   )
                  )
                 )
                 (i32.shr_u
                  (local.get $1)
                  (local.get $5)
                 )
                )
                (i32.const 2)
               )
               (i32.const 2544)
              )
             )
            )
            (local.set $0
             (i32.const 0)
            )
           )
          )
          (local.set $5
           (if (result i32)
            (local.get $5)
            (block
             (local.set $1
              (local.get $0)
             )
             (local.set $0
              (local.get $5)
             )
             (br $__rjti$1)
            )
            (local.get $0)
           )
          )
          (br $__rjto$1)
         )
         (local.set $5
          (local.get $1)
         )
         (local.set $1
          (local.get $2)
         )
         (local.set $2
          (loop $while-in17 (result i32)
           (local.set $13
            (i32.lt_u
             (local.tee $16
              (i32.sub
               (i32.and
                (i32.load offset=4
                 (local.get $0)
                )
                (i32.const -8)
               )
               (local.get $4)
              )
             )
             (local.get $1)
            )
           )
           (local.set $1
            (select
             (local.get $16)
             (local.get $1)
             (local.get $13)
            )
           )
           (local.set $5
            (select
             (local.get $0)
             (local.get $5)
             (local.get $13)
            )
           )
           (if (result i32)
            (block (result i32)
             (if
              (i32.eqz
               (local.tee $2
                (i32.load offset=16
                 (local.get $0)
                )
               )
              )
              (local.set $2
               (i32.load offset=20
                (local.get $0)
               )
              )
             )
             (local.get $2)
            )
            (block
             (local.set $0
              (local.get $2)
             )
             (br $while-in17)
            )
            (local.get $1)
           )
          )
         )
        )
        (if (result i32)
         (local.get $5)
         (if (result i32)
          (i32.lt_u
           (local.get $2)
           (i32.sub
            (i32.load
             (i32.const 2248)
            )
            (local.get $4)
           )
          )
          (block
           (if
            (i32.gt_u
             (local.tee $17
              (i32.load
               (i32.const 2256)
              )
             )
             (local.get $5)
            )
            (call $_abort)
           )
           (if
            (i32.le_u
             (local.tee $8
              (i32.add
               (local.get $4)
               (local.get $5)
              )
             )
             (local.get $5)
            )
            (call $_abort)
           )
           (local.set $15
            (i32.load offset=24
             (local.get $5)
            )
           )
           (if
            (i32.eq
             (local.get $5)
             (local.tee $0
              (i32.load offset=12
               (local.get $5)
              )
             )
            )
            (block $do-once18
             (if
              (i32.eqz
               (local.tee $0
                (i32.load
                 (local.tee $1
                  (i32.add
                   (local.get $5)
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (br_if $do-once18
               (i32.eqz
                (local.tee $0
                 (i32.load
                  (local.tee $1
                   (i32.add
                    (local.get $5)
                    (i32.const 16)
                   )
                  )
                 )
                )
               )
              )
             )
             (loop $while-in21
              (block $while-out20
               (local.set $0
                (if (result i32)
                 (local.tee $11
                  (i32.load
                   (local.tee $10
                    (i32.add
                     (local.get $0)
                     (i32.const 20)
                    )
                   )
                  )
                 )
                 (block (result i32)
                  (local.set $1
                   (local.get $10)
                  )
                  (local.get $11)
                 )
                 (block (result i32)
                  (br_if $while-out20
                   (i32.eqz
                    (local.tee $11
                     (i32.load
                      (local.tee $10
                       (i32.add
                        (local.get $0)
                        (i32.const 16)
                       )
                      )
                     )
                    )
                   )
                  )
                  (local.set $1
                   (local.get $10)
                  )
                  (local.get $11)
                 )
                )
               )
               (br $while-in21)
              )
             )
             (if
              (i32.gt_u
               (local.get $17)
               (local.get $1)
              )
              (call $_abort)
              (block
               (i32.store
                (local.get $1)
                (i32.const 0)
               )
               (local.set $7
                (local.get $0)
               )
              )
             )
            )
            (block
             (if
              (i32.gt_u
               (local.get $17)
               (local.tee $1
                (i32.load offset=8
                 (local.get $5)
                )
               )
              )
              (call $_abort)
             )
             (if
              (i32.ne
               (i32.load
                (local.tee $10
                 (i32.add
                  (local.get $1)
                  (i32.const 12)
                 )
                )
               )
               (local.get $5)
              )
              (call $_abort)
             )
             (if
              (i32.eq
               (local.get $5)
               (i32.load
                (local.tee $11
                 (i32.add
                  (local.get $0)
                  (i32.const 8)
                 )
                )
               )
              )
              (block
               (i32.store
                (local.get $10)
                (local.get $0)
               )
               (i32.store
                (local.get $11)
                (local.get $1)
               )
               (local.set $7
                (local.get $0)
               )
              )
              (call $_abort)
             )
            )
           )
           (if
            (local.get $15)
            (block $label$break$L176
             (if
              (i32.eq
               (local.get $5)
               (i32.load
                (local.tee $1
                 (i32.add
                  (i32.shl
                   (local.tee $0
                    (i32.load offset=28
                     (local.get $5)
                    )
                   )
                   (i32.const 2)
                  )
                  (i32.const 2544)
                 )
                )
               )
              )
              (block
               (i32.store
                (local.get $1)
                (local.get $7)
               )
               (if
                (i32.eqz
                 (local.get $7)
                )
                (block
                 (i32.store
                  (i32.const 2244)
                  (local.tee $3
                   (i32.and
                    (local.get $6)
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $0)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                 )
                 (br $label$break$L176)
                )
               )
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 2256)
                )
                (local.get $15)
               )
               (call $_abort)
               (block
                (i32.store
                 (select
                  (local.tee $0
                   (i32.add
                    (local.get $15)
                    (i32.const 16)
                   )
                  )
                  (i32.add
                   (local.get $15)
                   (i32.const 20)
                  )
                  (i32.eq
                   (local.get $5)
                   (i32.load
                    (local.get $0)
                   )
                  )
                 )
                 (local.get $7)
                )
                (if
                 (i32.eqz
                  (local.get $7)
                 )
                 (block
                  (local.set $3
                   (local.get $6)
                  )
                  (br $label$break$L176)
                 )
                )
               )
              )
             )
             (if
              (i32.gt_u
               (local.tee $1
                (i32.load
                 (i32.const 2256)
                )
               )
               (local.get $7)
              )
              (call $_abort)
             )
             (i32.store offset=24
              (local.get $7)
              (local.get $15)
             )
             (if
              (local.tee $0
               (i32.load offset=16
                (local.get $5)
               )
              )
              (if
               (i32.gt_u
                (local.get $1)
                (local.get $0)
               )
               (call $_abort)
               (block
                (i32.store offset=16
                 (local.get $7)
                 (local.get $0)
                )
                (i32.store offset=24
                 (local.get $0)
                 (local.get $7)
                )
               )
              )
             )
             (if
              (local.tee $0
               (i32.load offset=20
                (local.get $5)
               )
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 2256)
                )
                (local.get $0)
               )
               (call $_abort)
               (block
                (i32.store offset=20
                 (local.get $7)
                 (local.get $0)
                )
                (i32.store offset=24
                 (local.get $0)
                 (local.get $7)
                )
                (local.set $3
                 (local.get $6)
                )
               )
              )
              (local.set $3
               (local.get $6)
              )
             )
            )
            (local.set $3
             (local.get $6)
            )
           )
           (if
            (i32.lt_u
             (local.get $2)
             (i32.const 16)
            )
            (block
             (i32.store offset=4
              (local.get $5)
              (i32.or
               (local.tee $0
                (i32.add
                 (local.get $2)
                 (local.get $4)
                )
               )
               (i32.const 3)
              )
             )
             (i32.store
              (local.tee $0
               (i32.add
                (i32.add
                 (local.get $0)
                 (local.get $5)
                )
                (i32.const 4)
               )
              )
              (i32.or
               (i32.load
                (local.get $0)
               )
               (i32.const 1)
              )
             )
            )
            (block $label$break$L200
             (i32.store offset=4
              (local.get $5)
              (i32.or
               (local.get $4)
               (i32.const 3)
              )
             )
             (i32.store offset=4
              (local.get $8)
              (i32.or
               (local.get $2)
               (i32.const 1)
              )
             )
             (i32.store
              (i32.add
               (local.get $2)
               (local.get $8)
              )
              (local.get $2)
             )
             (local.set $1
              (i32.shr_u
               (local.get $2)
               (i32.const 3)
              )
             )
             (if
              (i32.lt_u
               (local.get $2)
               (i32.const 256)
              )
              (block
               (local.set $0
                (i32.add
                 (i32.shl
                  (local.get $1)
                  (i32.const 3)
                 )
                 (i32.const 2280)
                )
               )
               (if
                (i32.and
                 (local.tee $3
                  (i32.load
                   (i32.const 2240)
                  )
                 )
                 (local.tee $1
                  (i32.shl
                   (i32.const 1)
                   (local.get $1)
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (i32.load
                   (i32.const 2256)
                  )
                  (local.tee $1
                   (i32.load
                    (local.tee $3
                     (i32.add
                      (local.get $0)
                      (i32.const 8)
                     )
                    )
                   )
                  )
                 )
                 (call $_abort)
                 (block
                  (local.set $12
                   (local.get $1)
                  )
                  (local.set $19
                   (local.get $3)
                  )
                 )
                )
                (block
                 (i32.store
                  (i32.const 2240)
                  (i32.or
                   (local.get $1)
                   (local.get $3)
                  )
                 )
                 (local.set $12
                  (local.get $0)
                 )
                 (local.set $19
                  (i32.add
                   (local.get $0)
                   (i32.const 8)
                  )
                 )
                )
               )
               (i32.store
                (local.get $19)
                (local.get $8)
               )
               (i32.store offset=12
                (local.get $12)
                (local.get $8)
               )
               (i32.store offset=8
                (local.get $8)
                (local.get $12)
               )
               (i32.store offset=12
                (local.get $8)
                (local.get $0)
               )
               (br $label$break$L200)
              )
             )
             (local.set $0
              (i32.add
               (i32.shl
                (local.tee $1
                 (if (result i32)
                  (local.tee $0
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 8)
                   )
                  )
                  (if (result i32)
                   (i32.gt_u
                    (local.get $2)
                    (i32.const 16777215)
                   )
                   (i32.const 31)
                   (i32.or
                    (i32.shl
                     (local.tee $0
                      (i32.add
                       (i32.sub
                        (i32.const 14)
                        (i32.or
                         (i32.or
                          (local.tee $0
                           (i32.and
                            (i32.shr_u
                             (i32.add
                              (local.tee $4
                               (i32.shl
                                (local.get $0)
                                (local.tee $1
                                 (i32.and
                                  (i32.shr_u
                                   (i32.add
                                    (local.get $0)
                                    (i32.const 1048320)
                                   )
                                   (i32.const 16)
                                  )
                                  (i32.const 8)
                                 )
                                )
                               )
                              )
                              (i32.const 520192)
                             )
                             (i32.const 16)
                            )
                            (i32.const 4)
                           )
                          )
                          (local.get $1)
                         )
                         (local.tee $1
                          (i32.and
                           (i32.shr_u
                            (i32.add
                             (local.tee $0
                              (i32.shl
                               (local.get $4)
                               (local.get $0)
                              )
                             )
                             (i32.const 245760)
                            )
                            (i32.const 16)
                           )
                           (i32.const 2)
                          )
                         )
                        )
                       )
                       (i32.shr_u
                        (i32.shl
                         (local.get $0)
                         (local.get $1)
                        )
                        (i32.const 15)
                       )
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.and
                     (i32.shr_u
                      (local.get $2)
                      (i32.add
                       (local.get $0)
                       (i32.const 7)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                  (i32.const 0)
                 )
                )
                (i32.const 2)
               )
               (i32.const 2544)
              )
             )
             (i32.store offset=28
              (local.get $8)
              (local.get $1)
             )
             (i32.store offset=4
              (local.tee $4
               (i32.add
                (local.get $8)
                (i32.const 16)
               )
              )
              (i32.const 0)
             )
             (i32.store
              (local.get $4)
              (i32.const 0)
             )
             (if
              (i32.eqz
               (i32.and
                (local.tee $4
                 (i32.shl
                  (i32.const 1)
                  (local.get $1)
                 )
                )
                (local.get $3)
               )
              )
              (block
               (i32.store
                (i32.const 2244)
                (i32.or
                 (local.get $3)
                 (local.get $4)
                )
               )
               (i32.store
                (local.get $0)
                (local.get $8)
               )
               (i32.store offset=24
                (local.get $8)
                (local.get $0)
               )
               (i32.store offset=12
                (local.get $8)
                (local.get $8)
               )
               (i32.store offset=8
                (local.get $8)
                (local.get $8)
               )
               (br $label$break$L200)
              )
             )
             (if
              (i32.eq
               (local.get $2)
               (i32.and
                (i32.load offset=4
                 (local.tee $0
                  (i32.load
                   (local.get $0)
                  )
                 )
                )
                (i32.const -8)
               )
              )
              (local.set $9
               (local.get $0)
              )
              (block $label$break$L218
               (local.set $1
                (i32.shl
                 (local.get $2)
                 (select
                  (i32.const 0)
                  (i32.sub
                   (i32.const 25)
                   (i32.shr_u
                    (local.get $1)
                    (i32.const 1)
                   )
                  )
                  (i32.eq
                   (local.get $1)
                   (i32.const 31)
                  )
                 )
                )
               )
               (loop $while-in30
                (if
                 (local.tee $3
                  (i32.load
                   (local.tee $4
                    (i32.add
                     (i32.add
                      (local.get $0)
                      (i32.const 16)
                     )
                     (i32.shl
                      (i32.shr_u
                       (local.get $1)
                       (i32.const 31)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                  )
                 )
                 (block
                  (local.set $1
                   (i32.shl
                    (local.get $1)
                    (i32.const 1)
                   )
                  )
                  (if
                   (i32.eq
                    (local.get $2)
                    (i32.and
                     (i32.load offset=4
                      (local.get $3)
                     )
                     (i32.const -8)
                    )
                   )
                   (block
                    (local.set $9
                     (local.get $3)
                    )
                    (br $label$break$L218)
                   )
                   (block
                    (local.set $0
                     (local.get $3)
                    )
                    (br $while-in30)
                   )
                  )
                 )
                )
               )
               (if
                (i32.gt_u
                 (i32.load
                  (i32.const 2256)
                 )
                 (local.get $4)
                )
                (call $_abort)
                (block
                 (i32.store
                  (local.get $4)
                  (local.get $8)
                 )
                 (i32.store offset=24
                  (local.get $8)
                  (local.get $0)
                 )
                 (i32.store offset=12
                  (local.get $8)
                  (local.get $8)
                 )
                 (i32.store offset=8
                  (local.get $8)
                  (local.get $8)
                 )
                 (br $label$break$L200)
                )
               )
              )
             )
             (if
              (i32.and
               (i32.le_u
                (local.tee $0
                 (i32.load
                  (i32.const 2256)
                 )
                )
                (local.get $9)
               )
               (i32.le_u
                (local.get $0)
                (local.tee $0
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $9)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
              )
              (block
               (i32.store offset=12
                (local.get $0)
                (local.get $8)
               )
               (i32.store
                (local.get $3)
                (local.get $8)
               )
               (i32.store offset=8
                (local.get $8)
                (local.get $0)
               )
               (i32.store offset=12
                (local.get $8)
                (local.get $9)
               )
               (i32.store offset=24
                (local.get $8)
                (i32.const 0)
               )
              )
              (call $_abort)
             )
            )
           )
           (global.set $STACKTOP
            (local.get $14)
           )
           (return
            (i32.add
             (local.get $5)
             (i32.const 8)
            )
           )
          )
          (local.get $4)
         )
         (local.get $4)
        )
       )
       (local.get $4)
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (local.tee $1
     (i32.load
      (i32.const 2248)
     )
    )
    (local.get $3)
   )
   (block
    (local.set $0
     (i32.load
      (i32.const 2260)
     )
    )
    (if
     (i32.gt_u
      (local.tee $2
       (i32.sub
        (local.get $1)
        (local.get $3)
       )
      )
      (i32.const 15)
     )
     (block
      (i32.store
       (i32.const 2260)
       (local.tee $4
        (i32.add
         (local.get $0)
         (local.get $3)
        )
       )
      )
      (i32.store
       (i32.const 2248)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $4)
       (i32.or
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (local.get $1)
       )
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.or
        (local.get $3)
        (i32.const 3)
       )
      )
     )
     (block
      (i32.store
       (i32.const 2248)
       (i32.const 0)
      )
      (i32.store
       (i32.const 2260)
       (i32.const 0)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.or
        (local.get $1)
        (i32.const 3)
       )
      )
      (i32.store
       (local.tee $3
        (i32.add
         (i32.add
          (local.get $0)
          (local.get $1)
         )
         (i32.const 4)
        )
       )
       (i32.or
        (i32.load
         (local.get $3)
        )
        (i32.const 1)
       )
      )
     )
    )
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (local.tee $1
     (i32.load
      (i32.const 2252)
     )
    )
    (local.get $3)
   )
   (block
    (i32.store
     (i32.const 2252)
     (local.tee $1
      (i32.sub
       (local.get $1)
       (local.get $3)
      )
     )
    )
    (i32.store
     (i32.const 2264)
     (local.tee $2
      (i32.add
       (local.get $3)
       (local.tee $0
        (i32.load
         (i32.const 2264)
        )
       )
      )
     )
    )
    (i32.store offset=4
     (local.get $2)
     (i32.or
      (local.get $1)
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (local.get $0)
     (i32.or
      (local.get $3)
      (i32.const 3)
     )
    )
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
    )
   )
  )
  (local.set $0
   (local.get $14)
  )
  (if
   (i32.le_u
    (local.tee $4
     (i32.and
      (local.tee $5
       (i32.add
        (local.tee $6
         (i32.add
          (local.get $3)
          (i32.const 47)
         )
        )
        (local.tee $0
         (if (result i32)
          (i32.load
           (i32.const 2712)
          )
          (i32.load
           (i32.const 2720)
          )
          (block (result i32)
           (i32.store
            (i32.const 2720)
            (i32.const 4096)
           )
           (i32.store
            (i32.const 2716)
            (i32.const 4096)
           )
           (i32.store
            (i32.const 2724)
            (i32.const -1)
           )
           (i32.store
            (i32.const 2728)
            (i32.const -1)
           )
           (i32.store
            (i32.const 2732)
            (i32.const 0)
           )
           (i32.store
            (i32.const 2684)
            (i32.const 0)
           )
           (i32.store
            (i32.const 2712)
            (i32.xor
             (i32.and
              (local.get $0)
              (i32.const -16)
             )
             (i32.const 1431655768)
            )
           )
           (i32.const 4096)
          )
         )
        )
       )
      )
      (local.tee $7
       (i32.sub
        (i32.const 0)
        (local.get $0)
       )
      )
     )
    )
    (local.get $3)
   )
   (block
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.const 0)
    )
   )
  )
  (if
   (local.tee $0
    (i32.load
     (i32.const 2680)
    )
   )
   (if
    (i32.or
     (i32.le_u
      (local.tee $9
       (i32.add
        (local.get $4)
        (local.tee $2
         (i32.load
          (i32.const 2672)
         )
        )
       )
      )
      (local.get $2)
     )
     (i32.gt_u
      (local.get $9)
      (local.get $0)
     )
    )
    (block
     (global.set $STACKTOP
      (local.get $14)
     )
     (return
      (i32.const 0)
     )
    )
   )
  )
  (local.set $9
   (i32.add
    (local.get $3)
    (i32.const 48)
   )
  )
  (block $__rjto$7
   (block $__rjti$7
    (if
     (i32.and
      (i32.load
       (i32.const 2684)
      )
      (i32.const 4)
     )
     (local.set $1
      (i32.const 0)
     )
     (block
      (block $do-once37
       (block $__rjti$3
        (block $__rjti$2
         (br_if $__rjti$2
          (i32.eqz
           (local.tee $0
            (i32.load
             (i32.const 2264)
            )
           )
          )
         )
         (local.set $2
          (i32.const 2688)
         )
         (loop $while-in34
          (block $while-out33
           (if
            (i32.le_u
             (local.tee $12
              (i32.load
               (local.get $2)
              )
             )
             (local.get $0)
            )
            (br_if $while-out33
             (i32.gt_u
              (i32.add
               (local.get $12)
               (i32.load offset=4
                (local.get $2)
               )
              )
              (local.get $0)
             )
            )
           )
           (br_if $while-in34
            (local.tee $2
             (i32.load offset=8
              (local.get $2)
             )
            )
           )
           (br $__rjti$2)
          )
         )
         (if
          (i32.lt_u
           (local.tee $1
            (i32.and
             (local.get $7)
             (i32.sub
              (local.get $5)
              (local.get $1)
             )
            )
           )
           (i32.const 2147483647)
          )
          (block
           (local.set $5
            (i32.add
             (local.get $2)
             (i32.const 4)
            )
           )
           (br_if $__rjti$3
            (i32.ne
             (local.tee $0
              (call $_sbrk
               (local.get $1)
              )
             )
             (i32.add
              (i32.load
               (local.get $2)
              )
              (i32.load
               (local.get $5)
              )
             )
            )
           )
           (br_if $__rjti$7
            (i32.ne
             (local.get $0)
             (i32.const -1)
            )
           )
          )
          (local.set $1
           (i32.const 0)
          )
         )
         (br $do-once37)
        )
        (local.set $1
         (if (result i32)
          (i32.eq
           (local.tee $0
            (call $_sbrk
             (i32.const 0)
            )
           )
           (i32.const -1)
          )
          (i32.const 0)
          (block (result i32)
           (local.set $2
            (i32.add
             (local.tee $5
              (i32.load
               (i32.const 2672)
              )
             )
             (local.tee $1
              (i32.add
               (local.get $4)
               (select
                (i32.sub
                 (i32.and
                  (i32.add
                   (local.get $0)
                   (local.tee $2
                    (i32.add
                     (local.tee $1
                      (i32.load
                       (i32.const 2716)
                      )
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (i32.sub
                   (i32.const 0)
                   (local.get $1)
                  )
                 )
                 (local.get $0)
                )
                (i32.const 0)
                (i32.and
                 (local.get $0)
                 (local.get $2)
                )
               )
              )
             )
            )
           )
           (if (result i32)
            (i32.and
             (i32.lt_u
              (local.get $1)
              (i32.const 2147483647)
             )
             (i32.gt_u
              (local.get $1)
              (local.get $3)
             )
            )
            (block
             (if
              (local.tee $7
               (i32.load
                (i32.const 2680)
               )
              )
              (if
               (i32.or
                (i32.le_u
                 (local.get $2)
                 (local.get $5)
                )
                (i32.gt_u
                 (local.get $2)
                 (local.get $7)
                )
               )
               (block
                (local.set $1
                 (i32.const 0)
                )
                (br $do-once37)
               )
              )
             )
             (br_if $__rjti$7
              (i32.eq
               (local.get $0)
               (local.tee $2
                (call $_sbrk
                 (local.get $1)
                )
               )
              )
             )
             (local.set $0
              (local.get $2)
             )
             (br $__rjti$3)
            )
            (i32.const 0)
           )
          )
         )
        )
        (br $do-once37)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.and
           (i32.ne
            (local.get $0)
            (i32.const -1)
           )
           (i32.lt_u
            (local.get $1)
            (i32.const 2147483647)
           )
          )
          (i32.gt_u
           (local.get $9)
           (local.get $1)
          )
         )
        )
        (if
         (i32.eq
          (local.get $0)
          (i32.const -1)
         )
         (block
          (local.set $1
           (i32.const 0)
          )
          (br $do-once37)
         )
         (br $__rjti$7)
        )
       )
       (br_if $__rjti$7
        (i32.ge_u
         (local.tee $2
          (i32.and
           (i32.add
            (local.tee $2
             (i32.load
              (i32.const 2720)
             )
            )
            (i32.sub
             (local.get $6)
             (local.get $1)
            )
           )
           (i32.sub
            (i32.const 0)
            (local.get $2)
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (local.set $6
        (i32.sub
         (i32.const 0)
         (local.get $1)
        )
       )
       (local.set $1
        (if (result i32)
         (i32.eq
          (call $_sbrk
           (local.get $2)
          )
          (i32.const -1)
         )
         (block (result i32)
          (drop
           (call $_sbrk
            (local.get $6)
           )
          )
          (i32.const 0)
         )
         (block
          (local.set $1
           (i32.add
            (local.get $1)
            (local.get $2)
           )
          )
          (br $__rjti$7)
         )
        )
       )
      )
      (i32.store
       (i32.const 2684)
       (i32.or
        (i32.load
         (i32.const 2684)
        )
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.lt_u
      (local.get $4)
      (i32.const 2147483647)
     )
     (block
      (local.set $0
       (call $_sbrk
        (local.get $4)
       )
      )
      (local.set $4
       (i32.gt_u
        (local.tee $6
         (i32.sub
          (local.tee $2
           (call $_sbrk
            (i32.const 0)
           )
          )
          (local.get $0)
         )
        )
        (i32.add
         (local.get $3)
         (i32.const 40)
        )
       )
      )
      (local.set $1
       (select
        (local.get $6)
        (local.get $1)
        (local.get $4)
       )
      )
      (br_if $__rjti$7
       (i32.eqz
        (i32.or
         (i32.or
          (i32.xor
           (local.get $4)
           (i32.const 1)
          )
          (i32.eq
           (local.get $0)
           (i32.const -1)
          )
         )
         (i32.xor
          (i32.and
           (i32.and
            (i32.ne
             (local.get $0)
             (i32.const -1)
            )
            (i32.ne
             (local.get $2)
             (i32.const -1)
            )
           )
           (i32.lt_u
            (local.get $0)
            (local.get $2)
           )
          )
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (br $__rjto$7)
   )
   (i32.store
    (i32.const 2672)
    (local.tee $2
     (i32.add
      (local.get $1)
      (i32.load
       (i32.const 2672)
      )
     )
    )
   )
   (if
    (i32.gt_u
     (local.get $2)
     (i32.load
      (i32.const 2676)
     )
    )
    (i32.store
     (i32.const 2676)
     (local.get $2)
    )
   )
   (if
    (local.tee $6
     (i32.load
      (i32.const 2264)
     )
    )
    (block $label$break$L294
     (local.set $2
      (i32.const 2688)
     )
     (block $__rjto$4
      (block $__rjti$4
       (loop $while-in41
        (br_if $__rjti$4
         (i32.eq
          (local.get $0)
          (i32.add
           (local.tee $4
            (i32.load
             (local.get $2)
            )
           )
           (local.tee $5
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
         )
        )
        (br_if $while-in41
         (local.tee $2
          (i32.load offset=8
           (local.get $2)
          )
         )
        )
       )
       (br $__rjto$4)
      )
      (local.set $7
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load offset=12
          (local.get $2)
         )
         (i32.const 8)
        )
       )
       (if
        (i32.and
         (i32.le_u
          (local.get $4)
          (local.get $6)
         )
         (i32.gt_u
          (local.get $0)
          (local.get $6)
         )
        )
        (block
         (i32.store
          (local.get $7)
          (i32.add
           (local.get $1)
           (local.get $5)
          )
         )
         (local.set $0
          (i32.add
           (local.get $6)
           (local.tee $2
            (select
             (i32.and
              (i32.sub
               (i32.const 0)
               (local.tee $0
                (i32.add
                 (local.get $6)
                 (i32.const 8)
                )
               )
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (local.get $0)
              (i32.const 7)
             )
            )
           )
          )
         )
         (local.set $1
          (i32.sub
           (local.tee $4
            (i32.add
             (local.get $1)
             (i32.load
              (i32.const 2252)
             )
            )
           )
           (local.get $2)
          )
         )
         (i32.store
          (i32.const 2264)
          (local.get $0)
         )
         (i32.store
          (i32.const 2252)
          (local.get $1)
         )
         (i32.store offset=4
          (local.get $0)
          (i32.or
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.store offset=4
          (i32.add
           (local.get $4)
           (local.get $6)
          )
          (i32.const 40)
         )
         (i32.store
          (i32.const 2268)
          (i32.load
           (i32.const 2728)
          )
         )
         (br $label$break$L294)
        )
       )
      )
     )
     (if
      (i32.lt_u
       (local.get $0)
       (local.tee $2
        (i32.load
         (i32.const 2256)
        )
       )
      )
      (block
       (i32.store
        (i32.const 2256)
        (local.get $0)
       )
       (local.set $2
        (local.get $0)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $0)
       (local.get $1)
      )
     )
     (local.set $4
      (i32.const 2688)
     )
     (block $__rjto$5
      (block $__rjti$5
       (loop $while-in43
        (br_if $__rjti$5
         (i32.eq
          (local.get $5)
          (i32.load
           (local.get $4)
          )
         )
        )
        (br_if $while-in43
         (local.tee $4
          (i32.load offset=8
           (local.get $4)
          )
         )
        )
       )
       (br $__rjto$5)
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load offset=12
          (local.get $4)
         )
         (i32.const 8)
        )
       )
       (block
        (i32.store
         (local.get $4)
         (local.get $0)
        )
        (i32.store
         (local.tee $4
          (i32.add
           (local.get $4)
           (i32.const 4)
          )
         )
         (i32.add
          (local.get $1)
          (i32.load
           (local.get $4)
          )
         )
        )
        (local.set $7
         (i32.add
          (local.get $3)
          (local.tee $8
           (i32.add
            (local.get $0)
            (select
             (i32.and
              (i32.sub
               (i32.const 0)
               (local.tee $0
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (local.get $0)
              (i32.const 7)
             )
            )
           )
          )
         )
        )
        (local.set $4
         (i32.sub
          (i32.sub
           (local.tee $1
            (i32.add
             (local.get $5)
             (select
              (i32.and
               (i32.sub
                (i32.const 0)
                (local.tee $0
                 (i32.add
                  (local.get $5)
                  (i32.const 8)
                 )
                )
               )
               (i32.const 7)
              )
              (i32.const 0)
              (i32.and
               (local.get $0)
               (i32.const 7)
              )
             )
            )
           )
           (local.get $8)
          )
          (local.get $3)
         )
        )
        (i32.store offset=4
         (local.get $8)
         (i32.or
          (local.get $3)
          (i32.const 3)
         )
        )
        (if
         (i32.eq
          (local.get $1)
          (local.get $6)
         )
         (block
          (i32.store
           (i32.const 2252)
           (local.tee $0
            (i32.add
             (local.get $4)
             (i32.load
              (i32.const 2252)
             )
            )
           )
          )
          (i32.store
           (i32.const 2264)
           (local.get $7)
          )
          (i32.store offset=4
           (local.get $7)
           (i32.or
            (local.get $0)
            (i32.const 1)
           )
          )
         )
         (block $label$break$L317
          (if
           (i32.eq
            (local.get $1)
            (i32.load
             (i32.const 2260)
            )
           )
           (block
            (i32.store
             (i32.const 2248)
             (local.tee $0
              (i32.add
               (local.get $4)
               (i32.load
                (i32.const 2248)
               )
              )
             )
            )
            (i32.store
             (i32.const 2260)
             (local.get $7)
            )
            (i32.store offset=4
             (local.get $7)
             (i32.or
              (local.get $0)
              (i32.const 1)
             )
            )
            (i32.store
             (i32.add
              (local.get $0)
              (local.get $7)
             )
             (local.get $0)
            )
            (br $label$break$L317)
           )
          )
          (local.set $2
           (if (result i32)
            (i32.eq
             (i32.and
              (local.tee $0
               (i32.load offset=4
                (local.get $1)
               )
              )
              (i32.const 3)
             )
             (i32.const 1)
            )
            (block (result i32)
             (local.set $12
              (i32.and
               (local.get $0)
               (i32.const -8)
              )
             )
             (local.set $5
              (i32.shr_u
               (local.get $0)
               (i32.const 3)
              )
             )
             (block $label$break$L325
              (if
               (i32.lt_u
                (local.get $0)
                (i32.const 256)
               )
               (block
                (local.set $3
                 (i32.load offset=12
                  (local.get $1)
                 )
                )
                (if
                 (i32.ne
                  (local.tee $6
                   (i32.load offset=8
                    (local.get $1)
                   )
                  )
                  (local.tee $0
                   (i32.add
                    (i32.shl
                     (local.get $5)
                     (i32.const 3)
                    )
                    (i32.const 2280)
                   )
                  )
                 )
                 (block $do-once46
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $6)
                   )
                   (call $_abort)
                  )
                  (br_if $do-once46
                   (i32.eq
                    (local.get $1)
                    (i32.load offset=12
                     (local.get $6)
                    )
                   )
                  )
                  (call $_abort)
                 )
                )
                (if
                 (i32.eq
                  (local.get $3)
                  (local.get $6)
                 )
                 (block
                  (i32.store
                   (i32.const 2240)
                   (i32.and
                    (i32.load
                     (i32.const 2240)
                    )
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $5)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (br $label$break$L325)
                 )
                )
                (if
                 (i32.eq
                  (local.get $0)
                  (local.get $3)
                 )
                 (local.set $20
                  (i32.add
                   (local.get $3)
                   (i32.const 8)
                  )
                 )
                 (block $do-once48
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $3)
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.eq
                    (local.get $1)
                    (i32.load
                     (local.tee $0
                      (i32.add
                       (local.get $3)
                       (i32.const 8)
                      )
                     )
                    )
                   )
                   (block
                    (local.set $20
                     (local.get $0)
                    )
                    (br $do-once48)
                   )
                  )
                  (call $_abort)
                 )
                )
                (i32.store offset=12
                 (local.get $6)
                 (local.get $3)
                )
                (i32.store
                 (local.get $20)
                 (local.get $6)
                )
               )
               (block
                (local.set $9
                 (i32.load offset=24
                  (local.get $1)
                 )
                )
                (if
                 (i32.eq
                  (local.get $1)
                  (local.tee $0
                   (i32.load offset=12
                    (local.get $1)
                   )
                  )
                 )
                 (block $do-once50
                  (if
                   (local.tee $0
                    (i32.load
                     (local.tee $6
                      (i32.add
                       (local.tee $3
                        (i32.add
                         (local.get $1)
                         (i32.const 16)
                        )
                       )
                       (i32.const 4)
                      )
                     )
                    )
                   )
                   (local.set $3
                    (local.get $6)
                   )
                   (br_if $do-once50
                    (i32.eqz
                     (local.tee $0
                      (i32.load
                       (local.get $3)
                      )
                     )
                    )
                   )
                  )
                  (loop $while-in53
                   (block $while-out52
                    (local.set $0
                     (if (result i32)
                      (local.tee $5
                       (i32.load
                        (local.tee $6
                         (i32.add
                          (local.get $0)
                          (i32.const 20)
                         )
                        )
                       )
                      )
                      (block (result i32)
                       (local.set $3
                        (local.get $6)
                       )
                       (local.get $5)
                      )
                      (block (result i32)
                       (br_if $while-out52
                        (i32.eqz
                         (local.tee $5
                          (i32.load
                           (local.tee $6
                            (i32.add
                             (local.get $0)
                             (i32.const 16)
                            )
                           )
                          )
                         )
                        )
                       )
                       (local.set $3
                        (local.get $6)
                       )
                       (local.get $5)
                      )
                     )
                    )
                    (br $while-in53)
                   )
                  )
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $3)
                   )
                   (call $_abort)
                   (block
                    (i32.store
                     (local.get $3)
                     (i32.const 0)
                    )
                    (local.set $10
                     (local.get $0)
                    )
                   )
                  )
                 )
                 (block
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.tee $3
                     (i32.load offset=8
                      (local.get $1)
                     )
                    )
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.ne
                    (i32.load
                     (local.tee $2
                      (i32.add
                       (local.get $3)
                       (i32.const 12)
                      )
                     )
                    )
                    (local.get $1)
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.eq
                    (local.get $1)
                    (i32.load
                     (local.tee $6
                      (i32.add
                       (local.get $0)
                       (i32.const 8)
                      )
                     )
                    )
                   )
                   (block
                    (i32.store
                     (local.get $2)
                     (local.get $0)
                    )
                    (i32.store
                     (local.get $6)
                     (local.get $3)
                    )
                    (local.set $10
                     (local.get $0)
                    )
                   )
                   (call $_abort)
                  )
                 )
                )
                (br_if $label$break$L325
                 (i32.eqz
                  (local.get $9)
                 )
                )
                (if
                 (i32.eq
                  (local.get $1)
                  (i32.load
                   (local.tee $3
                    (i32.add
                     (i32.shl
                      (local.tee $0
                       (i32.load offset=28
                        (local.get $1)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.const 2544)
                    )
                   )
                  )
                 )
                 (block $do-once54
                  (i32.store
                   (local.get $3)
                   (local.get $10)
                  )
                  (br_if $do-once54
                   (local.get $10)
                  )
                  (i32.store
                   (i32.const 2244)
                   (i32.and
                    (i32.load
                     (i32.const 2244)
                    )
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $0)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (br $label$break$L325)
                 )
                 (if
                  (i32.gt_u
                   (i32.load
                    (i32.const 2256)
                   )
                   (local.get $9)
                  )
                  (call $_abort)
                  (block
                   (i32.store
                    (select
                     (local.tee $0
                      (i32.add
                       (local.get $9)
                       (i32.const 16)
                      )
                     )
                     (i32.add
                      (local.get $9)
                      (i32.const 20)
                     )
                     (i32.eq
                      (local.get $1)
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (local.get $10)
                   )
                   (br_if $label$break$L325
                    (i32.eqz
                     (local.get $10)
                    )
                   )
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (local.tee $3
                   (i32.load
                    (i32.const 2256)
                   )
                  )
                  (local.get $10)
                 )
                 (call $_abort)
                )
                (i32.store offset=24
                 (local.get $10)
                 (local.get $9)
                )
                (if
                 (local.tee $0
                  (i32.load
                   (local.tee $2
                    (i32.add
                     (local.get $1)
                     (i32.const 16)
                    )
                   )
                  )
                 )
                 (if
                  (i32.gt_u
                   (local.get $3)
                   (local.get $0)
                  )
                  (call $_abort)
                  (block
                   (i32.store offset=16
                    (local.get $10)
                    (local.get $0)
                   )
                   (i32.store offset=24
                    (local.get $0)
                    (local.get $10)
                   )
                  )
                 )
                )
                (br_if $label$break$L325
                 (i32.eqz
                  (local.tee $0
                   (i32.load offset=4
                    (local.get $2)
                   )
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (i32.load
                   (i32.const 2256)
                  )
                  (local.get $0)
                 )
                 (call $_abort)
                 (block
                  (i32.store offset=20
                   (local.get $10)
                   (local.get $0)
                  )
                  (i32.store offset=24
                   (local.get $0)
                   (local.get $10)
                  )
                 )
                )
               )
              )
             )
             (local.set $1
              (i32.add
               (local.get $1)
               (local.get $12)
              )
             )
             (i32.add
              (local.get $4)
              (local.get $12)
             )
            )
            (local.get $4)
           )
          )
          (i32.store
           (local.tee $0
            (i32.add
             (local.get $1)
             (i32.const 4)
            )
           )
           (i32.and
            (i32.load
             (local.get $0)
            )
            (i32.const -2)
           )
          )
          (i32.store offset=4
           (local.get $7)
           (i32.or
            (local.get $2)
            (i32.const 1)
           )
          )
          (i32.store
           (i32.add
            (local.get $2)
            (local.get $7)
           )
           (local.get $2)
          )
          (local.set $3
           (i32.shr_u
            (local.get $2)
            (i32.const 3)
           )
          )
          (if
           (i32.lt_u
            (local.get $2)
            (i32.const 256)
           )
           (block
            (local.set $0
             (i32.add
              (i32.shl
               (local.get $3)
               (i32.const 3)
              )
              (i32.const 2280)
             )
            )
            (if
             (i32.and
              (local.tee $1
               (i32.load
                (i32.const 2240)
               )
              )
              (local.tee $3
               (i32.shl
                (i32.const 1)
                (local.get $3)
               )
              )
             )
             (block $do-once58
              (if
               (i32.le_u
                (i32.load
                 (i32.const 2256)
                )
                (local.tee $1
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $0)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
               (block
                (local.set $15
                 (local.get $1)
                )
                (local.set $21
                 (local.get $3)
                )
                (br $do-once58)
               )
              )
              (call $_abort)
             )
             (block
              (i32.store
               (i32.const 2240)
               (i32.or
                (local.get $1)
                (local.get $3)
               )
              )
              (local.set $15
               (local.get $0)
              )
              (local.set $21
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
            (i32.store
             (local.get $21)
             (local.get $7)
            )
            (i32.store offset=12
             (local.get $15)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $15)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $0)
            )
            (br $label$break$L317)
           )
          )
          (local.set $0
           (i32.add
            (i32.shl
             (local.tee $3
              (if (result i32)
               (local.tee $0
                (i32.shr_u
                 (local.get $2)
                 (i32.const 8)
                )
               )
               (if (result i32)
                (i32.gt_u
                 (local.get $2)
                 (i32.const 16777215)
                )
                (i32.const 31)
                (i32.or
                 (i32.shl
                  (local.tee $0
                   (i32.add
                    (i32.sub
                     (i32.const 14)
                     (i32.or
                      (i32.or
                       (local.tee $0
                        (i32.and
                         (i32.shr_u
                          (i32.add
                           (local.tee $1
                            (i32.shl
                             (local.get $0)
                             (local.tee $3
                              (i32.and
                               (i32.shr_u
                                (i32.add
                                 (local.get $0)
                                 (i32.const 1048320)
                                )
                                (i32.const 16)
                               )
                               (i32.const 8)
                              )
                             )
                            )
                           )
                           (i32.const 520192)
                          )
                          (i32.const 16)
                         )
                         (i32.const 4)
                        )
                       )
                       (local.get $3)
                      )
                      (local.tee $3
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.tee $0
                           (i32.shl
                            (local.get $1)
                            (local.get $0)
                           )
                          )
                          (i32.const 245760)
                         )
                         (i32.const 16)
                        )
                        (i32.const 2)
                       )
                      )
                     )
                    )
                    (i32.shr_u
                     (i32.shl
                      (local.get $0)
                      (local.get $3)
                     )
                     (i32.const 15)
                    )
                   )
                  )
                  (i32.const 1)
                 )
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.add
                    (local.get $0)
                    (i32.const 7)
                   )
                  )
                  (i32.const 1)
                 )
                )
               )
               (i32.const 0)
              )
             )
             (i32.const 2)
            )
            (i32.const 2544)
           )
          )
          (i32.store offset=28
           (local.get $7)
           (local.get $3)
          )
          (i32.store offset=4
           (local.tee $1
            (i32.add
             (local.get $7)
             (i32.const 16)
            )
           )
           (i32.const 0)
          )
          (i32.store
           (local.get $1)
           (i32.const 0)
          )
          (if
           (i32.eqz
            (i32.and
             (local.tee $1
              (i32.load
               (i32.const 2244)
              )
             )
             (local.tee $4
              (i32.shl
               (i32.const 1)
               (local.get $3)
              )
             )
            )
           )
           (block
            (i32.store
             (i32.const 2244)
             (i32.or
              (local.get $1)
              (local.get $4)
             )
            )
            (i32.store
             (local.get $0)
             (local.get $7)
            )
            (i32.store offset=24
             (local.get $7)
             (local.get $0)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $7)
            )
            (br $label$break$L317)
           )
          )
          (if
           (i32.eq
            (local.get $2)
            (i32.and
             (i32.load offset=4
              (local.tee $0
               (i32.load
                (local.get $0)
               )
              )
             )
             (i32.const -8)
            )
           )
           (local.set $11
            (local.get $0)
           )
           (block $label$break$L410
            (local.set $1
             (i32.shl
              (local.get $2)
              (select
               (i32.const 0)
               (i32.sub
                (i32.const 25)
                (i32.shr_u
                 (local.get $3)
                 (i32.const 1)
                )
               )
               (i32.eq
                (local.get $3)
                (i32.const 31)
               )
              )
             )
            )
            (loop $while-in64
             (if
              (local.tee $3
               (i32.load
                (local.tee $4
                 (i32.add
                  (i32.add
                   (local.get $0)
                   (i32.const 16)
                  )
                  (i32.shl
                   (i32.shr_u
                    (local.get $1)
                    (i32.const 31)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
              )
              (block
               (local.set $1
                (i32.shl
                 (local.get $1)
                 (i32.const 1)
                )
               )
               (if
                (i32.eq
                 (local.get $2)
                 (i32.and
                  (i32.load offset=4
                   (local.get $3)
                  )
                  (i32.const -8)
                 )
                )
                (block
                 (local.set $11
                  (local.get $3)
                 )
                 (br $label$break$L410)
                )
                (block
                 (local.set $0
                  (local.get $3)
                 )
                 (br $while-in64)
                )
               )
              )
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.get $4)
             )
             (call $_abort)
             (block
              (i32.store
               (local.get $4)
               (local.get $7)
              )
              (i32.store offset=24
               (local.get $7)
               (local.get $0)
              )
              (i32.store offset=12
               (local.get $7)
               (local.get $7)
              )
              (i32.store offset=8
               (local.get $7)
               (local.get $7)
              )
              (br $label$break$L317)
             )
            )
           )
          )
          (if
           (i32.and
            (i32.le_u
             (local.tee $0
              (i32.load
               (i32.const 2256)
              )
             )
             (local.get $11)
            )
            (i32.le_u
             (local.get $0)
             (local.tee $0
              (i32.load
               (local.tee $3
                (i32.add
                 (local.get $11)
                 (i32.const 8)
                )
               )
              )
             )
            )
           )
           (block
            (i32.store offset=12
             (local.get $0)
             (local.get $7)
            )
            (i32.store
             (local.get $3)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $0)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $11)
            )
            (i32.store offset=24
             (local.get $7)
             (i32.const 0)
            )
           )
           (call $_abort)
          )
         )
        )
        (global.set $STACKTOP
         (local.get $14)
        )
        (return
         (i32.add
          (local.get $8)
          (i32.const 8)
         )
        )
       )
      )
     )
     (local.set $2
      (i32.const 2688)
     )
     (loop $while-in66
      (block $while-out65
       (if
        (i32.le_u
         (local.tee $4
          (i32.load
           (local.get $2)
          )
         )
         (local.get $6)
        )
        (br_if $while-out65
         (i32.gt_u
          (local.tee $5
           (i32.add
            (local.get $4)
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
          (local.get $6)
         )
        )
       )
       (local.set $2
        (i32.load offset=8
         (local.get $2)
        )
       )
       (br $while-in66)
      )
     )
     (local.set $4
      (i32.add
       (local.tee $2
        (select
         (local.get $6)
         (local.tee $2
          (i32.add
           (select
            (i32.and
             (i32.sub
              (i32.const 0)
              (local.tee $2
               (i32.add
                (local.tee $4
                 (i32.add
                  (local.get $5)
                  (i32.const -47)
                 )
                )
                (i32.const 8)
               )
              )
             )
             (i32.const 7)
            )
            (i32.const 0)
            (i32.and
             (local.get $2)
             (i32.const 7)
            )
           )
           (local.get $4)
          )
         )
         (i32.lt_u
          (local.get $2)
          (local.tee $10
           (i32.add
            (local.get $6)
            (i32.const 16)
           )
          )
         )
        )
       )
       (i32.const 8)
      )
     )
     (i32.store
      (i32.const 2264)
      (local.tee $9
       (i32.add
        (local.get $0)
        (local.tee $7
         (select
          (i32.and
           (i32.sub
            (i32.const 0)
            (local.tee $7
             (i32.add
              (local.get $0)
              (i32.const 8)
             )
            )
           )
           (i32.const 7)
          )
          (i32.const 0)
          (i32.and
           (local.get $7)
           (i32.const 7)
          )
         )
        )
       )
      )
     )
     (i32.store
      (i32.const 2252)
      (local.tee $7
       (i32.sub
        (local.tee $11
         (i32.add
          (local.get $1)
          (i32.const -40)
         )
        )
        (local.get $7)
       )
      )
     )
     (i32.store offset=4
      (local.get $9)
      (i32.or
       (local.get $7)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (i32.add
       (local.get $0)
       (local.get $11)
      )
      (i32.const 40)
     )
     (i32.store
      (i32.const 2268)
      (i32.load
       (i32.const 2728)
      )
     )
     (i32.store
      (local.tee $7
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
      )
      (i32.const 27)
     )
     (i64.store align=4
      (local.get $4)
      (i64.load align=4
       (i32.const 2688)
      )
     )
     (i64.store offset=8 align=4
      (local.get $4)
      (i64.load align=4
       (i32.const 2696)
      )
     )
     (i32.store
      (i32.const 2688)
      (local.get $0)
     )
     (i32.store
      (i32.const 2692)
      (local.get $1)
     )
     (i32.store
      (i32.const 2700)
      (i32.const 0)
     )
     (i32.store
      (i32.const 2696)
      (local.get $4)
     )
     (local.set $0
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (loop $while-in68
      (i32.store
       (local.tee $1
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (i32.const 7)
      )
      (if
       (i32.lt_u
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
        (local.get $5)
       )
       (block
        (local.set $0
         (local.get $1)
        )
        (br $while-in68)
       )
      )
     )
     (if
      (i32.ne
       (local.get $2)
       (local.get $6)
      )
      (block
       (i32.store
        (local.get $7)
        (i32.and
         (i32.load
          (local.get $7)
         )
         (i32.const -2)
        )
       )
       (i32.store offset=4
        (local.get $6)
        (i32.or
         (local.tee $4
          (i32.sub
           (local.get $2)
           (local.get $6)
          )
         )
         (i32.const 1)
        )
       )
       (i32.store
        (local.get $2)
        (local.get $4)
       )
       (local.set $1
        (i32.shr_u
         (local.get $4)
         (i32.const 3)
        )
       )
       (if
        (i32.lt_u
         (local.get $4)
         (i32.const 256)
        )
        (block
         (local.set $0
          (i32.add
           (i32.shl
            (local.get $1)
            (i32.const 3)
           )
           (i32.const 2280)
          )
         )
         (if
          (i32.and
           (local.tee $2
            (i32.load
             (i32.const 2240)
            )
           )
           (local.tee $1
            (i32.shl
             (i32.const 1)
             (local.get $1)
            )
           )
          )
          (if
           (i32.gt_u
            (i32.load
             (i32.const 2256)
            )
            (local.tee $2
             (i32.load
              (local.tee $1
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
           )
           (call $_abort)
           (block
            (local.set $17
             (local.get $2)
            )
            (local.set $22
             (local.get $1)
            )
           )
          )
          (block
           (i32.store
            (i32.const 2240)
            (i32.or
             (local.get $1)
             (local.get $2)
            )
           )
           (local.set $17
            (local.get $0)
           )
           (local.set $22
            (i32.add
             (local.get $0)
             (i32.const 8)
            )
           )
          )
         )
         (i32.store
          (local.get $22)
          (local.get $6)
         )
         (i32.store offset=12
          (local.get $17)
          (local.get $6)
         )
         (i32.store offset=8
          (local.get $6)
          (local.get $17)
         )
         (i32.store offset=12
          (local.get $6)
          (local.get $0)
         )
         (br $label$break$L294)
        )
       )
       (local.set $0
        (i32.add
         (i32.shl
          (local.tee $1
           (if (result i32)
            (local.tee $0
             (i32.shr_u
              (local.get $4)
              (i32.const 8)
             )
            )
            (if (result i32)
             (i32.gt_u
              (local.get $4)
              (i32.const 16777215)
             )
             (i32.const 31)
             (block (result i32)
              (local.set $0
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.tee $2
                   (i32.shl
                    (local.get $0)
                    (local.tee $1
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.get $0)
                        (i32.const 1048320)
                       )
                       (i32.const 16)
                      )
                      (i32.const 8)
                     )
                    )
                   )
                  )
                  (i32.const 520192)
                 )
                 (i32.const 16)
                )
                (i32.const 4)
               )
              )
              (i32.or
               (i32.shl
                (local.tee $0
                 (i32.add
                  (i32.sub
                   (i32.const 14)
                   (i32.or
                    (local.tee $5
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.tee $2
                         (i32.shl
                          (local.get $2)
                          (local.get $0)
                         )
                        )
                        (i32.const 245760)
                       )
                       (i32.const 16)
                      )
                      (i32.const 2)
                     )
                    )
                    (i32.or
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (i32.shr_u
                   (i32.shl
                    (local.get $2)
                    (local.get $5)
                   )
                   (i32.const 15)
                  )
                 )
                )
                (i32.const 1)
               )
               (i32.and
                (i32.shr_u
                 (local.get $4)
                 (i32.add
                  (local.get $0)
                  (i32.const 7)
                 )
                )
                (i32.const 1)
               )
              )
             )
            )
            (i32.const 0)
           )
          )
          (i32.const 2)
         )
         (i32.const 2544)
        )
       )
       (i32.store offset=28
        (local.get $6)
        (local.get $1)
       )
       (i32.store offset=20
        (local.get $6)
        (i32.const 0)
       )
       (i32.store
        (local.get $10)
        (i32.const 0)
       )
       (if
        (i32.eqz
         (i32.and
          (local.tee $2
           (i32.load
            (i32.const 2244)
           )
          )
          (local.tee $5
           (i32.shl
            (i32.const 1)
            (local.get $1)
           )
          )
         )
        )
        (block
         (i32.store
          (i32.const 2244)
          (i32.or
           (local.get $2)
           (local.get $5)
          )
         )
         (i32.store
          (local.get $0)
          (local.get $6)
         )
         (i32.store offset=24
          (local.get $6)
          (local.get $0)
         )
         (i32.store offset=12
          (local.get $6)
          (local.get $6)
         )
         (i32.store offset=8
          (local.get $6)
          (local.get $6)
         )
         (br $label$break$L294)
        )
       )
       (if
        (i32.eq
         (i32.and
          (i32.load offset=4
           (local.tee $0
            (i32.load
             (local.get $0)
            )
           )
          )
          (i32.const -8)
         )
         (local.get $4)
        )
        (local.set $8
         (local.get $0)
        )
        (block $label$break$L451
         (local.set $2
          (i32.shl
           (local.get $4)
           (select
            (i32.const 0)
            (i32.sub
             (i32.const 25)
             (i32.shr_u
              (local.get $1)
              (i32.const 1)
             )
            )
            (i32.eq
             (local.get $1)
             (i32.const 31)
            )
           )
          )
         )
         (loop $while-in71
          (if
           (local.tee $1
            (i32.load
             (local.tee $5
              (i32.add
               (i32.add
                (local.get $0)
                (i32.const 16)
               )
               (i32.shl
                (i32.shr_u
                 (local.get $2)
                 (i32.const 31)
                )
                (i32.const 2)
               )
              )
             )
            )
           )
           (block
            (local.set $2
             (i32.shl
              (local.get $2)
              (i32.const 1)
             )
            )
            (if
             (i32.eq
              (i32.and
               (i32.load offset=4
                (local.get $1)
               )
               (i32.const -8)
              )
              (local.get $4)
             )
             (block
              (local.set $8
               (local.get $1)
              )
              (br $label$break$L451)
             )
             (block
              (local.set $0
               (local.get $1)
              )
              (br $while-in71)
             )
            )
           )
          )
         )
         (if
          (i32.gt_u
           (i32.load
            (i32.const 2256)
           )
           (local.get $5)
          )
          (call $_abort)
          (block
           (i32.store
            (local.get $5)
            (local.get $6)
           )
           (i32.store offset=24
            (local.get $6)
            (local.get $0)
           )
           (i32.store offset=12
            (local.get $6)
            (local.get $6)
           )
           (i32.store offset=8
            (local.get $6)
            (local.get $6)
           )
           (br $label$break$L294)
          )
         )
        )
       )
       (if
        (i32.and
         (i32.le_u
          (local.tee $0
           (i32.load
            (i32.const 2256)
           )
          )
          (local.get $8)
         )
         (i32.le_u
          (local.get $0)
          (local.tee $0
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $8)
              (i32.const 8)
             )
            )
           )
          )
         )
        )
        (block
         (i32.store offset=12
          (local.get $0)
          (local.get $6)
         )
         (i32.store
          (local.get $1)
          (local.get $6)
         )
         (i32.store offset=8
          (local.get $6)
          (local.get $0)
         )
         (i32.store offset=12
          (local.get $6)
          (local.get $8)
         )
         (i32.store offset=24
          (local.get $6)
          (i32.const 0)
         )
        )
        (call $_abort)
       )
      )
     )
    )
    (block
     (if
      (i32.or
       (i32.eqz
        (local.tee $2
         (i32.load
          (i32.const 2256)
         )
        )
       )
       (i32.lt_u
        (local.get $0)
        (local.get $2)
       )
      )
      (i32.store
       (i32.const 2256)
       (local.get $0)
      )
     )
     (i32.store
      (i32.const 2688)
      (local.get $0)
     )
     (i32.store
      (i32.const 2692)
      (local.get $1)
     )
     (i32.store
      (i32.const 2700)
      (i32.const 0)
     )
     (i32.store
      (i32.const 2276)
      (i32.load
       (i32.const 2712)
      )
     )
     (i32.store
      (i32.const 2272)
      (i32.const -1)
     )
     (i32.store
      (i32.const 2292)
      (i32.const 2280)
     )
     (i32.store
      (i32.const 2288)
      (i32.const 2280)
     )
     (i32.store
      (i32.const 2300)
      (i32.const 2288)
     )
     (i32.store
      (i32.const 2296)
      (i32.const 2288)
     )
     (i32.store
      (i32.const 2308)
      (i32.const 2296)
     )
     (i32.store
      (i32.const 2304)
      (i32.const 2296)
     )
     (i32.store
      (i32.const 2316)
      (i32.const 2304)
     )
     (i32.store
      (i32.const 2312)
      (i32.const 2304)
     )
     (i32.store
      (i32.const 2324)
      (i32.const 2312)
     )
     (i32.store
      (i32.const 2320)
      (i32.const 2312)
     )
     (i32.store
      (i32.const 2332)
      (i32.const 2320)
     )
     (i32.store
      (i32.const 2328)
      (i32.const 2320)
     )
     (i32.store
      (i32.const 2340)
      (i32.const 2328)
     )
     (i32.store
      (i32.const 2336)
      (i32.const 2328)
     )
     (i32.store
      (i32.const 2348)
      (i32.const 2336)
     )
     (i32.store
      (i32.const 2344)
      (i32.const 2336)
     )
     (i32.store
      (i32.const 2356)
      (i32.const 2344)
     )
     (i32.store
      (i32.const 2352)
      (i32.const 2344)
     )
     (i32.store
      (i32.const 2364)
      (i32.const 2352)
     )
     (i32.store
      (i32.const 2360)
      (i32.const 2352)
     )
     (i32.store
      (i32.const 2372)
      (i32.const 2360)
     )
     (i32.store
      (i32.const 2368)
      (i32.const 2360)
     )
     (i32.store
      (i32.const 2380)
      (i32.const 2368)
     )
     (i32.store
      (i32.const 2376)
      (i32.const 2368)
     )
     (i32.store
      (i32.const 2388)
      (i32.const 2376)
     )
     (i32.store
      (i32.const 2384)
      (i32.const 2376)
     )
     (i32.store
      (i32.const 2396)
      (i32.const 2384)
     )
     (i32.store
      (i32.const 2392)
      (i32.const 2384)
     )
     (i32.store
      (i32.const 2404)
      (i32.const 2392)
     )
     (i32.store
      (i32.const 2400)
      (i32.const 2392)
     )
     (i32.store
      (i32.const 2412)
      (i32.const 2400)
     )
     (i32.store
      (i32.const 2408)
      (i32.const 2400)
     )
     (i32.store
      (i32.const 2420)
      (i32.const 2408)
     )
     (i32.store
      (i32.const 2416)
      (i32.const 2408)
     )
     (i32.store
      (i32.const 2428)
      (i32.const 2416)
     )
     (i32.store
      (i32.const 2424)
      (i32.const 2416)
     )
     (i32.store
      (i32.const 2436)
      (i32.const 2424)
     )
     (i32.store
      (i32.const 2432)
      (i32.const 2424)
     )
     (i32.store
      (i32.const 2444)
      (i32.const 2432)
     )
     (i32.store
      (i32.const 2440)
      (i32.const 2432)
     )
     (i32.store
      (i32.const 2452)
      (i32.const 2440)
     )
     (i32.store
      (i32.const 2448)
      (i32.const 2440)
     )
     (i32.store
      (i32.const 2460)
      (i32.const 2448)
     )
     (i32.store
      (i32.const 2456)
      (i32.const 2448)
     )
     (i32.store
      (i32.const 2468)
      (i32.const 2456)
     )
     (i32.store
      (i32.const 2464)
      (i32.const 2456)
     )
     (i32.store
      (i32.const 2476)
      (i32.const 2464)
     )
     (i32.store
      (i32.const 2472)
      (i32.const 2464)
     )
     (i32.store
      (i32.const 2484)
      (i32.const 2472)
     )
     (i32.store
      (i32.const 2480)
      (i32.const 2472)
     )
     (i32.store
      (i32.const 2492)
      (i32.const 2480)
     )
     (i32.store
      (i32.const 2488)
      (i32.const 2480)
     )
     (i32.store
      (i32.const 2500)
      (i32.const 2488)
     )
     (i32.store
      (i32.const 2496)
      (i32.const 2488)
     )
     (i32.store
      (i32.const 2508)
      (i32.const 2496)
     )
     (i32.store
      (i32.const 2504)
      (i32.const 2496)
     )
     (i32.store
      (i32.const 2516)
      (i32.const 2504)
     )
     (i32.store
      (i32.const 2512)
      (i32.const 2504)
     )
     (i32.store
      (i32.const 2524)
      (i32.const 2512)
     )
     (i32.store
      (i32.const 2520)
      (i32.const 2512)
     )
     (i32.store
      (i32.const 2532)
      (i32.const 2520)
     )
     (i32.store
      (i32.const 2528)
      (i32.const 2520)
     )
     (i32.store
      (i32.const 2540)
      (i32.const 2528)
     )
     (i32.store
      (i32.const 2536)
      (i32.const 2528)
     )
     (i32.store
      (i32.const 2264)
      (local.tee $4
       (i32.add
        (local.get $0)
        (local.tee $2
         (select
          (i32.and
           (i32.sub
            (i32.const 0)
            (local.tee $2
             (i32.add
              (local.get $0)
              (i32.const 8)
             )
            )
           )
           (i32.const 7)
          )
          (i32.const 0)
          (i32.and
           (local.get $2)
           (i32.const 7)
          )
         )
        )
       )
      )
     )
     (i32.store
      (i32.const 2252)
      (local.tee $2
       (i32.sub
        (local.tee $1
         (i32.add
          (local.get $1)
          (i32.const -40)
         )
        )
        (local.get $2)
       )
      )
     )
     (i32.store offset=4
      (local.get $4)
      (i32.or
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (i32.add
       (local.get $0)
       (local.get $1)
      )
      (i32.const 40)
     )
     (i32.store
      (i32.const 2268)
      (i32.load
       (i32.const 2728)
      )
     )
    )
   )
   (if
    (i32.gt_u
     (local.tee $0
      (i32.load
       (i32.const 2252)
      )
     )
     (local.get $3)
    )
    (block
     (i32.store
      (i32.const 2252)
      (local.tee $1
       (i32.sub
        (local.get $0)
        (local.get $3)
       )
      )
     )
     (i32.store
      (i32.const 2264)
      (local.tee $2
       (i32.add
        (local.get $3)
        (local.tee $0
         (i32.load
          (i32.const 2264)
         )
        )
       )
      )
     )
     (i32.store offset=4
      (local.get $2)
      (i32.or
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (local.get $0)
      (i32.or
       (local.get $3)
       (i32.const 3)
      )
     )
     (global.set $STACKTOP
      (local.get $14)
     )
     (return
      (i32.add
       (local.get $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (i32.store
   (i32.const 2224)
   (i32.const 12)
  )
  (global.set $STACKTOP
   (local.get $14)
  )
  (i32.const 0)
 )
 (func $_free (; 22 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (return)
  )
  (if
   (i32.lt_u
    (local.tee $4
     (i32.add
      (local.get $0)
      (i32.const -8)
     )
    )
    (local.tee $12
     (i32.load
      (i32.const 2256)
     )
    )
   )
   (call $_abort)
  )
  (if
   (i32.eq
    (local.tee $11
     (i32.and
      (local.tee $0
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const -4)
        )
       )
      )
      (i32.const 3)
     )
    )
    (i32.const 1)
   )
   (call $_abort)
  )
  (local.set $7
   (i32.add
    (local.get $4)
    (local.tee $2
     (i32.and
      (local.get $0)
      (i32.const -8)
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $0)
    (i32.const 1)
   )
   (block
    (local.set $1
     (local.get $2)
    )
    (local.set $5
     (local.tee $3
      (local.get $4)
     )
    )
   )
   (block $label$break$L10
    (local.set $9
     (i32.load
      (local.get $4)
     )
    )
    (if
     (i32.eqz
      (local.get $11)
     )
     (return)
    )
    (if
     (i32.lt_u
      (local.tee $0
       (i32.sub
        (local.get $4)
        (local.get $9)
       )
      )
      (local.get $12)
     )
     (call $_abort)
    )
    (local.set $4
     (i32.add
      (local.get $2)
      (local.get $9)
     )
    )
    (if
     (i32.eq
      (local.get $0)
      (i32.load
       (i32.const 2260)
      )
     )
     (block
      (if
       (i32.ne
        (i32.and
         (local.tee $3
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $7)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const 3)
        )
        (i32.const 3)
       )
       (block
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $4)
        )
        (local.set $5
         (local.get $0)
        )
        (br $label$break$L10)
       )
      )
      (i32.store
       (i32.const 2248)
       (local.get $4)
      )
      (i32.store
       (local.get $1)
       (i32.and
        (local.get $3)
        (i32.const -2)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (i32.const 4)
       )
       (i32.or
        (local.get $4)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (local.get $4)
       )
       (local.get $4)
      )
      (return)
     )
    )
    (local.set $2
     (i32.shr_u
      (local.get $9)
      (i32.const 3)
     )
    )
    (if
     (i32.lt_u
      (local.get $9)
      (i32.const 256)
     )
     (block
      (local.set $3
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
       )
      )
      (if
       (i32.ne
        (local.tee $5
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
        (local.tee $1
         (i32.add
          (i32.shl
           (local.get $2)
           (i32.const 3)
          )
          (i32.const 2280)
         )
        )
       )
       (block
        (if
         (i32.gt_u
          (local.get $12)
          (local.get $5)
         )
         (call $_abort)
        )
        (if
         (i32.ne
          (i32.load
           (i32.add
            (local.get $5)
            (i32.const 12)
           )
          )
          (local.get $0)
         )
         (call $_abort)
        )
       )
      )
      (if
       (i32.eq
        (local.get $3)
        (local.get $5)
       )
       (block
        (i32.store
         (i32.const 2240)
         (i32.and
          (i32.load
           (i32.const 2240)
          )
          (i32.xor
           (i32.shl
            (i32.const 1)
            (local.get $2)
           )
           (i32.const -1)
          )
         )
        )
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $4)
        )
        (local.set $5
         (local.get $0)
        )
        (br $label$break$L10)
       )
      )
      (if
       (i32.eq
        (local.get $1)
        (local.get $3)
       )
       (local.set $6
        (i32.add
         (local.get $3)
         (i32.const 8)
        )
       )
       (block
        (if
         (i32.gt_u
          (local.get $12)
          (local.get $3)
         )
         (call $_abort)
        )
        (if
         (i32.eq
          (local.get $0)
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $3)
             (i32.const 8)
            )
           )
          )
         )
         (local.set $6
          (local.get $1)
         )
         (call $_abort)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $5)
        (i32.const 12)
       )
       (local.get $3)
      )
      (i32.store
       (local.get $6)
       (local.get $5)
      )
      (local.set $3
       (local.get $0)
      )
      (local.set $1
       (local.get $4)
      )
      (local.set $5
       (local.get $0)
      )
      (br $label$break$L10)
     )
    )
    (local.set $13
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 24)
      )
     )
    )
    (if
     (i32.eq
      (local.get $0)
      (local.tee $2
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
       )
      )
     )
     (block $do-once
      (if
       (local.tee $2
        (i32.load
         (local.tee $9
          (i32.add
           (local.tee $6
            (i32.add
             (local.get $0)
             (i32.const 16)
            )
           )
           (i32.const 4)
          )
         )
        )
       )
       (local.set $6
        (local.get $9)
       )
       (br_if $do-once
        (i32.eqz
         (local.tee $2
          (i32.load
           (local.get $6)
          )
         )
        )
       )
      )
      (loop $while-in
       (block $while-out
        (local.set $2
         (if (result i32)
          (local.tee $11
           (i32.load
            (local.tee $9
             (i32.add
              (local.get $2)
              (i32.const 20)
             )
            )
           )
          )
          (block (result i32)
           (local.set $6
            (local.get $9)
           )
           (local.get $11)
          )
          (block (result i32)
           (br_if $while-out
            (i32.eqz
             (local.tee $11
              (i32.load
               (local.tee $9
                (i32.add
                 (local.get $2)
                 (i32.const 16)
                )
               )
              )
             )
            )
           )
           (local.set $6
            (local.get $9)
           )
           (local.get $11)
          )
         )
        )
        (br $while-in)
       )
      )
      (if
       (i32.gt_u
        (local.get $12)
        (local.get $6)
       )
       (call $_abort)
       (block
        (i32.store
         (local.get $6)
         (i32.const 0)
        )
        (local.set $8
         (local.get $2)
        )
       )
      )
     )
     (block
      (if
       (i32.gt_u
        (local.get $12)
        (local.tee $6
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
       (call $_abort)
      )
      (if
       (i32.ne
        (i32.load
         (local.tee $9
          (i32.add
           (local.get $6)
           (i32.const 12)
          )
         )
        )
        (local.get $0)
       )
       (call $_abort)
      )
      (if
       (i32.eq
        (local.get $0)
        (i32.load
         (local.tee $11
          (i32.add
           (local.get $2)
           (i32.const 8)
          )
         )
        )
       )
       (block
        (i32.store
         (local.get $9)
         (local.get $2)
        )
        (i32.store
         (local.get $11)
         (local.get $6)
        )
        (local.set $8
         (local.get $2)
        )
       )
       (call $_abort)
      )
     )
    )
    (if
     (local.get $13)
     (block
      (if
       (i32.eq
        (local.get $0)
        (i32.load
         (local.tee $6
          (i32.add
           (i32.shl
            (local.tee $2
             (i32.load
              (i32.add
               (local.get $0)
               (i32.const 28)
              )
             )
            )
            (i32.const 2)
           )
           (i32.const 2544)
          )
         )
        )
       )
       (block
        (i32.store
         (local.get $6)
         (local.get $8)
        )
        (if
         (i32.eqz
          (local.get $8)
         )
         (block
          (i32.store
           (i32.const 2244)
           (i32.and
            (i32.load
             (i32.const 2244)
            )
            (i32.xor
             (i32.shl
              (i32.const 1)
              (local.get $2)
             )
             (i32.const -1)
            )
           )
          )
          (local.set $3
           (local.get $0)
          )
          (local.set $1
           (local.get $4)
          )
          (local.set $5
           (local.get $0)
          )
          (br $label$break$L10)
         )
        )
       )
       (if
        (i32.gt_u
         (i32.load
          (i32.const 2256)
         )
         (local.get $13)
        )
        (call $_abort)
        (block
         (i32.store
          (select
           (local.tee $2
            (i32.add
             (local.get $13)
             (i32.const 16)
            )
           )
           (i32.add
            (local.get $13)
            (i32.const 20)
           )
           (i32.eq
            (local.get $0)
            (i32.load
             (local.get $2)
            )
           )
          )
          (local.get $8)
         )
         (if
          (i32.eqz
           (local.get $8)
          )
          (block
           (local.set $3
            (local.get $0)
           )
           (local.set $1
            (local.get $4)
           )
           (local.set $5
            (local.get $0)
           )
           (br $label$break$L10)
          )
         )
        )
       )
      )
      (if
       (i32.gt_u
        (local.tee $6
         (i32.load
          (i32.const 2256)
         )
        )
        (local.get $8)
       )
       (call $_abort)
      )
      (i32.store
       (i32.add
        (local.get $8)
        (i32.const 24)
       )
       (local.get $13)
      )
      (if
       (local.tee $2
        (i32.load
         (local.tee $9
          (i32.add
           (local.get $0)
           (i32.const 16)
          )
         )
        )
       )
       (if
        (i32.gt_u
         (local.get $6)
         (local.get $2)
        )
        (call $_abort)
        (block
         (i32.store
          (i32.add
           (local.get $8)
           (i32.const 16)
          )
          (local.get $2)
         )
         (i32.store
          (i32.add
           (local.get $2)
           (i32.const 24)
          )
          (local.get $8)
         )
        )
       )
      )
      (if
       (local.tee $2
        (i32.load
         (i32.add
          (local.get $9)
          (i32.const 4)
         )
        )
       )
       (if
        (i32.gt_u
         (i32.load
          (i32.const 2256)
         )
         (local.get $2)
        )
        (call $_abort)
        (block
         (i32.store
          (i32.add
           (local.get $8)
           (i32.const 20)
          )
          (local.get $2)
         )
         (i32.store
          (i32.add
           (local.get $2)
           (i32.const 24)
          )
          (local.get $8)
         )
         (local.set $3
          (local.get $0)
         )
         (local.set $1
          (local.get $4)
         )
         (local.set $5
          (local.get $0)
         )
        )
       )
       (block
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $4)
        )
        (local.set $5
         (local.get $0)
        )
       )
      )
     )
     (block
      (local.set $3
       (local.get $0)
      )
      (local.set $1
       (local.get $4)
      )
      (local.set $5
       (local.get $0)
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (local.get $5)
    (local.get $7)
   )
   (call $_abort)
  )
  (if
   (i32.eqz
    (i32.and
     (local.tee $0
      (i32.load
       (local.tee $4
        (i32.add
         (local.get $7)
         (i32.const 4)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
   (call $_abort)
  )
  (local.set $1
   (i32.shr_u
    (local.tee $5
     (if (result i32)
      (i32.and
       (local.get $0)
       (i32.const 2)
      )
      (block (result i32)
       (i32.store
        (local.get $4)
        (i32.and
         (local.get $0)
         (i32.const -2)
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.or
         (local.get $1)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $1)
         (local.get $5)
        )
        (local.get $1)
       )
       (local.get $1)
      )
      (block (result i32)
       (if
        (i32.eq
         (local.get $7)
         (i32.load
          (i32.const 2264)
         )
        )
        (block
         (i32.store
          (i32.const 2252)
          (local.tee $0
           (i32.add
            (local.get $1)
            (i32.load
             (i32.const 2252)
            )
           )
          )
         )
         (i32.store
          (i32.const 2264)
          (local.get $3)
         )
         (i32.store
          (i32.add
           (local.get $3)
           (i32.const 4)
          )
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.ne
           (i32.load
            (i32.const 2260)
           )
           (local.get $3)
          )
          (return)
         )
         (i32.store
          (i32.const 2260)
          (i32.const 0)
         )
         (i32.store
          (i32.const 2248)
          (i32.const 0)
         )
         (return)
        )
       )
       (if
        (i32.eq
         (local.get $7)
         (i32.load
          (i32.const 2260)
         )
        )
        (block
         (i32.store
          (i32.const 2248)
          (local.tee $0
           (i32.add
            (local.get $1)
            (i32.load
             (i32.const 2248)
            )
           )
          )
         )
         (i32.store
          (i32.const 2260)
          (local.get $5)
         )
         (i32.store
          (i32.add
           (local.get $3)
           (i32.const 4)
          )
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $0)
           (local.get $5)
          )
          (local.get $0)
         )
         (return)
        )
       )
       (local.set $4
        (i32.add
         (local.get $1)
         (i32.and
          (local.get $0)
          (i32.const -8)
         )
        )
       )
       (local.set $6
        (i32.shr_u
         (local.get $0)
         (i32.const 3)
        )
       )
       (block $label$break$L111
        (if
         (i32.lt_u
          (local.get $0)
          (i32.const 256)
         )
         (block
          (local.set $1
           (i32.load
            (i32.add
             (local.get $7)
             (i32.const 12)
            )
           )
          )
          (if
           (i32.ne
            (local.tee $2
             (i32.load
              (i32.add
               (local.get $7)
               (i32.const 8)
              )
             )
            )
            (local.tee $0
             (i32.add
              (i32.shl
               (local.get $6)
               (i32.const 3)
              )
              (i32.const 2280)
             )
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.get $2)
             )
             (call $_abort)
            )
            (if
             (i32.ne
              (i32.load
               (i32.add
                (local.get $2)
                (i32.const 12)
               )
              )
              (local.get $7)
             )
             (call $_abort)
            )
           )
          )
          (if
           (i32.eq
            (local.get $1)
            (local.get $2)
           )
           (block
            (i32.store
             (i32.const 2240)
             (i32.and
              (i32.load
               (i32.const 2240)
              )
              (i32.xor
               (i32.shl
                (i32.const 1)
                (local.get $6)
               )
               (i32.const -1)
              )
             )
            )
            (br $label$break$L111)
           )
          )
          (if
           (i32.eq
            (local.get $0)
            (local.get $1)
           )
           (local.set $16
            (i32.add
             (local.get $1)
             (i32.const 8)
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.get $1)
             )
             (call $_abort)
            )
            (if
             (i32.eq
              (local.get $7)
              (i32.load
               (local.tee $0
                (i32.add
                 (local.get $1)
                 (i32.const 8)
                )
               )
              )
             )
             (local.set $16
              (local.get $0)
             )
             (call $_abort)
            )
           )
          )
          (i32.store
           (i32.add
            (local.get $2)
            (i32.const 12)
           )
           (local.get $1)
          )
          (i32.store
           (local.get $16)
           (local.get $2)
          )
         )
         (block
          (local.set $8
           (i32.load
            (i32.add
             (local.get $7)
             (i32.const 24)
            )
           )
          )
          (if
           (i32.eq
            (local.get $7)
            (local.tee $0
             (i32.load
              (i32.add
               (local.get $7)
               (i32.const 12)
              )
             )
            )
           )
           (block $do-once6
            (if
             (local.tee $0
              (i32.load
               (local.tee $2
                (i32.add
                 (local.tee $1
                  (i32.add
                   (local.get $7)
                   (i32.const 16)
                  )
                 )
                 (i32.const 4)
                )
               )
              )
             )
             (local.set $1
              (local.get $2)
             )
             (br_if $do-once6
              (i32.eqz
               (local.tee $0
                (i32.load
                 (local.get $1)
                )
               )
              )
             )
            )
            (loop $while-in9
             (block $while-out8
              (local.set $0
               (if (result i32)
                (local.tee $6
                 (i32.load
                  (local.tee $2
                   (i32.add
                    (local.get $0)
                    (i32.const 20)
                   )
                  )
                 )
                )
                (block (result i32)
                 (local.set $1
                  (local.get $2)
                 )
                 (local.get $6)
                )
                (block (result i32)
                 (br_if $while-out8
                  (i32.eqz
                   (local.tee $6
                    (i32.load
                     (local.tee $2
                      (i32.add
                       (local.get $0)
                       (i32.const 16)
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $1
                  (local.get $2)
                 )
                 (local.get $6)
                )
               )
              )
              (br $while-in9)
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.get $1)
             )
             (call $_abort)
             (block
              (i32.store
               (local.get $1)
               (i32.const 0)
              )
              (local.set $10
               (local.get $0)
              )
             )
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 2256)
              )
              (local.tee $1
               (i32.load
                (i32.add
                 (local.get $7)
                 (i32.const 8)
                )
               )
              )
             )
             (call $_abort)
            )
            (if
             (i32.ne
              (i32.load
               (local.tee $2
                (i32.add
                 (local.get $1)
                 (i32.const 12)
                )
               )
              )
              (local.get $7)
             )
             (call $_abort)
            )
            (if
             (i32.eq
              (local.get $7)
              (i32.load
               (local.tee $6
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
             )
             (block
              (i32.store
               (local.get $2)
               (local.get $0)
              )
              (i32.store
               (local.get $6)
               (local.get $1)
              )
              (local.set $10
               (local.get $0)
              )
             )
             (call $_abort)
            )
           )
          )
          (if
           (local.get $8)
           (block
            (if
             (i32.eq
              (local.get $7)
              (i32.load
               (local.tee $1
                (i32.add
                 (i32.shl
                  (local.tee $0
                   (i32.load
                    (i32.add
                     (local.get $7)
                     (i32.const 28)
                    )
                   )
                  )
                  (i32.const 2)
                 )
                 (i32.const 2544)
                )
               )
              )
             )
             (block
              (i32.store
               (local.get $1)
               (local.get $10)
              )
              (if
               (i32.eqz
                (local.get $10)
               )
               (block
                (i32.store
                 (i32.const 2244)
                 (i32.and
                  (i32.load
                   (i32.const 2244)
                  )
                  (i32.xor
                   (i32.shl
                    (i32.const 1)
                    (local.get $0)
                   )
                   (i32.const -1)
                  )
                 )
                )
                (br $label$break$L111)
               )
              )
             )
             (if
              (i32.gt_u
               (i32.load
                (i32.const 2256)
               )
               (local.get $8)
              )
              (call $_abort)
              (block
               (i32.store
                (select
                 (local.tee $0
                  (i32.add
                   (local.get $8)
                   (i32.const 16)
                  )
                 )
                 (i32.add
                  (local.get $8)
                  (i32.const 20)
                 )
                 (i32.eq
                  (local.get $7)
                  (i32.load
                   (local.get $0)
                  )
                 )
                )
                (local.get $10)
               )
               (br_if $label$break$L111
                (i32.eqz
                 (local.get $10)
                )
               )
              )
             )
            )
            (if
             (i32.gt_u
              (local.tee $1
               (i32.load
                (i32.const 2256)
               )
              )
              (local.get $10)
             )
             (call $_abort)
            )
            (i32.store
             (i32.add
              (local.get $10)
              (i32.const 24)
             )
             (local.get $8)
            )
            (if
             (local.tee $0
              (i32.load
               (local.tee $2
                (i32.add
                 (local.get $7)
                 (i32.const 16)
                )
               )
              )
             )
             (if
              (i32.gt_u
               (local.get $1)
               (local.get $0)
              )
              (call $_abort)
              (block
               (i32.store
                (i32.add
                 (local.get $10)
                 (i32.const 16)
                )
                (local.get $0)
               )
               (i32.store
                (i32.add
                 (local.get $0)
                 (i32.const 24)
                )
                (local.get $10)
               )
              )
             )
            )
            (if
             (local.tee $0
              (i32.load
               (i32.add
                (local.get $2)
                (i32.const 4)
               )
              )
             )
             (if
              (i32.gt_u
               (i32.load
                (i32.const 2256)
               )
               (local.get $0)
              )
              (call $_abort)
              (block
               (i32.store
                (i32.add
                 (local.get $10)
                 (i32.const 20)
                )
                (local.get $0)
               )
               (i32.store
                (i32.add
                 (local.get $0)
                 (i32.const 24)
                )
                (local.get $10)
               )
              )
             )
            )
           )
          )
         )
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.or
         (local.get $4)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $4)
         (local.get $5)
        )
        (local.get $4)
       )
       (if (result i32)
        (i32.eq
         (local.get $3)
         (i32.load
          (i32.const 2260)
         )
        )
        (block
         (i32.store
          (i32.const 2248)
          (local.get $4)
         )
         (return)
        )
        (local.get $4)
       )
      )
     )
    )
    (i32.const 3)
   )
  )
  (if
   (i32.lt_u
    (local.get $5)
    (i32.const 256)
   )
   (block
    (local.set $0
     (i32.add
      (i32.shl
       (local.get $1)
       (i32.const 3)
      )
      (i32.const 2280)
     )
    )
    (if
     (i32.and
      (local.tee $5
       (i32.load
        (i32.const 2240)
       )
      )
      (local.tee $1
       (i32.shl
        (i32.const 1)
        (local.get $1)
       )
      )
     )
     (if
      (i32.gt_u
       (i32.load
        (i32.const 2256)
       )
       (local.tee $5
        (i32.load
         (local.tee $1
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
      )
      (call $_abort)
      (block
       (local.set $15
        (local.get $5)
       )
       (local.set $17
        (local.get $1)
       )
      )
     )
     (block
      (i32.store
       (i32.const 2240)
       (i32.or
        (local.get $1)
        (local.get $5)
       )
      )
      (local.set $15
       (local.get $0)
      )
      (local.set $17
       (i32.add
        (local.get $0)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store
     (local.get $17)
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $15)
      (i32.const 12)
     )
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
     (local.get $15)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 12)
     )
     (local.get $0)
    )
    (return)
   )
  )
  (local.set $0
   (i32.add
    (i32.shl
     (local.tee $1
      (if (result i32)
       (local.tee $0
        (i32.shr_u
         (local.get $5)
         (i32.const 8)
        )
       )
       (if (result i32)
        (i32.gt_u
         (local.get $5)
         (i32.const 16777215)
        )
        (i32.const 31)
        (block (result i32)
         (local.set $0
          (i32.and
           (i32.shr_u
            (i32.add
             (local.tee $4
              (i32.shl
               (local.get $0)
               (local.tee $1
                (i32.and
                 (i32.shr_u
                  (i32.add
                   (local.get $0)
                   (i32.const 1048320)
                  )
                  (i32.const 16)
                 )
                 (i32.const 8)
                )
               )
              )
             )
             (i32.const 520192)
            )
            (i32.const 16)
           )
           (i32.const 4)
          )
         )
         (i32.or
          (i32.shl
           (local.tee $0
            (i32.add
             (i32.sub
              (i32.const 14)
              (i32.or
               (i32.or
                (local.get $0)
                (local.get $1)
               )
               (local.tee $1
                (i32.and
                 (i32.shr_u
                  (i32.add
                   (local.tee $0
                    (i32.shl
                     (local.get $4)
                     (local.get $0)
                    )
                   )
                   (i32.const 245760)
                  )
                  (i32.const 16)
                 )
                 (i32.const 2)
                )
               )
              )
             )
             (i32.shr_u
              (i32.shl
               (local.get $0)
               (local.get $1)
              )
              (i32.const 15)
             )
            )
           )
           (i32.const 1)
          )
          (i32.and
           (i32.shr_u
            (local.get $5)
            (i32.add
             (local.get $0)
             (i32.const 7)
            )
           )
           (i32.const 1)
          )
         )
        )
       )
       (i32.const 0)
      )
     )
     (i32.const 2)
    )
    (i32.const 2544)
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 28)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 20)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (if
   (i32.and
    (local.tee $4
     (i32.load
      (i32.const 2244)
     )
    )
    (local.tee $2
     (i32.shl
      (i32.const 1)
      (local.get $1)
     )
    )
   )
   (block $label$break$L197
    (if
     (i32.eq
      (local.get $5)
      (i32.and
       (i32.load
        (i32.add
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (i32.const 4)
        )
       )
       (i32.const -8)
      )
     )
     (local.set $14
      (local.get $0)
     )
     (block $label$break$L200
      (local.set $4
       (i32.shl
        (local.get $5)
        (select
         (i32.const 0)
         (i32.sub
          (i32.const 25)
          (i32.shr_u
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.eq
          (local.get $1)
          (i32.const 31)
         )
        )
       )
      )
      (loop $while-in17
       (if
        (local.tee $1
         (i32.load
          (local.tee $2
           (i32.add
            (i32.add
             (local.get $0)
             (i32.const 16)
            )
            (i32.shl
             (i32.shr_u
              (local.get $4)
              (i32.const 31)
             )
             (i32.const 2)
            )
           )
          )
         )
        )
        (block
         (local.set $4
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (local.get $5)
           (i32.and
            (i32.load
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (i32.const -8)
           )
          )
          (block
           (local.set $14
            (local.get $1)
           )
           (br $label$break$L200)
          )
          (block
           (local.set $0
            (local.get $1)
           )
           (br $while-in17)
          )
         )
        )
       )
      )
      (if
       (i32.gt_u
        (i32.load
         (i32.const 2256)
        )
        (local.get $2)
       )
       (call $_abort)
       (block
        (i32.store
         (local.get $2)
         (local.get $3)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 24)
         )
         (local.get $0)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 12)
         )
         (local.get $3)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 8)
         )
         (local.get $3)
        )
        (br $label$break$L197)
       )
      )
     )
    )
    (if
     (i32.and
      (i32.le_u
       (local.tee $0
        (i32.load
         (i32.const 2256)
        )
       )
       (local.get $14)
      )
      (i32.le_u
       (local.get $0)
       (local.tee $0
        (i32.load
         (local.tee $1
          (i32.add
           (local.get $14)
           (i32.const 8)
          )
         )
        )
       )
      )
     )
     (block
      (i32.store
       (i32.add
        (local.get $0)
        (i32.const 12)
       )
       (local.get $3)
      )
      (i32.store
       (local.get $1)
       (local.get $3)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 8)
       )
       (local.get $0)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 12)
       )
       (local.get $14)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 24)
       )
       (i32.const 0)
      )
     )
     (call $_abort)
    )
   )
   (block
    (i32.store
     (i32.const 2244)
     (i32.or
      (local.get $2)
      (local.get $4)
     )
    )
    (i32.store
     (local.get $0)
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 24)
     )
     (local.get $0)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 12)
     )
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
     (local.get $3)
    )
   )
  )
  (i32.store
   (i32.const 2272)
   (local.tee $0
    (i32.add
     (i32.load
      (i32.const 2272)
     )
     (i32.const -1)
    )
   )
  )
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (i32.const 2696)
  )
  (loop $while-in19
   (local.set $0
    (i32.add
     (local.tee $1
      (i32.load
       (local.get $0)
      )
     )
     (i32.const 8)
    )
   )
   (br_if $while-in19
    (local.get $1)
   )
  )
  (i32.store
   (i32.const 2272)
   (i32.const -1)
  )
 )
 (func $_memcpy (; 23 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.ge_s
    (local.get $2)
    (i32.const 8192)
   )
   (block
    (drop
     (call $_emscripten_memcpy_big
      (local.get $0)
      (local.get $1)
      (local.get $2)
     )
    )
    (return
     (local.get $0)
    )
   )
  )
  (local.set $4
   (local.get $0)
  )
  (local.set $3
   (i32.add
    (local.get $0)
    (local.get $2)
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.and
     (local.get $1)
     (i32.const 3)
    )
   )
   (block
    (loop $while-in
     (if
      (i32.and
       (local.get $0)
       (i32.const 3)
      )
      (block
       (if
        (i32.eqz
         (local.get $2)
        )
        (return
         (local.get $4)
        )
       )
       (i32.store8
        (local.get $0)
        (i32.load8_s
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (local.set $2
        (i32.sub
         (local.get $2)
         (i32.const 1)
        )
       )
       (br $while-in)
      )
     )
    )
    (local.set $5
     (i32.add
      (local.tee $2
       (i32.and
        (local.get $3)
        (i32.const -4)
       )
      )
      (i32.const -64)
     )
    )
    (loop $while-in1
     (if
      (i32.le_s
       (local.get $0)
       (local.get $5)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.load
         (local.get $1)
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.load offset=4
         (local.get $1)
        )
       )
       (i32.store offset=8
        (local.get $0)
        (i32.load offset=8
         (local.get $1)
        )
       )
       (i32.store offset=12
        (local.get $0)
        (i32.load offset=12
         (local.get $1)
        )
       )
       (i32.store offset=16
        (local.get $0)
        (i32.load offset=16
         (local.get $1)
        )
       )
       (i32.store offset=20
        (local.get $0)
        (i32.load offset=20
         (local.get $1)
        )
       )
       (i32.store offset=24
        (local.get $0)
        (i32.load offset=24
         (local.get $1)
        )
       )
       (i32.store offset=28
        (local.get $0)
        (i32.load offset=28
         (local.get $1)
        )
       )
       (i32.store offset=32
        (local.get $0)
        (i32.load offset=32
         (local.get $1)
        )
       )
       (i32.store offset=36
        (local.get $0)
        (i32.load offset=36
         (local.get $1)
        )
       )
       (i32.store offset=40
        (local.get $0)
        (i32.load offset=40
         (local.get $1)
        )
       )
       (i32.store offset=44
        (local.get $0)
        (i32.load offset=44
         (local.get $1)
        )
       )
       (i32.store offset=48
        (local.get $0)
        (i32.load offset=48
         (local.get $1)
        )
       )
       (i32.store offset=52
        (local.get $0)
        (i32.load offset=52
         (local.get $1)
        )
       )
       (i32.store offset=56
        (local.get $0)
        (i32.load offset=56
         (local.get $1)
        )
       )
       (i32.store offset=60
        (local.get $0)
        (i32.load offset=60
         (local.get $1)
        )
       )
       (local.set $0
        (i32.sub
         (local.get $0)
         (i32.const -64)
        )
       )
       (local.set $1
        (i32.sub
         (local.get $1)
         (i32.const -64)
        )
       )
       (br $while-in1)
      )
     )
    )
    (loop $while-in3
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $2)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.load
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (br $while-in3)
      )
     )
    )
   )
   (block
    (local.set $2
     (i32.sub
      (local.get $3)
      (i32.const 4)
     )
    )
    (loop $while-in5
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $2)
      )
      (block
       (i32.store8
        (local.get $0)
        (i32.load8_s
         (local.get $1)
        )
       )
       (i32.store8 offset=1
        (local.get $0)
        (i32.load8_s offset=1
         (local.get $1)
        )
       )
       (i32.store8 offset=2
        (local.get $0)
        (i32.load8_s offset=2
         (local.get $1)
        )
       )
       (i32.store8 offset=3
        (local.get $0)
        (i32.load8_s offset=3
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (br $while-in5)
      )
     )
    )
   )
  )
  (loop $while-in7
   (if
    (i32.lt_s
     (local.get $0)
     (local.get $3)
    )
    (block
     (i32.store8
      (local.get $0)
      (i32.load8_s
       (local.get $1)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-in7)
    )
   )
  )
  (local.get $4)
 )
 (func $_memset (; 24 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (local.get $2)
   )
  )
  (local.set $1
   (i32.and
    (local.get $1)
    (i32.const 255)
   )
  )
  (if
   (i32.ge_s
    (local.get $2)
    (i32.const 67)
   )
   (block
    (loop $while-in
     (if
      (i32.and
       (local.get $0)
       (i32.const 3)
      )
      (block
       (i32.store8
        (local.get $0)
        (local.get $1)
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $while-in)
      )
     )
    )
    (local.set $3
     (i32.or
      (i32.or
       (i32.or
        (i32.shl
         (local.get $1)
         (i32.const 8)
        )
        (local.get $1)
       )
       (i32.shl
        (local.get $1)
        (i32.const 16)
       )
      )
      (i32.shl
       (local.get $1)
       (i32.const 24)
      )
     )
    )
    (local.set $6
     (i32.add
      (local.tee $5
       (i32.and
        (local.get $4)
        (i32.const -4)
       )
      )
      (i32.const -64)
     )
    )
    (loop $while-in1
     (if
      (i32.le_s
       (local.get $0)
       (local.get $6)
      )
      (block
       (i32.store
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=4
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=8
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=12
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=16
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=20
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=24
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=28
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=32
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=36
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=40
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=44
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=48
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=52
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=56
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=60
        (local.get $0)
        (local.get $3)
       )
       (local.set $0
        (i32.sub
         (local.get $0)
         (i32.const -64)
        )
       )
       (br $while-in1)
      )
     )
    )
    (loop $while-in3
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $5)
      )
      (block
       (i32.store
        (local.get $0)
        (local.get $3)
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (br $while-in3)
      )
     )
    )
   )
  )
  (loop $while-in5
   (if
    (i32.lt_s
     (local.get $0)
     (local.get $4)
    )
    (block
     (i32.store8
      (local.get $0)
      (local.get $1)
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $while-in5)
    )
   )
  )
  (i32.sub
   (local.get $4)
   (local.get $2)
  )
 )
 (func $_sbrk (; 25 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (call $_emscripten_get_heap_size)
  )
  (if
   (i32.or
    (i32.and
     (i32.lt_s
      (local.tee $1
       (i32.add
        (local.get $0)
        (local.tee $2
         (i32.load
          (global.get $DYNAMICTOP_PTR$asm2wasm$import)
         )
        )
       )
      )
      (local.get $2)
     )
     (i32.gt_s
      (local.get $0)
      (i32.const 0)
     )
    )
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
   )
   (block
    (drop
     (call $abortOnCannotGrowMemory
      (local.get $1)
     )
    )
    (call $___setErrNo
     (i32.const 12)
    )
    (return
     (i32.const -1)
    )
   )
  )
  (if
   (i32.gt_s
    (local.get $1)
    (local.get $3)
   )
   (if
    (i32.eqz
     (call $_emscripten_resize_heap
      (local.get $1)
     )
    )
    (block
     (call $___setErrNo
      (i32.const 12)
     )
     (return
      (i32.const -1)
     )
    )
   )
  )
  (i32.store
   (global.get $DYNAMICTOP_PTR$asm2wasm$import)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $dynCall_ii (; 26 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (call_indirect (type $FUNCSIG$ii)
   (local.get $1)
   (i32.and
    (local.get $0)
    (i32.const 1)
   )
  )
 )
 (func $dynCall_iiii (; 27 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call_indirect (type $FUNCSIG$iiii)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 1)
    )
    (i32.const 2)
   )
  )
 )
 (func $b0 (; 28 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (call $abort
   (i32.const 0)
  )
  (i32.const 0)
 )
 (func $b1 (; 29 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $abort
   (i32.const 1)
  )
  (i32.const 0)
 )
 (func $b2 (; 30 ;) (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (call $abort
   (i32.const 2)
  )
  (i64.const 0)
 )
 (func $legalstub$dynCall_jiji (; 31 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (call $setTempRet0
   (i32.wrap_i64
    (i64.shr_u
     (local.tee $5
      (call_indirect (type $FUNCSIG$jiji)
       (local.get $1)
       (i64.or
        (i64.extend_i32_u
         (local.get $2)
        )
        (i64.shl
         (i64.extend_i32_u
          (local.get $3)
         )
         (i64.const 32)
        )
       )
       (local.get $4)
       (i32.add
        (i32.and
         (local.get $0)
         (i32.const 1)
        )
        (i32.const 4)
       )
      )
     )
     (i64.const 32)
    )
   )
  )
  (i32.wrap_i64
   (local.get $5)
  )
 )
)
