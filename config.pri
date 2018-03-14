#CONFIG += QHull

#CONFIG += CGAL

macx {
    # Python configuration
    PYTHON_INCLUDE = /usr/include/python2.7
    PYTHON_LIB = /usr/lib/python2.7/config

    # Boost configuration
    BOOST_INCLUDE = /usr/local/include
    BOOST_LIB = /usr/local/lib
}

win32 {
}
