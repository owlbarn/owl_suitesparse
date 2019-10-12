open Ctypes


module Make (F : Cstubs.FOREIGN) = struct

  open F

    (** type definition *)

    type cs_di
    let cs_di : cs_di structure typ = structure "cs_di_sparse"


    (** core functions *)

    let cs_di_print = foreign "cs_di_print" (ptr cs_di @-> int @-> returning int)


    (** utility functions *)

    let cs_di_spalloc = foreign "cs_di_spalloc" (int @-> int @-> int @-> int @-> int @-> returning (ptr cs_di))

    let cs_di_spfree = foreign "cs_di_spfree" (ptr cs_di @-> returning (ptr cs_di))

end