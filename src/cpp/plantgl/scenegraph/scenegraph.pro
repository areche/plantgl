include(../plantgl.pri)

TARGET = SceneGraph
TEMPLATE = lib

CONFIG += create_prl link_prl

INCLUDEPATH += ../..

win32 {
    build_pass:CONFIG(debug, debug|release) {
        LIBS += -L$${OUT_PWD}/../tool/debug -lTool
        LIBS += -L$${OUT_PWD}/../math/debug -lMath
    } else {
        LIBS += -L$${OUT_PWD}/../tool/release -lTool
        LIBS += -L$${OUT_PWD}/../math/release -lMath
    }
} else {
    LIBS += -L$${OUT_PWD}/../tool -lTool
    LIBS += -L$${OUT_PWD}/../math -lMath
}

CGAL {
    LIBS += cgal-vc80-mt.lib
    INCLUDEPATH += $(CGALROOT)/include/CGAL/config/msvc $(CGALROOT)/auxiliary/gmp/include
    DEFINES += WITH_CGAL
}

SOURCES = \
    core/action.cpp \
    core/deepcopier.cpp \
    core/pgl_messages.cpp \
    core/sceneobject.cpp \
    appearance/appearance.cpp \
    appearance/color.cpp \
    appearance/material.cpp \
    appearance/monospectral.cpp \
    appearance/multispectral.cpp \
    appearance/spectrum.cpp \
    appearance/texture.cpp \
    container/geometryarray.cpp \
    container/indexarray.cpp \
    container/pointarray.cpp \
    container/pointmatrix.cpp \
    geometry/amapsymbol.cpp \
    geometry/asymmetrichull.cpp \
    geometry/beziercurve.cpp \
    geometry/bezierpatch.cpp \
    geometry/boundingbox.cpp \
    geometry/boundingsphere.cpp \
    geometry/box.cpp \
    geometry/cone.cpp \
    geometry/curve.cpp \
    geometry/cylinder.cpp \
    geometry/disc.cpp \
    geometry/elevationgrid.cpp \
    geometry/explicitmodel.cpp \
    geometry/extrudedhull.cpp \
    geometry/extrusion.cpp \
    geometry/faceset.cpp \
    geometry/frustum.cpp \
    geometry/geometry.cpp \
    geometry/group.cpp \
    geometry/hull.cpp \
    geometry/interpol.cpp \
    geometry/lineicmodel.cpp \
    geometry/mesh.cpp \
    geometry/nurbscurve.cpp \
    geometry/nurbspatch.cpp \
    geometry/paraboloid.cpp \
    geometry/parametricmodel.cpp \
    geometry/patch.cpp \
    geometry/planarmodel.cpp \
    geometry/pointset.cpp \
    geometry/polyline.cpp \
    geometry/primitive.cpp \
    geometry/profile.cpp \
    geometry/quadset.cpp \
    geometry/revolution.cpp \
    geometry/sor.cpp \
    geometry/sphere.cpp \
    geometry/swung.cpp \
    geometry/text.cpp \
    geometry/triangleset.cpp \
    scene/factory.cpp \
    scene/inline.cpp \
    scene/scene.cpp \
    scene/shape.cpp \
    transformation/axisrotated.cpp \
    transformation/deformed.cpp \
    transformation/eulerrotated.cpp \
    transformation/ifs.cpp \
    transformation/mattransformed.cpp \
    transformation/oriented.cpp \
    transformation/orthotransformed.cpp \
    transformation/scaled.cpp \
    transformation/screenprojected.cpp \
    transformation/tapered.cpp \
    transformation/transformed.cpp \
    transformation/translated.cpp \
    function/function.cpp \
    pgl_version.cpp

HEADERS = \
    core/action.h \
    core/deepcopier.h \
    core/pgl_messages.h \
    core/sceneobject.h \
    core/smbtable.h \
    appearance/appearance.h \
    appearance/color.h \
    appearance/material.h \
    appearance/monospectral.h \
    appearance/multispectral.h \
    appearance/spectrum.h \
    appearance/texture.h \
    container/colorarray.h \
    container/geometryarray.h \
    container/geometryarray2.h \
    container/indexarray.h \
    container/objectarray.h \
    container/pointarray.h \
    container/pointmatrix.h \
    geometry/amapsymbol.h \
    geometry/asymmetrichull.h \
    geometry/beziercurve.h \
    geometry/bezierpatch.h \
    geometry/boundingbox.h \
    geometry/boundingsphere.h \
    geometry/box.h \
    geometry/cone.h \
    geometry/curve.h \
    geometry/cylinder.h \
    geometry/disc.h \
    geometry/elevationgrid.h \
    geometry/explicitmodel.h \
    geometry/extrudedhull.h \
    geometry/extrusion.h \
    geometry/faceset.h \
    geometry/frustum.h \
    geometry/geometry.h \
    geometry/group.h \
    geometry/hull.h \
    geometry/interpol.h \
    geometry/lineicmodel.h \
    geometry/mesh.h \
    geometry/mesh_inline.h \
    geometry/nurbscurve.h \
    geometry/nurbspatch.h \
    geometry/paraboloid.h \
    geometry/parametricmodel.h \
    geometry/patch.h \
    geometry/planarmodel.h \
    geometry/pointset.h \
    geometry/polyline.h \
    geometry/primitive.h \
    geometry/profile.h \
    geometry/quadset.h \
    geometry/revolution.h \
    geometry/sor.h \
    geometry/sphere.h \
    geometry/swung.h \
    geometry/text.h \
    geometry/triangleset.h \
    scene/factory.h \
    scene/inline.h \
    scene/scene.h \
    scene/shape.h \
    transformation/axisrotated.h \
    transformation/deformed.h \
    transformation/eulerrotated.h \
    transformation/ifs.h \
    transformation/mattransformed.h \
    transformation/oriented.h \
    transformation/orthotransformed.h \
    transformation/scaled.h \
    transformation/screenprojected.h \
    transformation/tapered.h \
    transformation/transformed.h \
    transformation/translated.h \
    function/function.h \
    pgl_version.h \
    sg_config.h

