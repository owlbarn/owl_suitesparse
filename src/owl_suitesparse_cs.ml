

let cs_dl_spfree a =
  Owl_suitesparse_ffi.CS_D.cs_dl_spfree a
  |> ignore


let cs_dl_spalloc ~m ~n ~nzmax ~values ~t =
  let m = Int64.of_int m in
  let n = Int64.of_int n in
  let nzmax = Int64.of_int nzmax in
  let values = Int64.of_int values in
  let t = Int64.of_int t in
  let a = Owl_suitesparse_ffi.CS_D.cs_dl_spalloc m n nzmax values t in
  Gc.finalise cs_dl_spfree a;
  a


let cs_dl_entry ~a ~i ~j ~v = 
  let i = Int64.of_int i in
  let j = Int64.of_int j in
  let result = Owl_suitesparse_ffi.CS_D.cs_dl_entry a i j v in
  let result = Int64.to_int result in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_entry"


let cs_dl_print ~a ~belief = 
  let belief = Int64.of_int belief in
  let result = Owl_suitesparse_ffi.CS_D.cs_dl_print a belief in
  let result = Int64.to_int result in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_print"


let cs_dl_compress a =
  let b = Owl_suitesparse_ffi.CS_D.cs_dl_compress a in
  Gc.finalise cs_dl_spfree b;
  b


let cs_dl_add ~a ~b ~alpha ~beta =
  let c = Owl_suitesparse_ffi.CS_D.cs_dl_add a b alpha beta in
  Gc.finalise cs_dl_spfree c;
  c


let cs_dl_multiply ~a ~b =
  let c = Owl_suitesparse_ffi.CS_D.cs_dl_multiply a b in
  Gc.finalise cs_dl_spfree c;
  c


let cs_dl_dupl a = 
  let result = Owl_suitesparse_ffi.CS_D.cs_dl_dupl a in
  let result = Int64.to_int result in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_dupl"


let cs_dl_transpose ~a ~values =
  let b = Owl_suitesparse_ffi.CS_D.cs_dl_transpose a values in
  Gc.finalise cs_dl_spfree b;
  b


let cs_dl_norm a =
  let result = Owl_suitesparse_ffi.CS_D.cs_dl_norm a in
  result


let cs_dl_lusol ~order ~a ~tol =
  let b_ptr = Ctypes.(allocate double 0.) in
  let result = Owl_suitesparse_ffi.CS_D.cs_dl_lusol order a b_ptr tol in
  let result = Int64.to_int result in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_lusol";
  Ctypes.(!@b_ptr)


let cs_dl_qrsol ~order ~a =
  let b_ptr = Ctypes.(allocate double 0.) in
  let result = Owl_suitesparse_ffi.CS_D.cs_dl_qrsol order a b_ptr in
  let result = Int64.to_int result in
  Owl_suitesparse_exception.fail_on_nonzero result "cs_dl_qrsol";
  Ctypes.(!@b_ptr)

(*
let cs_dl_gaxpy ~a ~b =
  let c = Owl_suitesparse_ffi.CS_D.cs_dl_multiply a b in
  Gc.finalise cs_dl_spfree c;
  c
*)