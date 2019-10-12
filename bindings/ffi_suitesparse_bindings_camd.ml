open Ctypes


module Make (F : Cstubs.FOREIGN) = struct

  
    type c_dsmat_s
    let c_dsmat_s : c_dsmat_s structure typ = structure "c_dsmat_s"
    let elt = float


end