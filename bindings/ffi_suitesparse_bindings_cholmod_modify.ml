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

  let cholmod_l_updown =
    foreign
      "cholmod_l_updown"
      (int
      @-> ptr cholmod_sparse
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_updown_solve =
    foreign
      "cholmod_l_updown_solve"
      (int
      @-> ptr cholmod_sparse
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_updown_mark =
    foreign
      "cholmod_l_updown_mark"
      (int
      @-> ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_updown_mask =
    foreign
      "cholmod_l_updown_mask"
      (int
      @-> ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_updown_mask2 =
    foreign
      "cholmod_l_updown_mask2"
      (int
      @-> ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowadd =
    foreign
      "cholmod_l_rowadd"
      (size_t
      @-> ptr cholmod_sparse
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowadd_solve =
    foreign
      "cholmod_l_rowadd_solve"
      (size_t
      @-> ptr cholmod_sparse
      @-> ptr double
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowadd_mark =
    foreign
      "cholmod_l_rowadd_mark"
      (size_t
      @-> ptr cholmod_sparse
      @-> ptr double
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowdel =
    foreign
      "cholmod_l_rowdel"
      (size_t
      @-> ptr cholmod_sparse
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowdel_solve =
    foreign
      "cholmod_l_rowdel_solve"
      (size_t
      @-> ptr cholmod_sparse
      @-> ptr double
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowdel_mark =
    foreign
      "cholmod_l_rowdel_mark"
      (size_t
      @-> ptr cholmod_sparse
      @-> ptr double
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning int)
end
