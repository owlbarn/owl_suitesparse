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

  let camd_l_order =
    foreign
      "camd_l_order"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> returning int64_t)


  let camd_l2 =
    foreign
      "camd_l2"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning void)


  let camd_l_valid =
    foreign
      "camd_l_valid"
      (int64_t @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)


  let camd_l_cvalid =
    foreign "camd_l_cvalid" (int64_t @-> ptr int64_t @-> returning int64_t)


  let camd_l_defaults = foreign "camd_l_defaults" (ptr double @-> returning void)
  let camd_l_control = foreign "camd_l_control" (ptr double @-> returning void)
  let camd_l_info = foreign "camd_l_info" (ptr double @-> returning void)
end
