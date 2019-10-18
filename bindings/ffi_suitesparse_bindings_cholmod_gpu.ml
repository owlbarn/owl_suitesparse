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

  type cholmod_gpu_pointers

  let cholmod_gpu_pointers : cholmod_gpu_pointers structure typ =
    structure "cholmod_gpu_pointers"


  (** core functions *)

  let cholmod_l_gpu_memorysize =
    foreign
      "cholmod_l_gpu_memorysize"
      (ptr size_t @-> ptr size_t @-> ptr cholmod_common @-> returning int)


  let cholmod_l_gpu_probe =
    foreign "cholmod_l_gpu_probe" (ptr cholmod_common @-> returning int)


  let cholmod_l_gpu_deallocate =
    foreign "cholmod_l_gpu_deallocate" (ptr cholmod_common @-> returning int)


  let cholmod_l_gpu_end =
    foreign "cholmod_l_gpu_end" (ptr cholmod_common @-> returning int)


  let cholmod_l_gpu_allocate =
    foreign "cholmod_l_gpu_allocate" (ptr cholmod_common @-> returning int)
end
