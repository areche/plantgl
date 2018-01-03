TEMPLATE = subdirs

SUBDIRS = math tool scenegraph algo

!android {
    SUBDIRS += gui
}
