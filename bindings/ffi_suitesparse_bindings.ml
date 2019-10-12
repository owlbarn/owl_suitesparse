


module Bindings (F : Cstubs.FOREIGN) = struct

  module CAMD = Ffi_suitesparse_bindings_camd.Make(F)

  module CS = Ffi_suitesparse_bindings_cs.Make(F)

end