(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 * 
 * SuiteSparse - A Suite of Sparse Matrix Software 
 * SuiteSparse Copyright (c) by Timothy A. Davis.
 *)

module Bindings (F : Cstubs.FOREIGN) = struct
  (** BTF *)

  module BTF = Ffi_suitesparse_bindings_btf.Make (F)

  (** CAMD *)

  module CAMD = Ffi_suitesparse_bindings_camd.Make (F)

  (** cxsparse *)

  module CS_D = Ffi_suitesparse_bindings_cs_d.Make (F)
  module CS_Z = Ffi_suitesparse_bindings_cs_z.Make (F)

  (** umfpack *)

  module UMFPACK_D = Ffi_suitesparse_bindings_umfpack_d.Make (F)
  module UMFPACK_Z = Ffi_suitesparse_bindings_umfpack_z.Make (F)
  module UMFPACK_AMD = Ffi_suitesparse_bindings_umfpack_amd.Make (F)
  module UMFPACK_UTILS = Ffi_suitesparse_bindings_umfpack_utils.Make (F)

  (** cholmod *)

  module CHOLMOD_CAMD = Ffi_suitesparse_bindings_cholmod_camd.Make (F)
  module CHOLMOD_CHECK = Ffi_suitesparse_bindings_cholmod_check.Make (F)
  module CHOLMOD_CHOLESKY = Ffi_suitesparse_bindings_cholmod_cholesky.Make (F)
  module CHOLMOD_CORE = Ffi_suitesparse_bindings_cholmod_core.Make (F)
  module CHOLMOD_MATRIXOPS = Ffi_suitesparse_bindings_cholmod_matrixops.Make (F)
  module CHOLMOD_MODIFY = Ffi_suitesparse_bindings_cholmod_modify.Make (F)
  module CHOLMOD_PARTITION = Ffi_suitesparse_bindings_cholmod_partition.Make (F)
  module CHOLMOD_SUPERNODAL = Ffi_suitesparse_bindings_cholmod_supernodal.Make (F)

  (** SuiteSparseQR *)

  module QR = Ffi_suitesparse_bindings_qr.Make (F)
end
