# Introduction #

Installing osgPython can be daunting task for the uninitiated. This page will quickly guide you through the process of installing Python.

**osgPython requires you to install the Python interpreter on your system prior to running the osgPython installer.**

## Prerequisites ##

We assume your target is to do interactive 3D graphics using the OpenSceneGraph Python bindings which I call osgPython. This also assumes that the following things are in place:

  * Windows XP or Vista (**any other Windows derivate is unsupported**)
  * 3D graphics adapter with OpenGL

Optional you might want:

  * web camera for doing Augmented Reality using the bundled version of osgART
  * printer for printing out the markers for osgART
  * game pads, tracking devices etc. if you want to use the bundled version of osgVRPN


## Installing Python ##

The [Python project](http://www.python.org) provides a very easy to use installer. Head over to the [Python Download page](http://www.python.org/download) and choose the [2.5.x Windows installer](http://www.python.org/ftp/python/2.5.1/python-2.5.1.msi). After downloading install the package and follow the instructions. It is highly recommended to stay with the default settings the Python installer ships with.

## Installing osgPython ##

Make sure you followed the steps of installing Python listed above. Now it is time to download the installer for osgPython.

[Download from here](http://code.google.com/p/osgswig/downloads/list)

If you run the installer, it should detect the so called _site-packages_ of your Python installation. Follow the instructions of the installer and leave the default settings.

The Windows version of the osgPython installer bundles all core libraries of OpenSceneGraph and two additional libraries called osgART and osgVRPN. These latter two packages might be of interest if you want to use Python for creating Augmented Reality or Virtual Reality applications.

## Hello World ##

Hello World in OpenSceneGraph style is to check if you can see something some 3D graphics professionals are referring to as the _Performer Cow_. All you need to do is, go into the start menu and select:

**All Programs > osgPython > Examples > Viewer > Run**