include(../plantgl.pri)

TARGET = Tool
TEMPLATE = lib

SOURCES = \
    bfstream.cpp \
    dirnames.cpp \
    errormsg.cpp \
    readline.cpp \
    sequencer.cpp \
    timer.cpp \
    util_array2.cpp \
    util_enviro.cpp
    
HEADERS = \
    bfstream.h \
    dirnames.h \
    errormsg.h \
    gsmbtable.h \
    rcobject.h \
    readline.h \
    sequencer.h \
    std.h \
    timer.h \
    util_array.h \
    util_array2.h \
    util_arrayn.h \
    util_assert.h \
    util_cache.h \
    util_enviro.h \
    util_hash.h \
    util_hashmap.h \
    util_hashset.h \
    util_string.h \
    util_tuple.h \
    util_types.h \
    tools_config.h

!UnityModule {
    HEADERS += gparser.h \
               gscanner.h \
               gscanner_imp.h
}
