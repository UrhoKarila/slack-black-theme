SET slackdir = %localappdata%
echo %slackdir%
dir

for /d %%v in (%localappdata%\slack\app-*) do (
    @echo %%v
    COPY \b %%v\resources\app.asar.unpacked\src\static\ssb-interop.js+.\append.js %%v\resources\app.asar.unpacked\src\static\ssb-interop.js
)
