
set document=%~dp0%1
set tmpfile=%document%.tmp.tsi
set document_encoding=utf-8-sig
set tmpfile_encoding=%2
set converter=..\tools\convert.py

%converter% %document% %document_encoding% %tmpfile% %tmpfile_encoding% || exit 1
%~dp0..\tools\treespice\TreeSpice.exe %tmpfile% || exit 1
%converter% %tmpfile% %tmpfile_encoding% %document% %document_encoding% || exit 1
del %tmpfile% || exit 1

endlocal
https://github.dev/FarGroup/FarManager/blob/f9227d4616da6490d1fcf41355b3d0873f8eab21/_build/vc/all.sln#L20