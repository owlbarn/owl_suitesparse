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

  type suiteSparseQR_C_factorization

  let suiteSparseQR_C_factorization : suiteSparseQR_C_factorization structure typ =
    structure "SuiteSparseQR_C_factorization_struct"


  (** core functions *)

  let suiteSparseQR_c =
    foreign
      "SuiteSparseQR_C"
      (int
      @-> double
      @-> int64_t
      @-> int
      @-> ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr cholmod_dense
      @-> ptr (ptr cholmod_sparse)
      @-> ptr (ptr cholmod_dense)
      @-> ptr (ptr cholmod_sparse)
      @-> ptr (ptr int64_t)
      @-> ptr (ptr cholmod_sparse)
      @-> ptr (ptr int64_t)
      @-> ptr (ptr cholmod_dense)
      @-> ptr cholmod_common
      @-> returning int64_t)


  let suiteSparseQR_C_QR =
    foreign
      "SuiteSparseQR_C_QR"
      (int
      @-> double
      @-> int64_t
      @-> ptr cholmod_sparse
      @-> ptr (ptr cholmod_sparse)
      @-> ptr (ptr cholmod_sparse)
      @-> ptr (ptr int64_t)
      @-> ptr cholmod_common
      @-> returning int64_t)


  let suiteSparseQR_C_backslash =
    foreign
      "SuiteSparseQR_C_backslash"
      (int
      @-> double
      @-> ptr cholmod_sparse
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_dense))


  let suiteSparseQR_C_backslash_default =
    foreign
      "SuiteSparseQR_C_backslash_default"
      (ptr cholmod_sparse
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_dense))


  let suiteSparseQR_C_backslash_sparse =
    foreign
      "SuiteSparseQR_C_backslash_sparse"
      (int
      @-> double
      @-> ptr cholmod_sparse
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_sparse))


  let suiteSparseQR_C_factorize =
    foreign
      "SuiteSparseQR_C_factorize"
      (int
      @-> double
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning (ptr suiteSparseQR_C_factorization))


  let suiteSparseQR_C_symbolic =
    foreign
      "SuiteSparseQR_C_symbolic"
      (int
      @-> int
      @-> ptr cholmod_sparse
      @-> ptr cholmod_common
      @-> returning (ptr suiteSparseQR_C_factorization))


  let suiteSparseQR_C_numeric =
    foreign
      "SuiteSparseQR_C_numeric"
      (double
      @-> ptr cholmod_sparse
      @-> ptr suiteSparseQR_C_factorization
      @-> ptr cholmod_common
      @-> returning int)


  let siteSparseQR_C_free =
    foreign
      "SuiteSparseQR_C_free"
      (ptr (ptr suiteSparseQR_C_factorization) @-> ptr cholmod_common @-> returning int)


  let suiteSparseQR_C_solve =
    foreign
      "SuiteSparseQR_C_solve"
      (int
      @-> ptr suiteSparseQR_C_factorization
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_dense))


  let suiteSparseQR_C_qmult =
    foreign
      "SuiteSparseQR_C_qmult"
      (int
      @-> ptr suiteSparseQR_C_factorization
      @-> ptr cholmod_dense
      @-> ptr cholmod_common
      @-> returning (ptr cholmod_dense))
end
