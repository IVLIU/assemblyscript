(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "fib" (func $recursive/fib))
 (func $recursive/fib (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 1
  i32.le_s
  if
   i32.const 1
   return
  end
  get_local $0
  i32.const 1
  i32.sub
  call $recursive/fib
  set_local $1
  get_local $0
  i32.const 2
  i32.sub
  call $recursive/fib
  set_local $0
  get_local $1
  get_local $0
  i32.add
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
