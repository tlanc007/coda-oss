
set (source
AbstractOS.cpp
Backtrace.cpp
CMakeLists.txt
ConditionVarIrix.cpp
ConditionVarNSPR.cpp
ConditionVarPosix.cpp
ConditionVarSolaris.cpp
ConditionVarWin32.cpp
Conf.cpp
DLLUnix.cpp
DLLWin32.cpp
DateTime.cpp
Dbg.cpp
DirectoryEntry.cpp
ErrUnix.cpp
ErrWin32.cpp
ExecUnix.cpp
ExecWin32.cpp
FileFinder.cpp
FileUnix.cpp
FileWin32.cpp
LocalDateTime.cpp
MutexIrix.cpp
MutexNSPR.cpp
MutexPosix.cpp
MutexSolaris.cpp
MutexWin32.cpp
OSUnix.cpp
OSWin32.cpp
Path.cpp
ProcessUnix.cpp
ProcessWin32.cpp
ReadWriteMutex.cpp
SemaphoreIrix.cpp
SemaphorePosix.cpp
SemaphoreSolaris.cpp
SemaphoreWin32.cpp
StopWatch.cpp
SyncFactoryIrix.cpp
ThreadIrix.cpp
ThreadNSPR.cpp
ThreadPosix.cpp
ThreadSolaris.cpp
ThreadWin32.cpp
UTCDateTime.cpp
)

add_library (sys ${source})
target_link_libraries (sys)

