# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

string(TOUPPER ${CMAKE_BUILD_TYPE} BUILD_TYPE)
string(TOUPPER ${CMAKE_C_COMPILER_ID} MY_COMPILER)
set(BUILD "${MY_COMPILER}:${BUILD_TYPE}")

##==============================================================================
##
## Supported tests:
##
##==============================================================================

# Include tests that work on all builds:
set(LIBC_TESTS
    3rdparty/musl/libc-test/src/functional/argv.c
    3rdparty/musl/libc-test/src/functional/basename.c
    3rdparty/musl/libc-test/src/functional/clock_gettime.c
    3rdparty/musl/libc-test/src/functional/dirname.c
    3rdparty/musl/libc-test/src/functional/env.c
    3rdparty/musl/libc-test/src/functional/qsort.c
    3rdparty/musl/libc-test/src/functional/search_insque.c
    3rdparty/musl/libc-test/src/functional/search_lsearch.c
    3rdparty/musl/libc-test/src/functional/search_tsearch.c
    3rdparty/musl/libc-test/src/functional/socket.c
    3rdparty/musl/libc-test/src/functional/snprintf.c
    3rdparty/musl/libc-test/src/functional/sscanf.c
    3rdparty/musl/libc-test/src/functional/string.c
    3rdparty/musl/libc-test/src/functional/string_memcpy.c
    3rdparty/musl/libc-test/src/functional/string_memmem.c
    3rdparty/musl/libc-test/src/functional/string_memset.c
    3rdparty/musl/libc-test/src/functional/string_strchr.c
    3rdparty/musl/libc-test/src/functional/string_strcspn.c
    3rdparty/musl/libc-test/src/functional/string_strstr.c
    3rdparty/musl/libc-test/src/functional/strtod.c
    3rdparty/musl/libc-test/src/functional/strtod_long.c
    3rdparty/musl/libc-test/src/functional/strtod_simple.c
    3rdparty/musl/libc-test/src/functional/strtof.c
    3rdparty/musl/libc-test/src/functional/strtol.c
    3rdparty/musl/libc-test/src/functional/strtold.c
    3rdparty/musl/libc-test/src/functional/tls_align.c
    3rdparty/musl/libc-test/src/functional/udiv.c
    3rdparty/musl/libc-test/src/functional/wcsstr.c
    3rdparty/musl/libc-test/src/functional/wcstol.c
    3rdparty/musl/libc-test/src/math/acos.c
    3rdparty/musl/libc-test/src/math/acosf.c
    3rdparty/musl/libc-test/src/math/acoshf.c
    3rdparty/musl/libc-test/src/math/acoshl.c
    3rdparty/musl/libc-test/src/math/acosl.c
    3rdparty/musl/libc-test/src/math/asin.c
    3rdparty/musl/libc-test/src/math/asinf.c
    3rdparty/musl/libc-test/src/math/asinhf.c
    3rdparty/musl/libc-test/src/math/asinhl.c
    3rdparty/musl/libc-test/src/math/asinl.c
    3rdparty/musl/libc-test/src/math/atan2.c
    3rdparty/musl/libc-test/src/math/atan2f.c
    3rdparty/musl/libc-test/src/math/atan2l.c
    3rdparty/musl/libc-test/src/math/atan.c
    3rdparty/musl/libc-test/src/math/atanf.c
    3rdparty/musl/libc-test/src/math/atanh.c
    3rdparty/musl/libc-test/src/math/atanhf.c
    3rdparty/musl/libc-test/src/math/atanhl.c
    3rdparty/musl/libc-test/src/math/atanl.c
    3rdparty/musl/libc-test/src/math/cbrt.c
    3rdparty/musl/libc-test/src/math/cbrtf.c
    3rdparty/musl/libc-test/src/math/cbrtl.c
    3rdparty/musl/libc-test/src/math/ceil.c
    3rdparty/musl/libc-test/src/math/ceilf.c
    3rdparty/musl/libc-test/src/math/ceill.c
    3rdparty/musl/libc-test/src/math/copysign.c
    3rdparty/musl/libc-test/src/math/copysignf.c
    3rdparty/musl/libc-test/src/math/copysignl.c
    3rdparty/musl/libc-test/src/math/cos.c
    3rdparty/musl/libc-test/src/math/cosf.c
    3rdparty/musl/libc-test/src/math/cosh.c
    3rdparty/musl/libc-test/src/math/coshf.c
    3rdparty/musl/libc-test/src/math/coshl.c
    3rdparty/musl/libc-test/src/math/cosl.c
    3rdparty/musl/libc-test/src/math/drem.c
    3rdparty/musl/libc-test/src/math/dremf.c
    3rdparty/musl/libc-test/src/math/erf.c
    3rdparty/musl/libc-test/src/math/erfc.c
    3rdparty/musl/libc-test/src/math/erfcf.c
    3rdparty/musl/libc-test/src/math/erfcl.c
    3rdparty/musl/libc-test/src/math/erff.c
    3rdparty/musl/libc-test/src/math/erfl.c
    3rdparty/musl/libc-test/src/math/exp10.c
    3rdparty/musl/libc-test/src/math/exp10f.c
    3rdparty/musl/libc-test/src/math/exp10l.c
    3rdparty/musl/libc-test/src/math/exp2.c
    3rdparty/musl/libc-test/src/math/exp2f.c
    3rdparty/musl/libc-test/src/math/exp2l.c
    3rdparty/musl/libc-test/src/math/exp.c
    3rdparty/musl/libc-test/src/math/expf.c
    3rdparty/musl/libc-test/src/math/expl.c
    3rdparty/musl/libc-test/src/math/expm1.c
    3rdparty/musl/libc-test/src/math/expm1f.c
    3rdparty/musl/libc-test/src/math/expm1l.c
    3rdparty/musl/libc-test/src/math/fabs.c
    3rdparty/musl/libc-test/src/math/fabsf.c
    3rdparty/musl/libc-test/src/math/fabsl.c
    3rdparty/musl/libc-test/src/math/fenv.c
    3rdparty/musl/libc-test/src/math/floor.c
    3rdparty/musl/libc-test/src/math/floorf.c
    3rdparty/musl/libc-test/src/math/floorl.c
    3rdparty/musl/libc-test/src/math/fma.c
    3rdparty/musl/libc-test/src/math/fmaxl.c
    3rdparty/musl/libc-test/src/math/fminl.c
    3rdparty/musl/libc-test/src/math/fmod.c
    3rdparty/musl/libc-test/src/math/fmodf.c
    3rdparty/musl/libc-test/src/math/fmodl.c
    3rdparty/musl/libc-test/src/math/fpclassify.c
    3rdparty/musl/libc-test/src/math/frexp.c
    3rdparty/musl/libc-test/src/math/frexpf.c
    3rdparty/musl/libc-test/src/math/frexpl.c
    3rdparty/musl/libc-test/src/math/hypot.c
    3rdparty/musl/libc-test/src/math/hypotf.c
    3rdparty/musl/libc-test/src/math/hypotl.c
    3rdparty/musl/libc-test/src/math/isless.c
    3rdparty/musl/libc-test/src/math/j0f.c
    3rdparty/musl/libc-test/src/math/j1.c
    3rdparty/musl/libc-test/src/math/j1f.c
    3rdparty/musl/libc-test/src/math/ldexp.c
    3rdparty/musl/libc-test/src/math/ldexpf.c
    3rdparty/musl/libc-test/src/math/ldexpl.c
    3rdparty/musl/libc-test/src/math/lgammal.c
    3rdparty/musl/libc-test/src/math/lgammal_r.c
    3rdparty/musl/libc-test/src/math/llrint.c
    3rdparty/musl/libc-test/src/math/llrintf.c
    3rdparty/musl/libc-test/src/math/llrintl.c
    3rdparty/musl/libc-test/src/math/llround.c
    3rdparty/musl/libc-test/src/math/llroundf.c
    3rdparty/musl/libc-test/src/math/llroundl.c
    3rdparty/musl/libc-test/src/math/log10.c
    3rdparty/musl/libc-test/src/math/log10f.c
    3rdparty/musl/libc-test/src/math/log10l.c
    3rdparty/musl/libc-test/src/math/log1pl.c
    3rdparty/musl/libc-test/src/math/log2.c
    3rdparty/musl/libc-test/src/math/log2f.c
    3rdparty/musl/libc-test/src/math/log2l.c
    3rdparty/musl/libc-test/src/math/logb.c
    3rdparty/musl/libc-test/src/math/logbf.c
    3rdparty/musl/libc-test/src/math/logbl.c
    3rdparty/musl/libc-test/src/math/log.c
    3rdparty/musl/libc-test/src/math/logf.c
    3rdparty/musl/libc-test/src/math/logl.c
    3rdparty/musl/libc-test/src/math/lrint.c
    3rdparty/musl/libc-test/src/math/lrintf.c
    3rdparty/musl/libc-test/src/math/lrintl.c
    3rdparty/musl/libc-test/src/math/lround.c
    3rdparty/musl/libc-test/src/math/lroundf.c
    3rdparty/musl/libc-test/src/math/lroundl.c
    3rdparty/musl/libc-test/src/math/modf.c
    3rdparty/musl/libc-test/src/math/modff.c
    3rdparty/musl/libc-test/src/math/modfl.c
    3rdparty/musl/libc-test/src/math/nearbyint.c
    3rdparty/musl/libc-test/src/math/nearbyintf.c
    3rdparty/musl/libc-test/src/math/nearbyintl.c
    3rdparty/musl/libc-test/src/math/nextafter.c
    3rdparty/musl/libc-test/src/math/nextafterf.c
    3rdparty/musl/libc-test/src/math/nextafterl.c
    3rdparty/musl/libc-test/src/math/nexttoward.c
    3rdparty/musl/libc-test/src/math/nexttowardf.c
    3rdparty/musl/libc-test/src/math/nexttowardl.c
    3rdparty/musl/libc-test/src/math/pow10.c
    3rdparty/musl/libc-test/src/math/pow10f.c
    3rdparty/musl/libc-test/src/math/pow10l.c
    3rdparty/musl/libc-test/src/math/remainder.c
    3rdparty/musl/libc-test/src/math/remainderf.c
    3rdparty/musl/libc-test/src/math/remainderl.c
    3rdparty/musl/libc-test/src/math/remquo.c
    3rdparty/musl/libc-test/src/math/remquof.c
    3rdparty/musl/libc-test/src/math/remquol.c
    3rdparty/musl/libc-test/src/math/rint.c
    3rdparty/musl/libc-test/src/math/rintf.c
    3rdparty/musl/libc-test/src/math/rintl.c
    3rdparty/musl/libc-test/src/math/round.c
    3rdparty/musl/libc-test/src/math/roundf.c
    3rdparty/musl/libc-test/src/math/roundl.c
    3rdparty/musl/libc-test/src/math/scalb.c
    3rdparty/musl/libc-test/src/math/scalbf.c
    3rdparty/musl/libc-test/src/math/scalbln.c
    3rdparty/musl/libc-test/src/math/scalblnf.c
    3rdparty/musl/libc-test/src/math/scalblnl.c
    3rdparty/musl/libc-test/src/math/sin.c
    3rdparty/musl/libc-test/src/math/sincos.c
    3rdparty/musl/libc-test/src/math/sincosf.c
    3rdparty/musl/libc-test/src/math/sincosl.c
    3rdparty/musl/libc-test/src/math/sinf.c
    3rdparty/musl/libc-test/src/math/sinhf.c
    3rdparty/musl/libc-test/src/math/sinl.c
    3rdparty/musl/libc-test/src/math/sqrt.c
    3rdparty/musl/libc-test/src/math/sqrtf.c
    3rdparty/musl/libc-test/src/math/sqrtl.c
    3rdparty/musl/libc-test/src/math/tan.c
    3rdparty/musl/libc-test/src/math/tanf.c
    3rdparty/musl/libc-test/src/math/tanh.c
    3rdparty/musl/libc-test/src/math/tanhf.c
    3rdparty/musl/libc-test/src/math/tanhl.c
    3rdparty/musl/libc-test/src/math/tanl.c
    3rdparty/musl/libc-test/src/math/tgammal.c
    3rdparty/musl/libc-test/src/math/trunc.c
    3rdparty/musl/libc-test/src/math/truncf.c
    3rdparty/musl/libc-test/src/math/truncl.c
    3rdparty/musl/libc-test/src/regression/fpclassify-invalid-ld80.c
    3rdparty/musl/libc-test/src/regression/iswspace-null.c
    3rdparty/musl/libc-test/src/regression/lrand48-signextend.c
    3rdparty/musl/libc-test/src/regression/malloc-0.c
    3rdparty/musl/libc-test/src/regression/mbsrtowcs-overflow.c
    3rdparty/musl/libc-test/src/regression/memmem-oob.c
    3rdparty/musl/libc-test/src/regression/memmem-oob-read.c
    3rdparty/musl/libc-test/src/regression/printf-1e9-oob.c
    3rdparty/musl/libc-test/src/regression/printf-fmt-g-round.c
    3rdparty/musl/libc-test/src/regression/printf-fmt-g-zeros.c
    3rdparty/musl/libc-test/src/regression/printf-fmt-n.c
    3rdparty/musl/libc-test/src/regression/scanf-bytes-consumed.c
    3rdparty/musl/libc-test/src/regression/scanf-match-literal-eof.c
    3rdparty/musl/libc-test/src/regression/scanf-nullbyte-char.c
    3rdparty/musl/libc-test/src/regression/wcsncpy-read-overflow.c
    3rdparty/musl/libc-test/src/regression/wcsstr-false-negative.c
    3rdparty/musl/libc-test/src/functional/clocale_mbfuncs.c
    3rdparty/musl/libc-test/src/functional/iconv_open.c
    3rdparty/musl/libc-test/src/functional/memstream.c
    3rdparty/musl/libc-test/src/math/scalbn.c
    3rdparty/musl/libc-test/src/math/scalbnf.c
    3rdparty/musl/libc-test/src/math/scalbnl.c
    3rdparty/musl/libc-test/src/musl/pleval.c
    3rdparty/musl/libc-test/src/regression/fgets-eof.c
    3rdparty/musl/libc-test/src/regression/iconv-roundtrips.c
    3rdparty/musl/libc-test/src/regression/inet_ntop-v4mapped.c
    3rdparty/musl/libc-test/src/regression/inet_pton-empty-last-field.c
    3rdparty/musl/libc-test/src/regression/putenv-doublefree.c
    3rdparty/musl/libc-test/src/regression/strverscmp.c
    3rdparty/musl/libc-test/src/functional/random.c
    3rdparty/musl/libc-test/src/functional/time.c
)

# Exclude tests that fail on Clang:
if (NOT (USE_CLANGW OR MY_COMPILER MATCHES "CLANG"))
    list(APPEND LIBC_TESTS 
        3rdparty/musl/libc-test/src/functional/tgmath.c
        3rdparty/musl/libc-test/src/math/fmax.c
        3rdparty/musl/libc-test/src/math/fmaxf.c
        3rdparty/musl/libc-test/src/math/fmin.c
        3rdparty/musl/libc-test/src/math/fminf.c
        3rdparty/musl/libc-test/src/math/ilogb.c
        3rdparty/musl/libc-test/src/math/ilogbf.c
        3rdparty/musl/libc-test/src/math/ilogbl.c
        3rdparty/musl/libc-test/src/math/pow.c
        3rdparty/musl/libc-test/src/math/powl.c
        3rdparty/musl/libc-test/src/math/tgammaf.c
        3rdparty/musl/libc-test/src/math/y1.c
        3rdparty/musl/libc-test/src/math/y1f.c
        3rdparty/musl/libc-test/src/math/yn.c
    )
endif()

##==============================================================================
##
## Unsupported tests:
##
##==============================================================================

if (FALSE)
    list(APPEND LIBC_TESTS 
        3rdparty/musl/libc-test/src/common/runtest.c
        3rdparty/musl/libc-test/src/functional/crypt.c
        3rdparty/musl/libc-test/src/functional/dlopen.c
        3rdparty/musl/libc-test/src/functional/fcntl.c
        3rdparty/musl/libc-test/src/functional/fdopen.c
        3rdparty/musl/libc-test/src/functional/fnmatch.c
        3rdparty/musl/libc-test/src/functional/fscanf.c
        3rdparty/musl/libc-test/src/functional/fwscanf.c
        3rdparty/musl/libc-test/src/functional/inet_pton.c
        3rdparty/musl/libc-test/src/functional/ipc_msg.c
        3rdparty/musl/libc-test/src/functional/ipc_sem.c
        3rdparty/musl/libc-test/src/functional/ipc_shm.c
        3rdparty/musl/libc-test/src/functional/mbc.c
        3rdparty/musl/libc-test/src/functional/popen.c
        3rdparty/musl/libc-test/src/functional/pthread_cancel.c
        3rdparty/musl/libc-test/src/functional/pthread_cancel-points.c
        3rdparty/musl/libc-test/src/functional/pthread_cond.c
        3rdparty/musl/libc-test/src/functional/pthread_mutex.c
        3rdparty/musl/libc-test/src/functional/pthread_robust.c
        3rdparty/musl/libc-test/src/functional/pthread_tsd.c
        # sscanf_long Runs out of memory on Windows and Linux CI
        3rdparty/musl/libc-test/src/functional/sscanf_long.c
        3rdparty/musl/libc-test/src/functional/search_hsearch.c
        3rdparty/musl/libc-test/src/functional/sem_init.c
        3rdparty/musl/libc-test/src/functional/sem_open.c
        3rdparty/musl/libc-test/src/functional/setjmp.c
        3rdparty/musl/libc-test/src/functional/spawn.c
        3rdparty/musl/libc-test/src/functional/stat.c
        3rdparty/musl/libc-test/src/functional/strftime.c
        3rdparty/musl/libc-test/src/functional/strptime.c
        3rdparty/musl/libc-test/src/functional/swprintf.c
        3rdparty/musl/libc-test/src/functional/tls_align_dlopen.c
        3rdparty/musl/libc-test/src/functional/tls_init.c
        3rdparty/musl/libc-test/src/functional/tls_init_dlopen.c
        3rdparty/musl/libc-test/src/functional/tls_local_exec.c
        3rdparty/musl/libc-test/src/functional/ungetc.c
        3rdparty/musl/libc-test/src/functional/vfork.c
        3rdparty/musl/libc-test/src/math/acosh.c
        3rdparty/musl/libc-test/src/math/asinh.c
        3rdparty/musl/libc-test/src/math/fmal.c
        3rdparty/musl/libc-test/src/math/j0.c
        3rdparty/musl/libc-test/src/math/jn.c
        3rdparty/musl/libc-test/src/math/jnf.c
        3rdparty/musl/libc-test/src/math/lgamma.c
        3rdparty/musl/libc-test/src/math/lgammaf.c
        3rdparty/musl/libc-test/src/math/lgammaf_r.c
        3rdparty/musl/libc-test/src/math/lgamma_r.c
        3rdparty/musl/libc-test/src/math/sinh.c
        3rdparty/musl/libc-test/src/math/sinhl.c
        3rdparty/musl/libc-test/src/math/tgamma.c
        3rdparty/musl/libc-test/src/math/y0.c
        3rdparty/musl/libc-test/src/math/y0f.c
        3rdparty/musl/libc-test/src/math/ynf.c
        3rdparty/musl/libc-test/src/regression/daemon-failure.c
        3rdparty/musl/libc-test/src/regression/dn_expand-empty.c
        3rdparty/musl/libc-test/src/regression/dn_expand-ptr-0.c
        3rdparty/musl/libc-test/src/regression/execle-env.c
        3rdparty/musl/libc-test/src/regression/fflush-exit.c
        3rdparty/musl/libc-test/src/regression/fgetwc-buffering.c
        3rdparty/musl/libc-test/src/regression/flockfile-list.c
        3rdparty/musl/libc-test/src/regression/ftello-unflushed-append.c
        3rdparty/musl/libc-test/src/regression/getpwnam_r-crash.c
        3rdparty/musl/libc-test/src/regression/getpwnam_r-errno.c
        3rdparty/musl/libc-test/src/regression/inet_ntop-v4mapped.c
        3rdparty/musl/libc-test/src/regression/inet_pton-empty-last-field.c
        3rdparty/musl/libc-test/src/regression/malloc-brk-fail.c
        3rdparty/musl/libc-test/src/regression/malloc-oom.c
        3rdparty/musl/libc-test/src/regression/mkdtemp-failure.c
        3rdparty/musl/libc-test/src/regression/mkstemp-failure.c
        3rdparty/musl/libc-test/src/regression/pthread_atfork-errno-clobber.c
        3rdparty/musl/libc-test/src/regression/pthread_cancel-sem_wait.c
        3rdparty/musl/libc-test/src/regression/pthread_condattr_setclock.c
        3rdparty/musl/libc-test/src/regression/pthread_cond-smasher.c
        3rdparty/musl/libc-test/src/regression/pthread_cond_wait-cancel_ignored.c
        3rdparty/musl/libc-test/src/regression/pthread_create-oom.c
        3rdparty/musl/libc-test/src/regression/pthread_exit-cancel.c
        3rdparty/musl/libc-test/src/regression/pthread_exit-dtor.c
        3rdparty/musl/libc-test/src/regression/pthread_once-deadlock.c
        3rdparty/musl/libc-test/src/regression/pthread-robust-detach.c
        3rdparty/musl/libc-test/src/regression/pthread_rwlock-ebusy.c
        3rdparty/musl/libc-test/src/regression/raise-race.c
        3rdparty/musl/libc-test/src/regression/regex-backref-0.c
        3rdparty/musl/libc-test/src/regression/regex-bracket-icase.c
        3rdparty/musl/libc-test/src/regression/regexec-nosub.c
        3rdparty/musl/libc-test/src/regression/regex-ere-backref.c
        3rdparty/musl/libc-test/src/regression/regex-escaped-high-byte.c
        3rdparty/musl/libc-test/src/regression/regex-negated-range.c
        3rdparty/musl/libc-test/src/regression/rewind-clear-error.c
        3rdparty/musl/libc-test/src/regression/rlimit-open-files.c
        3rdparty/musl/libc-test/src/regression/setenv-oom.c
        3rdparty/musl/libc-test/src/regression/sigaltstack.c
        3rdparty/musl/libc-test/src/regression/sigprocmask-internal.c
        3rdparty/musl/libc-test/src/regression/sigreturn.c
        3rdparty/musl/libc-test/src/regression/statvfs.c
        3rdparty/musl/libc-test/src/regression/syscall-sign-extend.c
        3rdparty/musl/libc-test/src/regression/tls_get_new-dtv.c
        3rdparty/musl/libc-test/src/regression/uselocale-0.c
    )
endif()
