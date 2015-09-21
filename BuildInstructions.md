# Introduction #
This page can collect how-tos and tips for building your version of osgSWIG

# Requirements #
You will need cmake (>=2.4) and swig (>=1.33)

Do a checkout of osgSWIG, e.g.
```
 svn checkout http://osgswig.googlecode.com/svn/trunk/ osgswig
```

For better compatibility, check out, build and install osg version 2.4 from svn:
```
 svn co http://www.openscenegraph.org/svn/osg/OpenSceneGraph/tags/OpenSceneGraph-2.4.0 OpenSceneGraph
```

## Linux ##

It is advisable to make a seperate build directory, from which cmake/ccmake is run. Press 'c', then 'g' to generate the project, 'q' to exit ccmake.

osgSWIG will look for OpenSceneGraph headers in either the default install directories, or specified by the following environment variables:
```
OSG_INCLUDE_DIR
OSG_GEN_INCLUDE_DIR
```


Use the `make` command to start the building. After building was succesful, the build directory will contain lib/python.

For "experimental" running, one can directly set the PYTHONPATH environment variables to this dir to allow python to find it, e.g.
```
#bash example for setting PYTHONPATH to ~/develop/osgswig-svn/build-2.4.0/lib/python
OSGSWIG_VERSION="-2.4.0"
export OSGSWIG_DIR=$HOME/develop/osgswig-svn
export OSGSWIG_DIR_LIB=$OSGSWIG_DIR/build${OSGSWIG_VERSION}/lib/python
export PYTHONPATH=${OSGSWIG_DIR_LIB}:$PYTHONPATH
```

Alternatively, you can copy the contents of the lib/python dir to the site-packages dir of your python installation, for example ` /usr/lib/python2.5/site-packages/OpenSceneGraph`. In this new directory, make sure to create an (empty) init.py file. Note that in this case, you'll have to prepend the `OpenSceneGraph` package name before python imports:
```
from OpenSceneGraph import osg, osgDB
v = osg.Vec3(1,2,3)
```

A setuptools / Ezsetup would be preferable.

## Windows ##
Use Visual Studio
Mingw anyone?

## Mac OS/X ##