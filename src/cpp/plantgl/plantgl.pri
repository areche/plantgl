include(../../../config.pri)

DEFINES += USING_QMAKE

CONFIG += create_prl c++14

DESTDIR = $$top_builddir/lib
LIBS += -L$$top_builddir/lib

UnityModule {
    QT -= gui core
    CONFIG += static

    DEFINES += PGL_WITHOUT_QT
    DEFINES += ALGO_NODLL
    DEFINES += PGLMATH_NODLL
    DEFINES += SG_NODLL
    DEFINES += TOOLS_NODLL
} else {
    CONFIG += OpenGL
}

macx {
    QMAKE_APPLE_DEVICE_ARCHS="x86_64"
}

