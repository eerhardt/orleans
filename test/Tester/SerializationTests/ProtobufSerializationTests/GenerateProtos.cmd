REM This is a script to generate C# from proto files.
REM Execute it in the same folder with your .proto files
REM Have to explicitely list all .proto files as arguments

@echo on

SET CMDHOME=%~dp0
SET PROTOCEXE="%CMDHOME%\..\..\..\packages\Google.Protobuf.3.0.0-alpha4\tools\protoc.exe"
SET PROTO_FILES_LIST=%CMDHOME%\addressbook.proto  %CMDHOME%\counter.proto

%PROTOCEXE% --csharp_out=. --proto_path=%CMDHOME%   %PROTO_FILES_LIST%

pause