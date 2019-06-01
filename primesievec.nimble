# Package

version       = "0.0.1"
author        = "Fernando Ortiz"
description   = "primesieve (Fast prime number generator) C bindings"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 0.19.0", "nimterop >= 0.1.0"

when defined(nimdistros):
  import distros
  if detectOs(Ubuntu):
    foreignDep "primesieve"
  else:
    foreignDep "primesieve"
