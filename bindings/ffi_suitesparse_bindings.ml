(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 * 
 * SuiteSparse - A Suite of Sparse Matrix Software 
 * SuiteSparse Copyright (c) by Timothy A. Davis.
 *)


module Bindings (F : Cstubs.FOREIGN) = struct

  module CS_D = Ffi_suitesparse_bindings_cs_d.Make(F)

  module CS_Z = Ffi_suitesparse_bindings_cs_z.Make(F)
  
  module UMFPACK_D = Ffi_suitesparse_bindings_umfpack_d.Make(F)

  module UMFPACK_Z = Ffi_suitesparse_bindings_umfpack_z.Make(F)

end