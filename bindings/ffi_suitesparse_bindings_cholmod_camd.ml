(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 * 
 * SuiteSparse - A Suite of Sparse Matrix Software 
 * SuiteSparse Copyright (c) by Timothy A. Davis.
 *)

open Ctypes

module Make (F : Cstubs.FOREIGN) = struct
  open F

  (** type definitions *)

  include Ffi_suitesparse_bindings_cholmod_type.Make (F)

  (** core functions *)

  let cholmod_l_ccolamd =
    foreign
      "cholmod_l_ccolamd"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_csymamd =
    foreign
      "cholmod_l_csymamd"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_camd =
    foreign
      "cholmod_l_camd"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)
end
