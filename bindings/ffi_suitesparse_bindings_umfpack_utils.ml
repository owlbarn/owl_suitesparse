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

  (** for both double and complex number types. *)

  let umfpack_timer = foreign "umfpack_timer" (void @-> returning double)
  let umfpack_tic = foreign "umfpack_tic" (ptr double @-> returning void)
  let umfpack_toc = foreign "umfpack_toc" (ptr double @-> returning void)
end
