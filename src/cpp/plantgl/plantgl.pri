DEFINES += USING_QMAKE

UnityModule {
    QT -= gui core
    CONFIG += static

    DEFINES += PGL_WITHOUT_QT
    DEFINES += ALGO_NODLL
    DEFINES += PGLMATH_NODLL
    DEFINES += SG_NODLL
    DEFINES += TOOLS_NODLL
}

macx {
    QMAKE_APPLE_DEVICE_ARCHS="x86_64"
}

