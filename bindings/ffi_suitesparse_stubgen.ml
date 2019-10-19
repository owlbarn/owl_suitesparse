(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 * 
 * SuiteSparse - A Suite of Sparse Matrix Software 
 * SuiteSparse Copyright (c) by Timothy A. Davis.
 *)

let _ =
  let prefix = "owl_stub" in
  let generate_ml, generate_c = ref false, ref false in
  Arg.(
    parse [ "-ml", Set generate_ml, "Generate ML"; "-c", Set generate_c, "Generate C" ])
    (fun _ -> failwith "unexpected anonymous argument")
    "stubgen [-ml|-c]";
  match !generate_ml, !generate_c with
  | false, false | true, true -> failwith "Exactly one of -ml and -c must be specified"
  | true, false ->
    Cstubs.write_ml
      Format.std_formatter
      ~prefix
      (module Ffi_suitesparse_bindings.Bindings)
  | false, true ->
    print_endline "#include <stdint.h>";
    print_endline "#include \"btf.h\"";
    print_endline "#include \"camd.h\"";
    print_endline "#include \"ccolamd.h\"";
    print_endline "#include \"cs.h\"";
    print_endline "#include \"cholmod.h\"";
    print_endline "#include \"cholmod_gpu.h\"";
    print_endline "#include \"umfpack.h\"";
    print_endline "#include \"SuiteSparseQR_C.h\"";
    Cstubs.write_c
      Format.std_formatter
      ~prefix
      (module Ffi_suitesparse_bindings.Bindings)
