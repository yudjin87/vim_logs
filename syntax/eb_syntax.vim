syn match HexNumbers "0x\w*"

"syn match TimeMsg "\d\d:\d\d:\d\d\.\d\d\d"

syn match FatalMsg "(###).*"
syn match ErrorMsg "(\*\*\*).*"
syn match WarnMsg "(!!!).*"
syn match InfoMsg "(===).*"	contains=HexNumbers
syn match DebugMsg "(---).*" 	contains=HexNumbers
syn match VerboseMsg "(   ).*"	

syn region VerboseMsg start=/QMap/ end=/.*\n\n/




