

let cs_dl_spfree x =
  Owl_suitesparse_ffi.CS.cs_dl_spfree x
  |> ignore


let cs_dl_spalloc ~m ~n ~nzmax ~values ~t =
  let m = Int64.of_int m in
  let n = Int64.of_int n in
  let nzmax = Int64.of_int nzmax in
  let values = Int64.of_int values in
  let t = Int64.of_int t in
  let x = Owl_suitesparse_ffi.CS.cs_dl_spalloc m n nzmax values t in
  Gc.finalise cs_dl_spfree x;
  x


let cs_dl_entry ~x ~i ~j ~v = 
  let i = Int64.of_int i in
  let j = Int64.of_int j in
  let result = Owl_suitesparse_ffi.CS.cs_dl_entry x i j v in
  let result = Int64.to_int(result) in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_entry"


let cs_dl_print ~x ~belief = 
  let belief = Int64.of_int belief in
  let result = Owl_suitesparse_ffi.CS.cs_dl_print x belief in
  let result = Int64.to_int(result) in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_print"


let cs_dl_compress x =
  let y = Owl_suitesparse_ffi.CS.cs_dl_compress x in
  Gc.finalise cs_dl_spfree y;
  y


let cs_dl_add ~x ~y ~alpha ~beta =
  let z = Owl_suitesparse_ffi.CS.cs_dl_add x y alpha beta in
  Gc.finalise cs_dl_spfree z;
  z


let cs_dl_multiply ~x ~y =
  let z = Owl_suitesparse_ffi.CS.cs_dl_multiply x y in
  Gc.finalise cs_dl_spfree z;
  z


let cs_dl_dupl x = 
  let result = Owl_suitesparse_ffi.CS.cs_dl_dupl x in
  let result = Int64.to_int result in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_dupl"


let cs_dl_transpose ~x ~values =
  let y = Owl_suitesparse_ffi.CS.cs_dl_transpose x values in
  Gc.finalise cs_dl_spfree y;
  y


let cs_dl_norm x =
  let result = Owl_suitesparse_ffi.CS.cs_dl_norm x in
  result


let cs_dl_lusol ~order ~x ~tol =
  let b_ptr = Ctypes.(allocate double 0.) in
  let result = Owl_suitesparse_ffi.CS.cs_dl_lusol order x b_ptr tol in
  let result = Int64.to_int(result) in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_lusol";
  Ctypes.(!@b_ptr)


let cs_dl_qrsol ~order ~x =
  let b_ptr = Ctypes.(allocate double 0.) in
  let result = Owl_suitesparse_ffi.CS.cs_dl_qrsol order x b_ptr in
  let result = Int64.to_int(result) in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_qrsol";
  Ctypes.(!@b_ptr)