syn match HexNumbers "0x\w*"

"syn match TimeMsg "\d\d:\d\d:\d\d\.\d\d\d"

syn match FatalMsg "(###).*"
syn match ErrorMsg "(\*\*\*).*"	contains=HexNumbers
syn match WarnMsg "(!!!).*" 	contains=HexNumbers
syn match InfoMsg "(===).*"	contains=HexNumbers
syn match DebugMsg "(---).*" 	contains=HexNumbers
syn match VerboseMsg "(   ).*"	contains=HexNumbers

syn region VerboseMsg start=/QMap/ end=/.*\n\n/




