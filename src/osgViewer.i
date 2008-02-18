%module osgViewer

%include "globals.i"

%include osg_header.i
%include osgGA_header.i

/* import stuff from OpenSceneGraph */
%import osg.i
%import osgGA.i


%{

#include <osgViewer/CompositeViewer>
#include <osgViewer/GraphicsWindow>
#include <osgViewer/Scene>
#include <osgViewer/Version>
#include <osgViewer/View>
#include <osgViewer/Viewer>
#include <osgViewer/ViewerEventHandlers>
#include <osgViewer/ViewerBase>

#include <osg/GraphicsContext>

using namespace osg;

%}


/* remove the linkage macros */
%define OSG_EXPORT
%enddef
%define OSGVIEWER_EXPORT
%enddef


// ignore nested stuff and other dependencies

%ignore osgViewer::CompositeViewer::getCameras;
%ignore osgViewer::CompositeViewer::getContexts;
%ignore osgViewer::CompositeViewer::getWindows;
%ignore osgViewer::CompositeViewer::getAllThreads;
%ignore osgViewer::CompositeViewer::getOperationThreads;
%ignore osgViewer::CompositeViewer::getScenes;
%ignore osgViewer::CompositeViewer::getViews
%ignore osgViewer::CompositeViewer::getUsage;



/* include the actual headers */
%include osgViewer/Version
%include osgViewer/GraphicsWindow
%include osgViewer/Scene
%include osgViewer/ViewerBase
%include osgViewer/View
%include osgViewer/Viewer
%include osgViewer/CompositeViewer
%include osgViewer/ViewerEventHandlers


