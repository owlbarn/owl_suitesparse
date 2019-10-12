



let cs_di_spfree x =
  Owl_suitesparse_ffi.CS.cs_di_spfree x
  |> ignore


let cs_di_spalloc ~m ~n ~nzmax ~values ~t = 
  let x = Owl_suitesparse_ffi.CS.cs_di_spalloc m n nzmax values t in
  Gc.finalise cs_di_spfree x;
  x


let cs_di_entry ~x ~i ~j ~v = 
  let _result = Owl_suitesparse_ffi.CS.cs_di_entry x i j v in
  ()


let cs_di_print ~x ~belief = Owl_suitesparse_ffi.CS.cs_di_print x belief