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

  let cholmod_l_nested_dissection =
    foreign
      "cholmod_l_nested_dissection"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int64_t)


  let cholmod_l_metis =
    foreign
      "cholmod_l_metis"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> int
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_bisect =
    foreign
      "cholmod_l_bisect"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> int
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int64_t)


  let cholmod_l_metis_bisector =
    foreign
      "cholmod_l_metis_bisector"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int64_t)


  let cholmod_l_collapse_septree =
    foreign
      "cholmod_l_collapse_septree"
      (size_t
      @-> size_t
      @-> double
      @-> size_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int64_t)
end
