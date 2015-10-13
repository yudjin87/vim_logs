syn match PROFILER ".*profiler\.cpp.*"

syn match WARNING_QML "Warning (qml).*\(qml\|js\):\d*"
syn match DEBUG_QML "Debug (qml).*\(qml\|js\):\d*"

syn match DEBUG_DAIMLER "Debug (daimler.*\(cpp\|h\):\d*"
syn match WARNING_DAIMLER "Warning (daimler.*\(cpp\|h\):\d*"

syn match TYPE_ERROR_QML "TypeError:.*"

syn match HEXES "0x\w*"

syn match SHITT "\[00m"
syn match SHITT "\[01;33m"

syn match FUNC_NAME "(in .*):"
syn match SOME_STRING "\".\{-}\""  " \{-} meains lazy capture in vim

syn match REQUEST "\s\w*#\d:RQ:.*)"
syn match RESPONSE "\s\w*#\d:RP:.*)"


" ParkingAssistanceSettingsServiceClient#3:RP:subscribe()
" (in virtual void ThriftMeLoggingAdapter::logString(const QString&, const qthriftme::logging::TLogLevel::Type&, const QString&, const QString&)):

