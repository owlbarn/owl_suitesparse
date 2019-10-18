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

  let cholmod_l_super_symbolic =
    foreign
      "cholmod_l_super_symbolic"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_super_symbolic2 =
    foreign
      "cholmod_l_super_symbolic2"
      (int
      @-> ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_super_numeric =
    foreign
      "cholmod_l_super_numeric"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr double
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_super_lsolve =
    foreign
      "cholmod_l_super_lsolve"
      (ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_super_ltsolve =
    foreign
      "cholmod_l_super_ltsolve"
      (ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)
end
