include(../plantgl.pri)

TARGET = Gui
TEMPLATE = lib

QT += widgets opengl network printsupport
CONFIG += create_prl link_prl

INCLUDEPATH += ../..
LIBS += -L$${OUT_PWD}/../tool -lTool
LIBS += -L$${OUT_PWD}/../math -lMath
LIBS += -L$${OUT_PWD}/../scenegraph -lSceneGraph
LIBS += -L$${OUT_PWD}/../algo -lAlgo

FORMS = \
     base/interface/cameraqt.ui \
     base/interface/cameraqt2.ui \
     base/interface/clippingplanewidget.ui \
     base/interface/controlpanelwidget.ui \
     base/interface/fogwidget.ui \
     base/interface/frameglsizedialog.ui \
     base/interface/gloptions.ui \
     base/interface/linewidthcontrol.ui \
     base/interface/messagedisplayer.ui \
     base/interface/qbrowser.ui \
     base/interface/rotcenteredit.ui \
     viewer/interface/approximation.ui \
     viewer/interface/codecview.ui \
     viewer/interface/importselection.ui \

SOURCES = \
    base/camera.cpp \
    base/clippingplane.cpp \
    base/fog.cpp \
    base/grid.cpp \
    base/light.cpp \
    base/modalscenegl.cpp \
    base/modalwidget.cpp \
    base/object.cpp \
    base/rotcenter.cpp \
    base/scenegl.cpp \
    base/appli.cpp \
    base/application.cpp \
    base/simpleappli.cpp \
    base/threadedappli.cpp \
    base/browser.cpp \
    base/configuration.cpp \
    base/controlpanel.cpp \
    base/daemon.cpp \
    base/errordialog.cpp \
    base/event.cpp \
    base/filemanager.cpp \
    base/glframe.cpp \
    base/guicon.cpp \
    base/helpmenu.cpp \
    base/icons.cpp \
    base/info.cpp \
    base/locationbar.cpp \
    base/properties.cpp \
    base/qobjectbrowser.cpp \
    base/translator.cpp \
    base/util_qwidget.cpp \
    base/viewer.cpp \
    base/zbuffer.cpp \
    viewer/materialeditor.cpp \
    viewer/pglapplication.cpp \
    viewer/editgeomscenegl.cpp \
    viewer/geomevent.cpp \
    viewer/geomscenegl.cpp \
    viewer/geomsceneio.cpp \
    viewer/geomsceneqt.cpp \
    viewer/linetree.cpp \
    viewer/pglviewer.cpp \
    viewer/qgeomlistview.cpp \
    viewer/reader.cpp \
    viewer/util_geomgl.cpp \

HEADERS = \
    base/camera.h \
    base/clippingplane.h \
    base/fog.h \
    base/grid.h \
    base/light.h \
    base/modalscenegl.h \
    base/modalwidget.h \
    base/object.h \
    base/rotcenter.h \
    base/scenegl.h \
    base/appbuilder.h \
    base/appli.h \
    base/application.h \
    base/simpleappli.h \
    base/threadedappli.h \
    base/browser.h \
    base/configuration.h \
    base/controlpanel.h \
    base/daemon.h \
    base/errordialog.h \
    base/event.h \
    base/filemanager.h \
    base/glframe.h \
    base/guicon.h \
    base/helpmenu.h \
    base/icons.h \
    base/info.h \
    base/locationbar.h \
    base/properties.h \
    base/qobjectbrowser.h \
    base/translator.h \
    base/util_qwidget.h \
    base/util_serializedobj.h \
    base/viewer.h \
    base/zbuffer.h \
    viewer/materialeditor.h \
    viewer/moduleeditor.h \
    viewer/pglapplication.h \
    viewer/editgeomscenegl.h \
    viewer/geomevent.h \
    viewer/geomscenegl.h \
    viewer/linetree.h \
    viewer/pglviewer.h \
    viewer/qgeomlistview.h \
    viewer/reader.h \
    viewer/util_geomgl.h \
    viewer/util_qstring.h \
    gui_config.h \
