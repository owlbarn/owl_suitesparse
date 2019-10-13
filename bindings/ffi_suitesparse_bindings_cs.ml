open Ctypes


module Make (F : Cstubs.FOREIGN) = struct

  open F

    (** type definition *)


    type cs_dl
    let cs_dl : cs_dl structure typ = structure "cs_dl_sparse"

    type cs_dls
    let cs_dls : cs_dl structure typ = structure "cs_dl_symbolic"

    type cs_dln
    let cs_dln : cs_dl structure typ = structure "cs_dl_numeric"

    type cs_dld
    let cs_dld : cs_dl structure typ = structure "cs_dl_dmperm_results"
  

    (** core functions *)

    let cs_dl_add = foreign "cs_dl_add" (ptr cs_dl @-> ptr cs_dl @-> double @-> double @-> returning (ptr cs_dl))

    let cs_dl_cholsol = foreign "cs_dl_cholsol" (int64_t @-> ptr cs_dl @-> ptr double @-> returning int64_t)

    let cs_dl_dupl = foreign "cs_dl_dupl" (ptr cs_dl @-> returning int64_t)

    let cs_dl_entry = foreign "cs_dl_entry" (ptr cs_dl @-> int64_t @-> int64_t @-> double @-> returning int64_t)

    let cs_dl_lusol = foreign "cs_dl_lusol" (int64_t @-> ptr cs_dl @-> ptr double @-> double @-> returning int64_t)

    let cs_dl_gaxpy = foreign "cs_dl_gaxpy" (ptr cs_dl @-> ptr double @-> ptr double @-> returning int64_t)

    let cs_dl_multiply = foreign "cs_dl_multiply" (ptr cs_dl @-> ptr cs_dl @-> returning (ptr cs_dl))

    let cs_dl_qrsol = foreign "cs_dl_qrsol" (int64_t @-> ptr cs_dl @-> ptr double @-> returning int64_t)

    let cs_dl_transpose = foreign "cs_dl_transpose" (ptr cs_dl @-> int64_t @-> returning (ptr cs_dl))

    let cs_dl_compress = foreign "cs_dl_compress" (ptr cs_dl @-> returning (ptr cs_dl))

    let cs_dl_norm = foreign "cs_dl_norm" (ptr cs_dl @-> returning double)

    let cs_dl_print = foreign "cs_dl_print" (ptr cs_dl @-> int64_t @-> returning int64_t)

    (* let cs_dl_load = foreign "cs_dl_load" (ptr file @-> returning (ptr cs_dl)) *)

    let cs_dl_amd = foreign "cs_dl_amd" (int64_t @-> ptr cs_dl @-> returning (ptr int64_t))

    let cs_dl_chol = foreign "cs_dl_chol" (ptr cs_dl @-> ptr cs_dls @-> returning (ptr cs_dln))

    let cs_dl_dmperm = foreign "cs_dl_dmperm" (ptr cs_dl @-> int64_t @-> returning (ptr cs_dld))

    let cs_dl_droptol = foreign "cs_dl_droptol" (ptr cs_dl @-> double @-> returning int64_t)

    let cs_dl_dropzeros = foreign "cs_dl_dropzeros" (ptr cs_dl @-> returning int64_t)

    let cs_dl_happly = foreign "cs_dl_happly" (ptr cs_dl @-> int64_t @-> double @-> ptr double @-> returning int64_t)

    let cs_dl_ipvec = foreign "cs_dl_ipvec" (ptr int64_t @-> ptr double @-> ptr double @-> int64_t @-> returning int64_t)

    let cs_dl_lsolve = foreign "cs_dl_lsolve" (ptr cs_dl @-> ptr double @-> returning int64_t)

    let cs_dl_ltsolve = foreign "cs_dl_ltsolve" (ptr cs_dl @-> ptr double @-> returning int64_t)

    let cs_dl_lu = foreign "cs_dl_lu" (ptr cs_dl @-> ptr cs_dls @-> double @-> returning (ptr cs_dln))

    let cs_dl_permute = foreign "cs_dl_permute" (ptr cs_dl @-> ptr int64_t @-> ptr int64_t @-> int64_t @-> returning (ptr cs_dl))

    let cs_dl_pinv = foreign "cs_dl_pinv" (ptr int64_t @-> int64_t @-> returning (ptr int64_t))

    let cs_dl_pvec = foreign "cs_dl_pvec" (ptr int64_t @-> ptr double @-> ptr double @-> int64_t @-> returning int64_t)

    let cs_dl_qr = foreign "cs_dl_qr" (ptr cs_dl @-> ptr cs_dls @-> returning (ptr cs_dln))

    let cs_dl_schol = foreign "cs_dl_schol" (int64_t @-> ptr cs_dl @-> returning (ptr cs_dls))

    let cs_dl_sqr = foreign "cs_dl_sqr" (int64_t @-> ptr cs_dl @-> int64_t @-> returning (ptr cs_dls))

    let cs_dl_symperm = foreign "cs_dl_symperm" (ptr cs_dl @-> ptr int64_t @-> int64_t @-> returning (ptr cs_dl))

    let cs_dl_usolve = foreign "cs_dl_usolve" (ptr cs_dl @-> ptr double @-> returning int64_t)

    let cs_dl_utsolve = foreign "cs_dl_utsolve" (ptr cs_dl @-> ptr double @-> returning int64_t)

    let cs_dl_updown = foreign "cs_dl_updown" (ptr cs_dl @-> int64_t @-> ptr cs_dl @-> ptr int64_t @-> returning int64_t)


    (** utility functions *)

    let cs_dl_spalloc = foreign "cs_dl_spalloc" (int64_t @-> int64_t @-> int64_t @-> int64_t @-> int64_t @-> returning (ptr cs_dl))

    let cs_dl_spfree = foreign "cs_dl_spfree" (ptr cs_dl @-> returning (ptr cs_dl))

end