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
      (ptr cholmod_sparse @-> ptr cholmod_common @-> returning cholmod_factor)


  let cholmod_l_analyze_p =
    foreign
      "cholmod_l_analyze_p"
      (ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> size_t
      @-> ptr cholmod_common
      @-> returning cholmod_factor)


  let cholmod_l_analyze_p2 =
    foreign
      "cholmod_l_analyze_p2"
      (int
      @-> ptr cholmod_sparse
      @-> ptr int64_t
      @-> ptr int64_t
      @-> size_t
      @-> ptr cholmod_common
      @-> returning cholmod_factor)


  let cholmod_l_factorize =
    foreign
      "cholmod_l_factorize"
      (ptr cholmod_sparse @-> ptr cholmod_factor @-> ptr cholmod_common @-> returning int)
end
