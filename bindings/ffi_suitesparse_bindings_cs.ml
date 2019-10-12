open Ctypes


module Make (F : Cstubs.FOREIGN) = struct

  open F

    (** type definition *)

    type cs_di_sparse
    let cs_di_sparse : cs_di_sparse structure typ = structure "cs_di_sparse"


    (** utility functions *)

    let cs_di_calloc = foreign "cs_di_calloc" (int @-> size_t @-> returning (ptr void))

    let cs_di_free = foreign "cs_di_free" (ptr void @-> returning (ptr void))

end