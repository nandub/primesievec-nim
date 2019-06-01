# Generated at 2019-05-31T21:45:09-05:00
# Command line:
#   /Users/nandub/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --preprocess --pnim --recurse primesieve.h primesieve/iterator.h

{.hint[ConvFromXtoItselfNotNeeded]: off.}
{.passL: gorge("pkg-config --libs primesieve").}

import nimterop/types



#*
# * primesieve functions return PRIMESIEVE_ERROR
# * (UINT64_MAX) if any error occurs.
#
defineEnum(Enum_primesieveh1)

const
  headerprimesieve {.used.} = "primesieve.h"

#*
# * @file   primesieve.h
# * @brief  primesieve C API. primesieve is a library for fast prime
# *         number generation. In case an error occurs errno is set to
# *         EDOM and PRIMESIEVE_ERROR is returned.
# *
# * Copyright (C) 2019 Kim Walisch, <kim.walisch@gmail.com>
# *
# * This file is distributed under the BSD License.
#
  PRIMESIEVE_VERSION_MAJOR* = 7
  PRIMESIEVE_VERSION_MINOR* = 5
  SHORT_PRIMES* = 0.Enum_primesieveh1
  USHORT_PRIMES* = 1.Enum_primesieveh1
  INT_PRIMES* = 2.Enum_primesieveh1
  UINT_PRIMES* = 3.Enum_primesieveh1
  LONG_PRIMES* = 4.Enum_primesieveh1
  ULONG_PRIMES* = 5.Enum_primesieveh1
  LONGLONG_PRIMES* = 6.Enum_primesieveh1
  ULONGLONG_PRIMES* = 7.Enum_primesieveh1
  INT16_PRIMES* = 8.Enum_primesieveh1
  UINT16_PRIMES* = 9.Enum_primesieveh1
  INT32_PRIMES* = 10.Enum_primesieveh1
  UINT32_PRIMES* = 11.Enum_primesieveh1
  INT64_PRIMES* = 12.Enum_primesieveh1
  UINT64_PRIMES* = 13.Enum_primesieveh1

{.pragma: impprimesieve, importc, header: headerprimesieve.}
{.pragma: impprimesieveC, impprimesieve, cdecl.}



#*
# * Get an array with the primes inside the interval [start, stop].
# * @param size  The size of the returned primes array.
# * @param type  The type of the primes to generate, e.g. INT_PRIMES.
#
proc primesieve_generate_primes*(start: uint64, stop: uint64, size: ptr cuint, `type`: cint): pointer {.impprimesieveC.}

#*
# * Get an array with the first n primes >= start.
# * @param type  The type of the primes to generate, e.g. INT_PRIMES.
#
proc primesieve_generate_n_primes*(n: uint64, start: uint64, `type`: cint): pointer {.impprimesieveC.}

#*
# * Find the nth prime.
# * By default all CPU cores are used, use
# * primesieve_set_num_threads(int threads) to change the
# * number of threads.
# * @param n  if n = 0 finds the 1st prime >= start, <br/>
# *           if n > 0 finds the nth prime > start, <br/>
# *           if n < 0 finds the nth prime < start (backwards).
#
proc primesieve_nth_prime*(n: int64, start: uint64): uint64 {.impprimesieveC.}

#*
# * Count the primes within the interval [start, stop].
# * By default all CPU cores are used, use
# * primesieve_set_num_threads(int threads) to change the
# * number of threads.
#
proc primesieve_count_primes*(start: uint64, stop: uint64): uint64 {.impprimesieveC.}

#*
# * Count the twin primes within the interval [start, stop].
# * By default all CPU cores are used, use
# * primesieve_set_num_threads(int threads) to change the
# * number of threads.
#
proc primesieve_count_twins*(start: uint64, stop: uint64): uint64 {.impprimesieveC.}

#*
# * Count the prime triplets within the interval [start, stop].
# * By default all CPU cores are used, use
# * primesieve_set_num_threads(int threads) to change the
# * number of threads.
#
proc primesieve_count_triplets*(start: uint64, stop: uint64): uint64 {.impprimesieveC.}

#*
# * Count the prime quadruplets within the interval [start, stop].
# * By default all CPU cores are used, use
# * primesieve_set_num_threads(int threads) to change the
# * number of threads.
#
proc primesieve_count_quadruplets*(start: uint64, stop: uint64): uint64 {.impprimesieveC.}

#*
# * Count the prime quintuplets within the interval [start, stop].
# * By default all CPU cores are used, use
# * primesieve_set_num_threads(int threads) to change the
# * number of threads.
#
proc primesieve_count_quintuplets*(start: uint64, stop: uint64): uint64 {.impprimesieveC.}

#*
# * Count the prime sextuplets within the interval [start, stop].
# * By default all CPU cores are used, use
# * primesieve_set_num_threads(int threads) to change the
# * number of threads.
#
proc primesieve_count_sextuplets*(start: uint64, stop: uint64): uint64 {.impprimesieveC.}

#*
# * Print the primes within the interval [start, stop]
# * to the standard output.
#
proc primesieve_print_primes*(start: uint64, stop: uint64) {.impprimesieveC.}

#*
# * Print the twin primes within the interval [start, stop]
# * to the standard output.
#
proc primesieve_print_twins*(start: uint64, stop: uint64) {.impprimesieveC.}

#*
# * Print the prime triplets within the interval [start, stop]
# * to the standard output.
#
proc primesieve_print_triplets*(start: uint64, stop: uint64) {.impprimesieveC.}

#*
# * Print the prime quadruplets within the interval [start, stop]
# * to the standard output.
#
proc primesieve_print_quadruplets*(start: uint64, stop: uint64) {.impprimesieveC.}

#*
# * Print the prime quintuplets within the interval [start, stop]
# * to the standard output.
#
proc primesieve_print_quintuplets*(start: uint64, stop: uint64) {.impprimesieveC.}

#*
# * Print the prime sextuplets within the interval [start, stop]
# * to the standard output.
#
proc primesieve_print_sextuplets*(start: uint64, stop: uint64) {.impprimesieveC.}

#*
# * Returns the largest valid stop number for primesieve.
# * @return 2^64-1 (UINT64_MAX).
#
proc primesieve_get_max_stop*(): uint64 {.impprimesieveC.}

#* Get the current set sieve size in KiB
proc primesieve_get_sieve_size*(): cint {.impprimesieveC.}

#* Get the current set number of threads
proc primesieve_get_num_threads*(): cint {.impprimesieveC.}

#*
# * Set the sieve size in KiB (kibibyte).
# * The best sieving performance is achieved with a sieve size
# * of your CPU's L1 or L2 cache size (per core).
# * @pre sieve_size >= 8 && <= 4096.
#
proc primesieve_set_sieve_size*(sieve_size: cint) {.impprimesieveC.}

#*
# * Set the number of threads for use in
# * primesieve_count_*() and primesieve_nth_prime().
# * By default all CPU cores are used.
#
proc primesieve_set_num_threads*(num_threads: cint) {.impprimesieveC.}

#*
# * Deallocate a primes array created using the
# * primesieve_generate_primes() or primesieve_generate_n_primes()
# * functions.
#
proc primesieve_free*(primes: pointer) {.impprimesieveC.}

#* Get the primesieve version number, in the form “i.j”
proc primesieve_version*(): cstring {.impprimesieveC.}

const
  headeriterator {.used.} = "primesieve/iterator.h"

{.pragma: impiterator, importc, header: headeriterator.}
{.pragma: impiteratorC, impiterator, cdecl.}

type

#*
# * @file   iterator.h
# * @brief  primesieve_iterator allows to easily iterate over primes
# *         both forwards and backwards. Generating the first prime
# *         has a complexity of O(r log log r) operations with
# *         r = n^0.5, after that any additional prime is generated in
# *         amortized O(log n log log n) operations. The memory usage
# *         is about PrimePi(n^0.5) * 8 bytes.
# *
# *         The @link primesieve_iterator.c primesieve_iterator.c
# *         @endlink example shows how to use primesieve_iterator.
# *         If any error occurs primesieve_next_prime() and
# *         primesieve_prev_prime() return PRIMESIEVE_ERROR.
# *         Furthermore primesieve_iterator.is_error is initialized
# *         to 0 and set to 1 if any error occurs.
# *
# * Copyright (C) 2018 Kim Walisch, <kim.walisch@gmail.com>
# *
# * This file is distributed under the BSD License. See the COPYING
# * file in the top level directory.
#
#*
# * C prime iterator, please refer to @link iterator.h iterator.h
# * @endlink for more information.
#
  primesieve_iterator* {.impiterator, bycopy.} = object
    i*: cuint
    last_idx*: cuint
    start*: uint64
    stop*: uint64
    stop_hint*: uint64
    dist*: uint64
    primes*: ptr uint64
    vector*: pointer
    primeGenerator*: pointer
    is_error*: cint



#* Initialize the primesieve iterator before first using it
proc primesieve_init*(it: ptr primesieve_iterator) {.impiteratorC.}

#* Free all memory
proc primesieve_free_iterator*(it: ptr primesieve_iterator) {.impiteratorC.}

#*
# * Reset the primesieve iterator to start.
# * @param start      Generate primes > start (or < start).
# * @param stop_hint  Stop number optimization hint. E.g. if you want
# *                   to generate the primes below 1000 use
# *                   stop_hint = 1000, if you don't know use
# *                   primesieve_get_max_stop().
#
proc primesieve_skipto*(it: ptr primesieve_iterator, start: uint64, stop_hint: uint64) {.impiteratorC.}

#* Internal use
proc primesieve_generate_next_primes*(a1: ptr primesieve_iterator) {.impiteratorC.}

#* Internal use
proc primesieve_generate_prev_primes*(a1: ptr primesieve_iterator) {.impiteratorC.}

#*
# * Get the next prime.
# * Returns UINT64_MAX if next prime > 2^64.
#
proc primesieve_next_prime*(it: ptr primesieve_iterator): uint64 {.impiteratorC.}

#{
#  if (it->i++ == it->last_idx)
#    primesieve_generate_next_primes(it);
#  return it->primes[it->i];
#}
#*
# * Get the previous prime.
# * primesieve_prev_prime(n) = 0 if n <= 2.
#
proc primesieve_prev_prime*(it: ptr primesieve_iterator): uint64 {.impiteratorC.}

