include(../plantgl.pri)

TARGET = Math
TEMPLATE = lib

CONFIG += create_prl

INCLUDEPATH += ../..

SOURCES = \
    util_math.cpp \
    util_matrix.cpp \
    util_vector.cpp

HEADERS = \
    linearalgebra.h \
    util_deformation.h \
    util_math.h \
    util_matrix.h \
    util_matrixmath.h \
    util_polymath.h \
    util_vector.h \
    math_config.h
