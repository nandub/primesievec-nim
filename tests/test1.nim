# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import primesievec
test "primesieve_iter":
  var it : primesieve_iterator
  primesieve_init(addr it)
  var prime : uint64
  prime = primesieve_next_prime(addr it)
  while prime < 1000:
    echo prime
    prime = primesieve_next_prime(addr it)

  primesieve_free_iterator(addr it)


