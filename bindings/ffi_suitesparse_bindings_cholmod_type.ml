(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 * 
 * SuiteSparse - A Suite of Sparse Matrix Software 
 * SuiteSparse Copyright (c) by Timothy A. Davis.
 *)

open Ctypes

module Make (F : Cstubs.FOREIGN) = struct
  type cholmod_common

  let cholmod_common : cholmod_common structure typ = structure "cholmod_common_struct"

  type cholmod_sparse

  let cholmod_sparse : cholmod_sparse structure typ = structure "cholmod_sparse_struct"

  type cholmod_dense

  let cholmod_dense : cholmod_dense structure typ = structure "cholmod_dense_struct"

  type cholmod_factor

  let cholmod_factor : cholmod_factor structure typ = structure "cholmod_factor_struct"

  type cholmod_triplet

  let cholmod_triplet : cholmod_triplet structure typ =
    structure "cholmod_triplet_struct"


  type descendant_score

  let descendant_score : descendant_score structure typ =
    structure "cholmod_descendant_score_t"
end
