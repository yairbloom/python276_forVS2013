set OPTS=no-asm


call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64


cd ..\..\Tools\

if not exist  openssl-1.0.1e\out32dll.dbg\ssleay32.dll (
    cd openssl-1.0.1e
	perl Configure debug-VC-WIN64A
	call ms\do_win64a
	nmake -f ms\ntdll.mak
	cd ..
)

if not exist tcltk64\bin\tcl85g.dll (
    cd tcl-8.5.2.1\win
    nmake -f makefile.vc COMPILERFLAGS=-DWINVER=0x0500 DEBUG=1 MACHINE=AMD64 INSTALLDIR=..\..\tcltk64 clean all
    nmake -f makefile.vc COMPILERFLAGS=-DWINVER=0x0500 DEBUG=1 MACHINE=AMD64 INSTALLDIR=..\..\tcltk64 install
    cd ..\..
)

if not exist tcltk64\bin\tk85g.dll (
    cd tk-8.5.2.0\win    
    nmake -f makefile.vc COMPILERFLAGS=-DWINVER=0x0500 OPTS=noxp DEBUG=1 MACHINE=AMD64 INSTALLDIR=..\..\tcltk64 TCLDIR=..\..\tcl-8.5.2.1 clean
    nmake -f makefile.vc COMPILERFLAGS=-DWINVER=0x0500 OPTS=noxp DEBUG=1 MACHINE=AMD64 INSTALLDIR=..\..\tcltk64 TCLDIR=..\..\tcl-8.5.2.1 all
    nmake -f makefile.vc COMPILERFLAGS=-DWINVER=0x0500 OPTS=noxp DEBUG=1 MACHINE=AMD64 INSTALLDIR=..\..\tcltk64 TCLDIR=..\..\tcl-8.5.2.1 install
    cd ..\..
)



:end
