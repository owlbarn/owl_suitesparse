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

  let cholmod_l_analyze =
    foreign
      "cholmod_l_analyze"
      (ptr cholmod_sparse @-> ptr cholmod_common @-> returning (ptr cholmod_factor))


  let cholmod_l_analyze_p =
    foreign
      "cholmod_l_analyze_p"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> size_t
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_factor))


  let cholmod_l_analyze_p2 =
    foreign
      "cholmod_l_analyze_p2"
      (int
      @-> ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> size_t
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_factor))


  let cholmod_l_factorize =
    foreign
      "cholmod_l_factorize"
      (ptr cholmod_sparse @-> ptr cholmod_factor @-> ptr cholmod_common @-> returning int)


  let cholmod_l_factorize_p =
    foreign
      "cholmod_l_factorize_p"
      (ptr cholmod_sparse
      @-> ptr double
      @-> ptr int64_t
      @-> size_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_solve =
    foreign
      "cholmod_l_solve"
      (int
      @-> ptr cholmod_factor
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_dense))


  let cholmod_l_solve2 =
    foreign
      "cholmod_l_solve2"
      (int
      @-> ptr cholmod_factor
      @-> ptr cholmod_dense
      @-> ptr cholmod_sparse
      @-> ptr (ptr cholmod_dense)
      @-> ptr (ptr cholmod_sparse)
      @-> ptr (ptr cholmod_dense)
      @-> ptr (ptr cholmod_dense)
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_spsolve =
    foreign
      "cholmod_l_spsolve"
      (int
      @-> ptr cholmod_factor
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_etree =
    foreign
      "cholmod_l_etree"
      (ptr cholmod_sparse @-> ptr int64_t @-> ptr cholmod_common @-> returning int)


  let cholmod_l_rowcolcounts =
    foreign
      "cholmod_l_rowcolcounts"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_analyze_ordering =
    foreign
      "cholmod_l_analyze_ordering"
      (ptr cholmod_sparse
      @-> int
      @-> ptr int64_t
      @-> ptr int64_t
      @-> size_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_amd =
    foreign
      "cholmod_l_amd"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_colamd =
    foreign
      "cholmod_l_colamd"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> int
      @-> ptr int64_t
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowfac =
    foreign
      "cholmod_l_rowfac"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr double
      @-> size_t
      @-> size_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowfac_mask =
    foreign
      "cholmod_l_rowfac_mask"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> double
      @-> size_t
      @-> size_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_rowfac_mask2 =
    foreign
      "cholmod_l_rowfac_mask2"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> double
      @-> size_t
      @-> size_t
      @-> ptr int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)
end
