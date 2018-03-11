include(../plantgl.pri)

TARGET = Algo
TEMPLATE = lib

QT += opengl

CONFIG += create_prl link_prl

LIBS += -L$${OUT_PWD}/../tool -lTool
    LIBS += -L$${OUT_PWD}/../scenegraph -lSceneGraph
LIBS += -L$${OUT_PWD}/../math -lMath

#CONFIG += QHull

#CONFIG += CGAL

INCLUDEPATH += ../..
INCLUDEPATH += codec

QHull {
    LIBS += qhull-vc80.lib
    DEFINES += WITH_QHULL
}

CGAL {
    LIBS += cgal-vc80-mt.lib
    INCLUDEPATH += $(CGALROOT)/include/CGAL/config/msvc $(CGALROOT)/auxiliary/gmp/include
    DEFINES += WITH_CGAL
}

Win32 {
    DEFINES += ALGO_MAKEDLL
}

SOURCES = \
    base/amaptranslator.cpp \
    base/bboxcomputer.cpp \
    base/bspherecomputer.cpp \
    base/curvemanipulation.cpp \
    base/discretizer.cpp \
    base/matrixcomputer.cpp \
    base/merge.cpp \
    base/polygoncomputer.cpp \
    base/skelcomputer.cpp \
    base/statisticcomputer.cpp \
    base/surfcomputer.cpp \
    base/tesselator.cpp \
    base/volcomputer.cpp \
    base/wirecomputer.cpp \
    codec/binaryprinter.cpp \
    codec/linetreeprinter.cpp \
    codec/plyprinter.cpp \
    codec/povprinter.cpp \
    codec/printer.cpp \
    codec/pyprinter.cpp \
    codec/vgstarprinter.cpp \
    codec/vrmlprinter.cpp \
    codec/x3dprinter.cpp \
    codec/xmlprinter.cpp \
    codec/dtafile.cpp \
    codec/geomview_file.cpp \
    codec/ligfile.cpp \
    codec/scne_binaryparser.cpp \
    codec/vgsfile.cpp \
    codec/cdc_geom.cpp \
    codec/cdc_pov.cpp \
    codec/cdc_vgstar.cpp \
    codec/cdc_vrml.cpp \
    codec/codecs.cpp \
    fitting/branchcompressor.cpp \
    fitting/eigenvector.cpp \
    fitting/fit.cpp \
    fitting/miniball.cpp \
    fitting/skeleton.cpp \
    opengl/glbboxrenderer.cpp \
    opengl/glctrlptrenderer.cpp \
    opengl/glrenderer.cpp \
    opengl/glskelrenderer.cpp \
    opengl/gltransitionrenderer.cpp \
    opengl/util_glu.cpp \
    opengl/util_glut.cpp \
    raycasting/ray.cpp \
    raycasting/rayintersection.cpp \
    raycasting/util_intersection.cpp \
    modelling/turtle.cpp \
    grid/mvs.cpp \
    grid/octree.cpp \
    grid/octreenode.cpp \
    grid/tile.cpp \
    grid/voxel.cpp \
    grid/voxelintersection.cpp

HEADERS = \
    base/amaptranslator.h \
    base/bboxcomputer.h \
    base/bspherecomputer.h \
    base/curvemanipulation.h \
    base/discretizer.h \
    base/matrixcomputer.h \
    base/merge.h \
    base/pointmanipulation.h \
    base/polygoncomputer.h \
    base/skelcomputer.h \
    base/statisticcomputer.h \
    base/surfcomputer.h \
    base/tesselator.h \
    base/volcomputer.h \
    base/wirecomputer.h \
    codec/codec_config.h \
    codec/binaryprinter.h \
    codec/linetreeprinter.h \
    codec/plyprinter.h \
    codec/povprinter.h \
    codec/printer.h \
    codec/pyprinter.h \
    codec/vgstarprinter.h \
    codec/vrmlprinter.h \
    codec/x3dprinter.h \
    codec/xmlprinter.h \
    codec/dtafile.h \
    codec/geomview_file.h \
    codec/ligfile.h \
    codec/scne_binaryparser.h \
    codec/vgsfile.h \
    codec/cdc_geom.h \
    codec/cdc_pov.h \
    codec/cdc_vgstar.h \
    codec/cdc_vrml.h \
    codec/codecs.h \
    fitting/branchcompressor.h \
    fitting/eigenvector.h \
    fitting/fit.h \
    fitting/miniball.h \
    fitting/miniball_config.h \
    fitting/skeleton.h \
    opengl/glbboxrenderer.h \
    opengl/glctrlptrenderer.h \
    opengl/glrenderer.h \
    opengl/glskelrenderer.h \
    opengl/gltransitionrenderer.h \
    opengl/util_appegl.h \
    opengl/util_gl.h \
    opengl/util_glu.h \
    opengl/util_glut.h \
    raycasting/ray.h \
    raycasting/rayintersection.h \
    raycasting/util_intersection.h \
    modelling/pglturtle.h \
    modelling/turtle.h \
    modelling/turtleparam.h \
    grid/mvs.h \
    grid/octree.h \
    grid/octreenode.h \
    grid/regularpointgrid.h \
    grid/tile.h \
    grid/voxel.h \
    grid/voxelintersection.h \
    algo_config.h


!UnityModule {
    LEXSOURCES = codec/scne_scanner.l
    YACCSOURCES = codec/scne_parser.y
}
