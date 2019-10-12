open Ctypes


module Make (F : Cstubs.FOREIGN) = struct

  open F

    (** type definition *)

    type cs_dl
    let cs_dl : cs_dl structure typ = structure "cs_dl_sparse"


    (** core functions *)

    let cs_dl_entry = foreign "cs_dl_entry" (ptr cs_dl @-> int64_t @-> int64_t @-> double @-> returning int64_t)

    let cs_dl_print = foreign "cs_dl_print" (ptr cs_dl @-> int64_t @-> returning int64_t)


    (** utility functions *)

    let cs_dl_spalloc = foreign "cs_dl_spalloc" (int64_t @-> int64_t @-> int64_t @-> int64_t @-> int64_t @-> returning (ptr cs_dl))

    let cs_dl_spfree = foreign "cs_dl_spfree" (ptr cs_dl @-> returning (ptr cs_dl))

end