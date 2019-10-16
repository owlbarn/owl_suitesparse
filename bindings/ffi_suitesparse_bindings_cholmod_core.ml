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

  type cholmod_common

  let cholmod_common : cholmod_common structure typ = structure "cholmod_common_struct"

  type cholmod_sparse

  let cholmod_sparse : cholmod_sparse structure typ = structure "cholmod_sparse_struct"

  type cholmod_dense

  let cholmod_dense : cholmod_dense structure typ = structure "cholmod_dense_struct"

  type cholmod_factor

  let cholmod_factor : cholmod_factor structure typ = structure "cholmod_factor_struct"

  type descendant_score

  let descendant_score : descendant_score structure typ =
    structure "cholmod_descendant_score_t"


  (** core functions *)

  let cholmod_l_start = foreign "cholmod_l_start" (ptr cholmod_common @-> returning int)
  let cholmod_l_finish = foreign "cholmod_l_finish" (ptr cholmod_common @-> returning int)

  let cholmod_l_defaults =
    foreign "cholmod_l_defaults" (ptr cholmod_common @-> returning int)


  let cholmod_l_maxrank =
    foreign "cholmod_l_maxrank" (size_t @-> ptr cholmod_common @-> returning int)


  let cholmod_l_allocate_work =
    foreign
      "cholmod_l_allocate_work"
      (size_t @-> size_t @-> size_t @-> ptr cholmod_common @-> returning int)


  let cholmod_l_free_work =
    foreign "cholmod_l_free_work" (ptr cholmod_common @-> returning int)


  let cholmod_l_clear_flag =
    foreign "cholmod_l_clear_flag" (ptr cholmod_common @-> returning int64_t)


  let cholmod_l_error =
    foreign
      "cholmod_l_error"
      (int @-> ptr char @-> int @-> ptr char @-> ptr cholmod_common @-> returning int)


  let cholmod_l_dbound =
    foreign "cholmod_l_dbound" (double @-> ptr cholmod_common @-> returning double)


  let cholmod_l_hypot = foreign "cholmod_l_hypot" (double @-> double @-> returning double)

  let cholmod_l_divcomplex =
    foreign
      "cholmod_l_divcomplex"
      (double
      @-> double
      @-> double
      @-> double
      @-> ptr double
      @-> ptr double
      @-> returning int)


  let cholmod_l_score_comp =
    foreign
      "cholmod_l_score_comp"
      (ptr descendant_score @-> ptr descendant_score @-> returning int)


  let cholmod_l_allocate_sparse =
    foreign
      "cholmod_l_allocate_sparse"
      (size_t
      @-> size_t
      @-> size_t
      @-> int
      @-> int
      @-> int
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_free_sparse =
    foreign
      "cholmod_l_free_sparse"
      (ptr (ptr cholmod_sparse) @-> ptr cholmod_common @-> returning int)


  let cholmod_l_reallocate_sparse =
    foreign
      "cholmod_l_reallocate_sparse"
      (size_t @-> ptr cholmod_sparse @-> ptr cholmod_common @-> returning int)


  let cholmod_l_nnz =
    foreign
      "cholmod_l_nnz"
      (ptr cholmod_sparse @-> ptr cholmod_common @-> returning int64_t)


  let cholmod_l_spzeros =
    foreign
      "cholmod_l_spzeros"
      (size_t
      @-> size_t
      @-> size_t
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_transpose =
    foreign
      "cholmod_l_transpose"
      (ptr cholmod_sparse
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_transpose_unsym =
    foreign
      "cholmod_l_transpose_unsym"
      (ptr cholmod_sparse
      @-> int
      @-> ptr int64_t
      @-> ptr int64_t
      @-> size_t
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_transpose_sym =
    foreign
      "cholmod_l_transpose_sym"
      (ptr cholmod_sparse
      @-> int
      @-> ptr int64_t
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_ptranspose =
    foreign
      "cholmod_l_ptranspose"
      (ptr cholmod_sparse
      @-> int
      @-> ptr int64_t
      @-> ptr int64_t
      @-> size_t
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_sort =
    foreign "cholmod_l_sort" (ptr cholmod_sparse @-> ptr cholmod_common @-> returning int)


  let cholmod_l_band =
    foreign
      "cholmod_l_band"
      (ptr cholmod_sparse
      @-> int64_t
      @-> int64_t
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_band_inplace =
    foreign
      "cholmod_l_band_inplace"
      (int64_t
      @-> int64_t
      @-> int
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_aat =
    foreign
      "cholmod_l_aat"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> size_t
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_copy_sparse =
    foreign
      "cholmod_l_copy_sparse"
      (ptr cholmod_sparse @-> ptr cholmod_common @-> returning (ptr cholmod_sparse))


  let cholmod_l_copy =
    foreign
      "cholmod_l_copy"
      (ptr cholmod_sparse
      @-> int
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_add =
    foreign
      "cholmod_l_add"
      (ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr double
      @-> ptr double
      @-> int
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let cholmod_l_sparse_xtype =
    foreign
      "cholmod_l_sparse_xtype"
      (int @-> ptr cholmod_sparse @-> ptr cholmod_common @-> returning int)


  let cholmod_l_allocate_factor =
    foreign
      "cholmod_l_allocate_factor"
      (size_t @-> ptr cholmod_common @-> returning (ptr cholmod_factor))


  let cholmod_l_free_factor =
    foreign
      "cholmod_l_free_factor"
      (ptr (ptr cholmod_factor) @-> ptr cholmod_common @-> returning int)


  let cholmod_l_reallocate_factor =
    foreign
      "cholmod_l_reallocate_factor"
      (size_t @-> ptr cholmod_factor @-> ptr cholmod_common @-> returning int)


  let cholmod_l_change_factor =
    foreign
      "cholmod_l_change_factor"
      (int
      @-> int
      @-> int
      @-> int
      @-> int
      @-> ptr cholmod_factor
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_pack_factor =
    foreign
      "cholmod_l_pack_factor"
      (ptr cholmod_factor @-> ptr cholmod_common @-> returning int)


  let cholmod_l_reallocate_column =
    foreign
      "cholmod_l_reallocate_column"
      (size_t @-> size_t @-> ptr cholmod_factor @-> ptr cholmod_common @-> returning int)


  let cholmod_l_factor_to_sparse =
    foreign
      "cholmod_l_factor_to_sparse"
      (ptr cholmod_factor @-> ptr cholmod_common @-> returning (ptr cholmod_sparse))


  let cholmod_l_copy_factor =
    foreign
      "cholmod_l_copy_factor"
      (ptr cholmod_factor @-> ptr cholmod_common @-> returning (ptr cholmod_factor))


  let cholmod_l_factor_xtype =
    foreign
      "cholmod_l_factor_xtype"
      (int @-> ptr cholmod_factor @-> ptr cholmod_common @-> returning int)


  let cholmod_l_allocate_dense =
    foreign
      "cholmod_l_allocate_dense"
      (size_t
      @-> size_t
      @-> size_t
      @-> int
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_dense))


  let cholmod_l_zeros =
    foreign
      "cholmod_l_zeros"
      (size_t @-> size_t @-> int @-> ptr cholmod_common @-> returning (ptr cholmod_dense))


  let cholmod_l_ones =
    foreign
      "cholmod_l_ones"
      (size_t @-> size_t @-> int @-> ptr cholmod_common @-> returning (ptr cholmod_dense))


  let cholmod_l_eye =
    foreign
      "cholmod_l_eye"
      (size_t @-> size_t @-> int @-> ptr cholmod_common @-> returning (ptr cholmod_dense))


  let cholmod_l_free_dense =
    foreign
      "cholmod_l_free_dense"
      (ptr (ptr cholmod_dense) @-> ptr cholmod_common @-> returning int)
end
