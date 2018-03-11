TEMPLATE = subdirs

math.subdir = math
math.target = math

tool.subdir = tool
tool.target = tool

scenegraph.subdir = scenegraph
scenegraph.target = scenegraph
scenegraph.depends = math tool

algo.subdir = algo
algo.target = algo
algo.depends = math tool scenegraph

SUBDIRS = math tool scenegraph algo

!android {
    SUBDIRS += gui
}
