

open Ctypes


module Make (F : Cstubs.FOREIGN) = struct

  open F

    (** type definition *)

    type file
    let file : file structure typ = structure "_IO_FILE"

    type cs_cl
    let cs_cl : cs_cl structure typ = structure "cs_cl_sparse"

    type cs_cls
    let cs_cls : cs_cl structure typ = structure "cs_cl_symbolic"

    type cs_cln
    let cs_cln : cs_cl structure typ = structure "cs_cl_numeric"

    type cs_cld
    let cs_cld : cs_cl structure typ = structure "cs_cl_dmperm_results"
  

    (** core functions - double *)

    let cs_cl_add = foreign "cs_cl_add" (ptr cs_cl @-> ptr cs_cl @-> complex64 @-> complex64 @-> returning (ptr cs_cl))

    let cs_cl_cholsol = foreign "cs_cl_cholsol" (int64_t @-> ptr cs_cl @-> ptr complex64 @-> returning int64_t)

    let cs_cl_dupl = foreign "cs_cl_dupl" (ptr cs_cl @-> returning int64_t)

    let cs_cl_entry = foreign "cs_cl_entry" (ptr cs_cl @-> int64_t @-> int64_t @-> complex64 @-> returning int64_t)

    let cs_cl_lusol = foreign "cs_cl_lusol" (int64_t @-> ptr cs_cl @-> ptr complex64 @-> double @-> returning int64_t)

    let cs_cl_gaxpy = foreign "cs_cl_gaxpy" (ptr cs_cl @-> ptr complex64 @-> ptr complex64 @-> returning int64_t)

    let cs_cl_multiply = foreign "cs_cl_multiply" (ptr cs_cl @-> ptr cs_cl @-> returning (ptr cs_cl))

    let cs_cl_qrsol = foreign "cs_cl_qrsol" (int64_t @-> ptr cs_cl @-> ptr complex64 @-> returning int64_t)

    let cs_cl_transpose = foreign "cs_cl_transpose" (ptr cs_cl @-> int64_t @-> returning (ptr cs_cl))

    let cs_cl_compress = foreign "cs_cl_compress" (ptr cs_cl @-> returning (ptr cs_cl))

    let cs_cl_norm = foreign "cs_cl_norm" (ptr cs_cl @-> returning double)

    let cs_cl_print = foreign "cs_cl_print" (ptr cs_cl @-> int64_t @-> returning int64_t)

    let cs_cl_load = foreign "cs_cl_load" (ptr file @-> returning (ptr cs_cl))

    let cs_cl_amd = foreign "cs_cl_amd" (int64_t @-> ptr cs_cl @-> returning (ptr int64_t))

    let cs_cl_chol = foreign "cs_cl_chol" (ptr cs_cl @-> ptr cs_cls @-> returning (ptr cs_cln))

    let cs_cl_dmperm = foreign "cs_cl_dmperm" (ptr cs_cl @-> int64_t @-> returning (ptr cs_cld))

    let cs_cl_droptol = foreign "cs_cl_droptol" (ptr cs_cl @-> double @-> returning int64_t)

    let cs_cl_dropzeros = foreign "cs_cl_dropzeros" (ptr cs_cl @-> returning int64_t)

    let cs_cl_happly = foreign "cs_cl_happly" (ptr cs_cl @-> int64_t @-> double @-> ptr complex64 @-> returning int64_t)

    let cs_cl_ipvec = foreign "cs_cl_ipvec" (ptr int64_t @-> ptr complex64 @-> ptr complex64 @-> int64_t @-> returning int64_t)

    let cs_cl_lsolve = foreign "cs_cl_lsolve" (ptr cs_cl @-> ptr complex64 @-> returning int64_t)

    let cs_cl_ltsolve = foreign "cs_cl_ltsolve" (ptr cs_cl @-> ptr complex64 @-> returning int64_t)

    let cs_cl_lu = foreign "cs_cl_lu" (ptr cs_cl @-> ptr cs_cls @-> double @-> returning (ptr cs_cln))

    let cs_cl_permute = foreign "cs_cl_permute" (ptr cs_cl @-> ptr int64_t @-> ptr int64_t @-> int64_t @-> returning (ptr cs_cl))

    let cs_cl_pinv = foreign "cs_cl_pinv" (ptr int64_t @-> int64_t @-> returning (ptr int64_t))

    let cs_cl_pvec = foreign "cs_cl_pvec" (ptr int64_t @-> ptr complex64 @-> ptr complex64 @-> int64_t @-> returning int64_t)

    let cs_cl_qr = foreign "cs_cl_qr" (ptr cs_cl @-> ptr cs_cls @-> returning (ptr cs_cln))

    let cs_cl_schol = foreign "cs_cl_schol" (int64_t @-> ptr cs_cl @-> returning (ptr cs_cls))

    let cs_cl_sqr = foreign "cs_cl_sqr" (int64_t @-> ptr cs_cl @-> int64_t @-> returning (ptr cs_cls))

    let cs_cl_symperm = foreign "cs_cl_symperm" (ptr cs_cl @-> ptr int64_t @-> int64_t @-> returning (ptr cs_cl))

    let cs_cl_usolve = foreign "cs_cl_usolve" (ptr cs_cl @-> ptr complex64 @-> returning int64_t)

    let cs_cl_utsolve = foreign "cs_cl_utsolve" (ptr cs_cl @-> ptr complex64 @-> returning int64_t)

    let cs_cl_updown = foreign "cs_cl_updown" (ptr cs_cl @-> int64_t @-> ptr cs_cl @-> ptr int64_t @-> returning int64_t)

    let cs_cl_counts = foreign "cs_cl_counts" (ptr cs_cl @-> ptr int64_t @-> ptr int64_t @-> int64_t @-> returning (ptr int64_t))

    let cs_cl_cumsum = foreign "cs_cl_cumsum" (ptr int64_t @-> ptr int64_t @-> int64_t @-> returning double)

    let cs_cl_dfs = foreign "cs_cl_dfs" (int64_t @-> ptr cs_cl @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)

    let cs_cl_etree = foreign "cs_cl_etree" (ptr cs_cl @-> int64_t @-> returning (ptr int64_t))

    let cs_cl_fkeep = foreign "cs_cl_fkeep" (ptr cs_cl @-> ptr void @-> ptr void @-> returning int64_t)

    let cs_cl_house = foreign "cs_cl_house" (ptr complex64 @-> ptr double @-> int64_t @-> returning double)

    let cs_cl_maxtrans = foreign "cs_cl_maxtrans" (ptr cs_cl @-> int64_t @-> returning (ptr int64_t))

    let cs_cl_post = foreign "cs_cl_post" (ptr int64_t @-> int64_t @-> returning (ptr int64_t))

    let cs_cl_scc = foreign "cs_cl_scc" (ptr cs_cl @-> returning (ptr cs_cld))

    let cs_cl_scatter = foreign "cs_cl_scatter" (ptr cs_cl @-> int64_t @-> complex64 @-> ptr int64_t @-> ptr complex64 @-> int64_t @-> ptr cs_cl @-> int64_t @-> returning int64_t)

    let cs_cl_tdfs = foreign "cs_cl_tdfs" (int64_t @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)

    let cs_cl_leaf = foreign "cs_cl_leaf" (int64_t @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)

    let cs_cl_reach = foreign "cs_cl_reach" (ptr cs_cl @-> ptr cs_cl @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)

    let cs_cl_spsolve = foreign "cs_cl_spsolve" (ptr cs_cl @-> ptr cs_cl @-> int64_t @-> ptr int64_t @-> ptr complex64 @-> ptr int64_t @-> int64_t @-> returning int64_t)

    let cs_cl_ereach = foreign "cs_cl_ereach" (ptr cs_cl @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)

    let cs_cl_randperm = foreign "cs_cl_randperm" (int64_t @-> int64_t @-> returning (ptr int64_t))


    (** utility functions *)

    let cs_cl_spalloc = foreign "cs_cl_spalloc" (int64_t @-> int64_t @-> int64_t @-> int64_t @-> int64_t @-> returning (ptr cs_cl))

    let cs_cl_spfree = foreign "cs_cl_spfree" (ptr cs_cl @-> returning (ptr cs_cl))

    let cs_cl_sfree = foreign "cs_cl_sfree" (ptr cs_cls @-> returning (ptr cs_cls))

    let cs_cl_nfree = foreign "cs_cl_nfree" (ptr cs_cln @-> returning (ptr cs_cln))

    let cs_cl_dfree = foreign "cs_cl_dfree" (ptr cs_cld @-> returning (ptr cs_cld))

    let cs_cl_dalloc = foreign "cs_cl_dalloc" (int64_t @-> int64_t @-> returning (ptr cs_cld))

    let cs_cl_done = foreign "cs_cl_done" (ptr cs_cl @-> ptr void @-> ptr void @-> int64_t @-> returning (ptr cs_cl))

    let cs_cl_idone = foreign "cs_cl_idone" (ptr int64_t @-> ptr cs_cl @-> ptr void @-> int64_t @-> returning (ptr int64_t))

    let cs_cl_ndone = foreign "cs_cl_ndone" (ptr cs_cln @-> ptr cs_cl @-> ptr void @-> ptr void @-> int64_t @-> returning (ptr cs_cln))

    let cs_cl_ddone = foreign "cs_cl_ddone" (ptr cs_cld @-> ptr cs_cl @-> ptr void @-> int64_t @-> returning (ptr cs_cld))

end