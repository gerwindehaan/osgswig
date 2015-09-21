# SWIG based bindings for OpenSceneGraph #

[OpenSceneGraph](http://www.openscenegraph.org) provides a comprehensive scene graph on top of [OpenGL](http://www.opengl.org/). The **osgSWIG** project utilises [SWIG](http://www.swig.org) to generate bindings for this C++-based scene graph for various higher-level languages. Our main target is currently **Python**, but others of interest are Java, Ruby,  and Lua.

With **osgSWIG** one can harness much of the power of the OpenSceneGraph API from a higher-level dynamic or "scripting" language, for example to:
  * ...learn what's OpenSceneGraph is about without doing C++ and STL.
  * ..."glue" OpenSceneGraph together with external toolkits.
  * ...script a converter for foreign data in files or databases to/from OpenSceneGraph formats.
  * ...quickly prototype interactive OpenSceneGraph applications.

More detailed information on its use and users can be found on this page's [wiki](http://code.google.com/p/osgswig/w/list).

_If you have questions, suggestions, comments or issues with osgSWIG, please inform the developers through posting on the [osg-users](http://www.openscenegraph.org/projects/osg/wiki/MailingLists) mailing list, and/or open an item on the [Issue List](http://code.google.com/p/osgswig/issues/list)_.

## OpenSceneGraph version compatibility ##
The main targets for compatibility
| **OpenSceneGraph version** | .SO version | **status** |
|:---------------------------|:------------|:-----------|
| **3.0.0+**| 78+         | hg 22ad146baba1 and higher, stable release |

Previously used targets, only listed for completeness
| **OpenSceneGraph version** | .SO version | **status** |
|:---------------------------|:------------|:-----------|
| 2.9.11+                    | 71+         | hg r1444be8199b4 and higher|
| 2.8.3                      | 65          | osg stable target, **use this clone** [clone](http://code.google.com/r/megamillerzoid-stable-osg/source/browse) |
| 2.9.7                      | 63          | hg [r9188206266](https://code.google.com/p/osgswig/source/detail?r=9188206266) and higher, osgAnimation not complete |
| 2.9.x                      | 60          | from svn [r208](https://code.google.com/p/osgswig/source/detail?r=208) in progress, "solutions" for MixedInVector available |
| 2.8.x                      | 55+         | [r207](https://code.google.com/p/osgswig/source/detail?r=207), "works" with restrictions introduced by MixedInVector (see [issue 25](http://code.google.com/p/osgswig/issues/detail?id=12)) |
| 2.6.x                      | ..          | "works", but currently without VecArray support (see [issue 12](http://code.google.com/p/osgswig/issues/detail?id=12)) |
| 2.4.x                      | 35+         | "works"    |

## Features ##

Exposure of the
[OpenSceneGraph](http://www.openscenegraph.org) API to various target languages.

  * all main Nodekits supported
  * convenient installer for Windows
  * bundled with the [GPL v2](http://www.gnu.org/licenses/old-licenses/gpl-2.0.html) version of osgART - Augmented Reality Toolkit for [OpenSceneGraph](http://www.openscenegraph.org) by the [HITLabNZ](http://www.hitlabnz.org)


## Licensing ##

  * Files in the repository are under the MIT license
  * Files in the installer follow the respective licensing of their originating modules - mostly OSGPL
  * Using the osgART module bundled with the installer imposes the [GPL v2](http://www.gnu.org/licenses/old-licenses/gpl-2.0.html) upon your scripts



