(development stub, please add stuff)

# Introduction #

Osgswig is one of the many available wrappers for osg. It is usable, but we currently lack a good insight on the status of the software.

That is, we need to get clear what's working and what's not. For this, we need to have some structured way to describe and tackle often encountered development issues:

  * Coping with OSG vs. SWIG troubles (e.g. typemaps, nested classes)
  * Keeping in sync with OSG, SWIG versions
  * Language Feature differences
  * Performance
  * unit testing

For potential "end-"users, it would be nice to have:

  * Why osgswig?
    * Feature table
    * comparison with other wrappers
  * Examples
    * examples of OSG wrapped features
    * OSG examples converted to wrapped-style, see the examples of [PyOSG](http://code.astraw.com/projects/pyosg/browser/trunk/pyosg/PyOSG/examples)
    * examples of wrapped integration with other libs, e.g. VTK, PIL, ODE
  * active "real-life" use of the wrappers
  * Memory and Performance impact

Down here we can start discussing these issues and gradually shape them into a document. Please add your thoughts and possibly credentials and use down below.

## Coping with OSG vs. SWIG troubles ##
  * typemaps
  * nested classes
  * Wrapped types vs. OSG types

## Keeping in sync with OSG Versions ##

Propose to use SVN tags (/branches?) to match OSG releases. Also:

  * backwards-patching and providing windows/mac installers for the latest stable OSG release: (Latest Stable Release 2.2, released 4th October 2007)

  * Provide ready-packed binaries for different platforms and processor types
    * Win32, Win64 versions
    * Linux32, Linux64 versions
    * MacOSx versions (?)

## Wrapped integration with other libs ##
Currently in use for Python
  * VTK, the Visualisation Toolkit
  * PIL, Python Imaging Library
  * IPython, integrating an interactive interpreter during a running osg.
  * pyGTK, gtk widgets