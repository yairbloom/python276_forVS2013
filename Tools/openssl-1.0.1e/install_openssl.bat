perl Configure --openssldir=C:\DevTools\OPENSSL debug-VC-WIN64A
call ms\do_win64a
nmake -f ms\ntdll.mak
nmake -f ms\ntdll.mak install