%module osgUtil

%include "globals.i"

%include "std_vector.i"
%include "std_string.i"

/* import headers */
%include osg_header.i

/* import stuff from OpenSceneGraph */
%import osg.i


%{

#include <osgUtil/CubeMapGenerator>
#include <osgUtil/CullVisitor>
#include <osgUtil/DelaunayTriangulator>
#include <osgUtil/DisplayRequirementsVisitor>
#include <osgUtil/Export>
#include <osgUtil/GLObjectsVisitor>
#include <osgUtil/HalfWayMapGenerator>
#include <osgUtil/HighlightMapGenerator>
#include <osgUtil/IntersectVisitor>
#include <osgUtil/Optimizer>
#include <osgUtil/PositionalStateContainer>
#include <osgUtil/ReflectionMapGenerator>
#include <osgUtil/RenderBin>
#include <osgUtil/RenderLeaf>
#include <osgUtil/RenderStage>
#include <osgUtil/SceneView>
#include <osgUtil/Simplifier>
#include <osgUtil/SmoothingVisitor>
#include <osgUtil/StateGraph>
#include <osgUtil/Statistics>
#include <osgUtil/TangentSpaceGenerator>
// #include <osgUtil/Tesselator>
#include <osgUtil/TransformAttributeFunctor>
#include <osgUtil/TransformCallback>
#include <osgUtil/TriStripVisitor>
#include <osgUtil/UpdateVisitor>
#include <osgUtil/Version>


%}


%define OSG_EXPORT
%enddef
%define OSGUTIL_EXPORT
%enddef

%ignore osgUtil::SceneView::ComputeStereoMatricesCallback;
%ignore osgUtil::SceneView::setComputeStereoMatricesCallback;
%ignore osgUtil::SceneView::getComputeStereoMatricesCallback;

%ignore osg

%ignore osgUtil::RenderBin::setSortCallback;
%ignore osgUtil::RenderBin::getSortCallback;
%ignore osgUtil::RenderBin::setDrawCallback;
%ignore osgUtil::RenderBin::getDrawCallback;
%ignore osgUtil::Optimizer::setIsOperationPermissibleForObjectCallback;
%ignore osgUtil::Optimizer::getIsOperationPermissibleForObjectCallback;
%ignore osgUtil::Simplifier::setContinueSimplificationCallback;
%ignore osgUtil::Simplifier::getContinueSimplificationCallback;

%include osgUtil/RenderLeaf
%include osgUtil/StateGraph
%include osgUtil/RenderBin
%include osgUtil/PositionalStateContainer
%include osgUtil/RenderStage
%include osgUtil/CubeMapGenerator
%include osgUtil/CullVisitor
%include osgUtil/DelaunayTriangulator
%include osgUtil/DisplayRequirementsVisitor
%include osgUtil/GLObjectsVisitor
%include osgUtil/HalfWayMapGenerator
%include osgUtil/HighlightMapGenerator
%include osgUtil/IntersectVisitor
%include osgUtil/Optimizer
%include osgUtil/ReflectionMapGenerator
%include osgUtil/SceneView
%include osgUtil/Simplifier
%include osgUtil/SmoothingVisitor
%include osgUtil/Statistics
%include osgUtil/TangentSpaceGenerator
// %include osgUtil/Tesselator
%include osgUtil/TransformAttributeFunctor
%include osgUtil/TransformCallback
%include osgUtil/TriStripVisitor
%include osgUtil/UpdateVisitor
%include osgUtil/Version
