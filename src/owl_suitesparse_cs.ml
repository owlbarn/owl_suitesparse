

let cs_di_spfree x_ptr =
  Owl_suitesparse_ffi.CS.cs_di_spfree x_ptr
  |> ignore


let cs_di_spalloc ~m ~n ~nzmax ~values ~t = 
  let x_ptr = Owl_suitesparse_ffi.CS.cs_di_spalloc m n nzmax values t in
  Gc.finalise cs_di_spfree x_ptr;
  x_ptr


let cs_di_print x_ptr belief = Owl_suitesparse_ffi.CS.cs_di_print x_ptr belief