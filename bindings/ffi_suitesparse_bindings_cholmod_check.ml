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

  let cholmod_l_check_common =
    foreign "cholmod_l_check_common" (ptr cholmod_common @-> returning int)


  let cholmod_l_print_common =
    foreign "cholmod_l_print_common" (ptr char @-> ptr cholmod_common @-> returning int)


  let cholmod_l_gpu_stats =
    foreign "cholmod_l_gpu_stats" (ptr cholmod_common @-> returning int)


  let cholmod_l_check_sparse =
    foreign
      "cholmod_l_check_sparse"
      (ptr cholmod_sparse @-> ptr cholmod_common @-> returning int)


  let cholmod_l_print_sparse =
    foreign
      "cholmod_l_print_sparse"
      (ptr cholmod_sparse @-> ptr char @-> ptr cholmod_common @-> returning int)


  let cholmod_l_check_dense =
    foreign
      "cholmod_l_check_dense"
      (ptr cholmod_dense @-> ptr cholmod_common @-> returning int)


  let cholmod_l_print_dense =
    foreign
      "cholmod_l_print_dense"
      (ptr cholmod_dense @-> ptr char @-> ptr cholmod_common @-> returning int)


  let cholmod_l_check_factor =
    foreign
      "cholmod_l_check_factor"
      (ptr cholmod_factor @-> ptr cholmod_common @-> returning int)


  let cholmod_l_print_factor =
    foreign
      "cholmod_l_print_factor"
      (ptr cholmod_factor @-> ptr char @-> ptr cholmod_common @-> returning int)


  let cholmod_l_check_triplet =
    foreign
      "cholmod_l_check_triplet"
      (ptr cholmod_triplet @-> ptr cholmod_common @-> returning int)


  let cholmod_l_print_triplet =
    foreign
      "cholmod_l_print_triplet"
      (ptr cholmod_triplet @-> ptr char @-> ptr cholmod_common @-> returning int)


  let cholmod_l_check_subset =
    foreign
      "cholmod_l_check_subset"
      (ptr int64_t @-> int64_t @-> size_t @-> ptr cholmod_common @-> returning int)


  let cholmod_l_print_subset =
    foreign
      "cholmod_l_print_subset"
      (ptr int64_t
      @-> int64_t
      @-> size_t
      @-> ptr char
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_check_perm =
    foreign
      "cholmod_l_check_perm"
      (ptr int64_t @-> size_t @-> size_t @-> ptr cholmod_common @-> returning int)


  let cholmod_l_print_perm =
    foreign
      "cholmod_l_print_perm"
      (ptr int64_t
      @-> size_t
      @-> size_t
      @-> ptr char
      @-> ptr cholmod_common
      @-> returning int)


  let cholmod_l_check_parent =
    foreign
      "cholmod_l_check_parent"
      (ptr int64_t @-> size_t @-> ptr cholmod_common @-> returning int)


  let cholmod_l_print_parent =
    foreign
      "cholmod_l_print_parent"
      (ptr int64_t @-> size_t @-> ptr char @-> ptr cholmod_common @-> returning int)


  let cholmod_l_read_sparse =
    foreign
      "cholmod_l_read_sparse"
      (ptr void @-> ptr cholmod_common @-> returning (ptr cholmod_sparse))


  let cholmod_read_triplet =
    foreign
      "cholmod_read_triplet"
      (ptr void @-> ptr cholmod_common @-> returning (ptr cholmod_triplet))


  let cholmod_l_read_dense =
    foreign
      "cholmod_l_read_dense"
      (ptr void @-> ptr cholmod_common @-> returning (ptr cholmod_dense))


  let cholmod_l_read_matrix =
    foreign
      "cholmod_l_read_matrix"
      (ptr void @-> int @-> ptr int @-> ptr cholmod_common @-> returning (ptr void))


  let cholmod_l_write_sparse =
    foreign
      "cholmod_l_write_sparse"
      (ptr void
      @-> ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr char
      @-> ptr cholmod_common
      @-> returning int)
end
