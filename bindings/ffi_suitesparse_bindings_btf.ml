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

  (** core functions *)

  let btf_l_maxtrans =
    foreign
      "btf_l_maxtrans"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning int64_t)


  let btf_l_strongcomp =
    foreign
      "btf_l_strongcomp"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning int64_t)


  let btf_l_order =
    foreign
      "btf_l_order"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning int64_t)
end
