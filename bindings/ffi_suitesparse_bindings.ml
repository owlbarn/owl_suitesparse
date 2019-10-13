


module Bindings (F : Cstubs.FOREIGN) = struct

  module CAMD = Ffi_suitesparse_bindings_camd.Make(F)

  module CS_D = Ffi_suitesparse_bindings_cs_d.Make(F)

  module CS_Z = Ffi_suitesparse_bindings_cs_z.Make(F)

end