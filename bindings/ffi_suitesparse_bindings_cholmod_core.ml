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
end
