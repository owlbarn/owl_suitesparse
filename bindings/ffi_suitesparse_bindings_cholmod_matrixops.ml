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

  let cholmod_l_drop =
    foreign
      "cholmod_l_drop"
      (double @-> ptr cholmod_sparse @-> ptr cholmod_common @-> returning int)


  let cholmod_l_norm_dense =
    foreign
      "cholmod_l_norm_dense"
      (ptr cholmod_dense @-> int @-> ptr cholmod_common @-> returning double)


  let cholmod_l_norm_sparse =
    foreign
      "cholmod_l_norm_sparse"
      (ptr cholmod_sparse @-> int @-> ptr cholmod_common @-> returning double)


  let cholmod_l_horzcat =
    foreign
      "cholmod_l_horzcat"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_scale =
    foreign
      "cholmod_l_scale"
      (ptr cholmod_dense
      @-> int
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_sdmult =
    foreign
      "cholmod_l_sdmult"
      (ptr cholmod_sparse
      @-> int
      @-> ptr double
      @-> ptr double
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_ssmult =
    foreign
      "cholmod_l_ssmult"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> int
      @-> int
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_submatrix =
    foreign
      "cholmod_l_submatrix"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> int64_t
      @-> int
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_vertcat =
    foreign
      "cholmod_l_vertcat"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_symmetry =
    foreign
      "cholmod_l_symmetry"
      (ptr cholmod_sparse
      @-> int
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)
end
