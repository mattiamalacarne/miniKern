# miniKern
Un piccolo Kernel creato a scopo "didattico", il kernel è completamente base e svolgerà inizialmente le semplici funzioni di stampa a video... 

## Creazione del compilatore (GCC Cross-Compiler)
Per facilitarne la creazione ho inserito questo script che fa il lavoro per noi <br>
**N.B. Il tutto è ancora da testare, non è detto che funzioni questo script.**

Lo script non è sviluppato da me.<br>
> Link dello script: http://preshing.com/20141119/how-to-build-a-gcc-cross-compiler/<br>

**Lo script va configurato, modificare le variabili prima di eseguirlo.**

```
INSTALL_PATH=/opt/cross
TARGET=aarch64-linux
USE_NEWLIB=0
LINUX_ARCH=arm64
CONFIGURATION_OPTIONS="--disable-multilib" # --disable-threads --disable-shared
PARALLEL_MAKE=-j4
BINUTILS_VERSION=binutils-2.24
GCC_VERSION=gcc-4.9.2
LINUX_KERNEL_VERSION=linux-3.17.2
GLIBC_VERSION=glibc-2.20
MPFR_VERSION=mpfr-3.1.2
GMP_VERSION=gmp-6.0.0a
MPC_VERSION=mpc-1.0.2
ISL_VERSION=isl-0.12.2
CLOOG_VERSION=cloog-0.18.1
```
