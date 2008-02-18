%module(directors="1") osg

%include "typemaps.i"
%include "std_vector.i"
%include "std_string.i"

%include "globals.i"

%include "osg_header.i"


#ifdef SWIGCSHARP
# %include GL/gl.h
#else
typedef unsigned int GLenum;
typedef float GL_FLOAT;
typedef double GL_DOUBLE;
#endif

%{

#include <osg/ref_ptr>

#if (OSG_VERSION_MAJOR > 1)
#include <osg/DeleteHandler>
#endif
#include <osg/Notify>
#include <osg/ApplicationUsage>
#include <osg/AnimationPath>
#include <osg/ArgumentParser>
#include <osg/Array>
#include <osg/Version>
#include <osg/State>
#include <osg/StateSet>
#include <osg/StateAttribute>
#include <osg/Node>
#include <osg/Group>
#include <osg/Switch>
#include <osg/MatrixTransform>
#include <osg/Projection>
#include <osg/CullSettings>
#include <osg/ColorMask>

#include <osg/Light>
#include <osg/LightModel>
#include <osg/LightSource>

#if (OSG_VERSION_MAJOR > 1)
#if (OSG_VERSION_MINOR > 0)
#include <osg/OperationThread>
#endif
#include <osg/GraphicsThread>
#include <osg/GraphicsContext>
#endif

#include <osg/TexMat>
#include <osg/TexEnv>
#include <osg/TexEnvCombine>
#include <osg/TexEnvFilter>

#include <osg/TexGen>
#include <osg/TexGenNode>

#include <osg/Texture>
#include <osg/Texture1D>
#include <osg/Texture2D>
#include <osg/Texture3D>
#include <osg/TextureCubeMap>
#include <osg/TextureRectangle>
#include <osg/AlphaFunc>
#include <osg/BlendFunc>
#include <osg/BlendEquation>
#include <osg/BlendColor>

#include <osg/VertexProgram>

#include <osg/Node>
#include <osg/Geode>
#include <osg/Billboard>

#if (OSG_VERSION_MAJOR > 0)

#include <osg/PositionAttitudeTransform>
#include <osg/AutoTransform>
#include <osg/Camera>
#include <osg/CameraView>
#include <osg/Uniform>

#endif

#include <osg/Timer>

%}

%define OSG_EXPORT
%enddef

// language specific renames
#if defined(SWIGRUBY)
%rename(allocatefield) osg::HeightField::allocate(unsigned int numColumns,unsigned int numRows);
#endif


%ignore osg::Referenced::operator=;

%ignore osg::Vec2f::operator[];
%ignore osg::Vec2f::operator*=;
%ignore osg::Vec2f::operator/=;
%ignore osg::Vec2f::operator+=;
%ignore osg::Vec2f::operator-=;

/* ignore all by reference version */
%ignore osg::Vec2f::x();
%ignore osg::Vec2f::y();

%ignore osg::Vec3f::operator[];
%ignore osg::Vec3f::operator*=;
%ignore osg::Vec3f::operator/=;
%ignore osg::Vec3f::operator+=;
%ignore osg::Vec3f::operator-=;

// ignore all by reference version
%ignore osg::Vec3f::x();
%ignore osg::Vec3f::y();
%ignore osg::Vec3f::z();



%ignore osg::Vec4f::operator[];
%ignore osg::Vec4f::operator*=;
%ignore osg::Vec4f::operator/=;
%ignore osg::Vec4f::operator+=;
%ignore osg::Vec4f::operator-=;
/* ignore all by reference version */
%ignore osg::Vec4f::x();
%ignore osg::Vec4f::y();
%ignore osg::Vec4f::z();
%ignore osg::Vec4f::w();
%ignore osg::Vec4f::r();
%ignore osg::Vec4f::g();
%ignore osg::Vec4f::b();
%ignore osg::Vec4f::a();


/* Double precision */

%ignore osg::Vec2d::operator[];
%ignore osg::Vec2d::operator*=;
%ignore osg::Vec2d::operator/=;
%ignore osg::Vec2d::operator+=;
%ignore osg::Vec2d::operator-=;
/* ignore all by reference version */
%ignore osg::Vec2d::x();
%ignore osg::Vec2d::y();

%ignore osg::Vec3d::operator[];
%ignore osg::Vec3d::operator*=;
%ignore osg::Vec3d::operator/=;
%ignore osg::Vec3d::operator+=;
%ignore osg::Vec3d::operator-=;
/* ignore all by reference version */
%ignore osg::Vec3d::x();
%ignore osg::Vec3d::y();
%ignore osg::Vec3d::z();

%ignore osg::Vec4d::operator[];
%ignore osg::Vec4d::operator*=;
%ignore osg::Vec4d::operator/=;
%ignore osg::Vec4d::operator+=;
%ignore osg::Vec4d::operator-=;

/* ignore all by reference version */
%ignore osg::Vec4d::x();
%ignore osg::Vec4d::y();
%ignore osg::Vec4d::z();
%ignore osg::Vec4d::w();
%ignore osg::Vec4d::r();
%ignore osg::Vec4d::g();
%ignore osg::Vec4d::b();
%ignore osg::Vec4d::a();


%ignore osg::Geometry::s_InvalidArrayData;



/* getRotate conversion */
%apply double *OUTPUT {double &angle, double &x, double &y, double &z};

%ignore osg::Quat::operator[];
%ignore osg::Quat::operator*=;
%ignore osg::Quat::operator/=;
%ignore osg::Quat::operator+=;
%ignore osg::Quat::operator-=;
%ignore osg::Quat::operator=;

/* ignore all by reference version */
%ignore osg::Quat::x();
%ignore osg::Quat::y();
%ignore osg::Quat::z();
%ignore osg::Quat::w();


// mappings for matrix transform
// \TODO fix the mappings back
// %apply const& double {double& left, double& right, double& bottom, double& top, double& zNear, double& zFar};
// %apply const& double {double& fovy,  double& aspectRatio, double& zNear, double& zFar};
// %apply const& float {float& left, float& right, float& bottom, float& top, float& zNear,  float& zFar};
// %apply const& float {float& fovy,  float& aspectRatio, float& zNear, float& zFar};

%ignore osg::Matrixd::operator=;
%ignore osg::Matrixd::operator*=;

%ignore osg::Matrixf::operator=;
%ignore osg::Matrixf::operator*=;

%ignore osg::Plane::operator=;
%ignore osg::Plane::operator[];

%ignore osg::Polytope::operator=;
%ignore osg::Polytope::operator[];


%ignore osg::StateSet::setUpdateCallback;
%ignore osg::StateSet::getUpdateCallback;
%ignore osg::StateSet::setEventCallback;
%ignore osg::StateSet::getEventCallback;
%ignore osg::StateSet::Callback;

%ignore osg::StateAttribute::setUpdateCallback;
%ignore osg::StateAttribute::getUpdateCallback;
%ignore osg::StateAttribute::setEventCallback;
%ignore osg::StateAttribute::getEventCallback;

%ignore osg::StateAttribute::getModeUsage;
%ignore osg::StateAttribute::ModeUsage;

%ignore osg::State::setDynamicObjectRenderingCompletedCallback;
%ignore osg::State::getDynamicObjectRenderingCompletedCallback;

%ignore osg::Drawable::getUpdateCallback;
%ignore osg::Drawable::setUpdateCallback;
%ignore osg::Drawable::getComputeBoundingBoxCallback;
%ignore osg::Drawable::setComputeBoundingBoxCallback;
%ignore osg::Drawable::getEventCallback;
%ignore osg::Drawable::setEventCallback;
%ignore osg::Drawable::getDrawCallback;
%ignore osg::Drawable::setDrawCallback;
%ignore osg::Drawable::getCullCallback;
%ignore osg::Drawable::setCullCallback;
%ignore osg::Drawable::supports;
%ignore osg::Drawable::accept;
%ignore osg::Drawable::getExtensions;
%ignore osg::Drawable::setExtensions;

%ignore osg::Geometry::setTexCoordIndices;
%ignore osg::Geometry::getTexCoordIndices;
%ignore osg::Geometry::setVertexAttribIndices;
%ignore osg::Geometry::getVertexAttribIndices;
%ignore osg::Geometry::setVertexIndices;
%ignore osg::Geometry::getVertexIndices;

%ignore osg::Geometry::setVertexData;
%ignore osg::Geometry::getVertexData;
%ignore osg::Geometry::setNormalData;
%ignore osg::Geometry::getNormalData;
%ignore osg::Geometry::setVertexAttribData;
%ignore osg::Geometry::getVertexAttribData;
%ignore osg::Geometry::setNormalIndices;
%ignore osg::Geometry::getNormalIndices;
%ignore osg::Geometry::setColorIndices;
%ignore osg::Geometry::getColorIndices;
%ignore osg::Geometry::setColorData;
%ignore osg::Geometry::getColorData;
%ignore osg::Geometry::setSecondaryColorIndices;
%ignore osg::Geometry::getSecondaryColorIndices;
%ignore osg::Geometry::setSecondaryColorData;
%ignore osg::Geometry::getSecondaryColorData;
%ignore osg::Geometry::setFogCoordIndices;
%ignore osg::Geometry::getFogCoordIndices;
%ignore osg::Geometry::setFogCoordData;
%ignore osg::Geometry::getFogCoordData;
%ignore osg::Geometry::setTexCoordData;
%ignore osg::Geometry::getTexCoordData;

%ignore osg::TriangleMesh::setVertices;
%ignore osg::TriangleMesh::getVertices;
%ignore osg::TriangleMesh::setIndices;
%ignore osg::TriangleMesh::getIndices;

//%ignore osg::Geometry::set*;
//%ignore osg::Geometry::get*;

%ignore osg::BlendFunc::getExtensions;
%ignore osg::BlendFunc::setExtensions;

%ignore osg::Node::setComputeBoundingSphereCallback;
%ignore osg::Node::getComputeBoundingSphereCallback;
%ignore osg::NodeVisitor::setDatabaseRequestHandler;
%ignore osg::NodeVisitor::getDatabaseRequestHandler;

%ignore osg::Transform::asPositionAttitudeTransform;

%ignore osg::CullSettings::ClampProjectionMatrixCallback;
%ignore osg::CullSettings::setClampProjectionMatrixCallback;
%ignore osg::CullSettings::getClampProjectionMatrixCallback;

%ignore osg::Camera::Attachment;
%ignore osg::Camera::BufferAttachmentMap;
%ignore osg::Camera::getBufferAttachmentMap;

%ignore osg::Camera::DrawCallback;
%ignore osg::Camera::setPostDrawCallback;
%ignore osg::Camera::getPostDrawCallback;
%ignore osg::Camera::setPreDrawCallback;
%ignore osg::Camera::getPreDrawCallback;

// more finegrain manipulation needed
%ignore osg::GraphicsThread::add;
%ignore osg::GraphicsThread::remove;
%ignore osg::GraphicsThread::getCurrentOperation;

%ignore osg::Texture::getExtensions;
%ignore osg::Texture::setExtensions;

%ignore osg::Texture1D::setSubloadCallback;
%ignore osg::Texture1D::getSubloadCallback;

%ignore osg::Texture2D::setSubloadCallback;
%ignore osg::Texture2D::getSubloadCallback;

%ignore osg::Texture3D::setSubloadCallback;
%ignore osg::Texture3D::getSubloadCallback;
%ignore osg::Texture3D::getExtensions;
%ignore osg::Texture3D::setExtensions;

%ignore osg::TextureCubeMap::setSubloadCallback;
%ignore osg::TextureCubeMap::getSubloadCallback;
%ignore osg::TextureCubeMap::getExtensions;
%ignore osg::TextureCubeMap::setExtensions;

%ignore osg::TextureRectangle::setSubloadCallback;
%ignore osg::TextureRectangle::getSubloadCallback;

%ignore osg::VertexProgram::getExtensions;
%ignore osg::VertexProgram::setExtensions;

%ignore osg::GraphicsContext::setCreateGraphicsContextCallback;
%ignore osg::GraphicsContext::getCreateGraphicsContextCallback;
%ignore osg::GraphicsContext::setWindowingSystemInterface;
%ignore osg::GraphicsContext::getWindowingSystemInterface;
%ignore osg::GraphicsContext::setResizedCallback;
%ignore osg::GraphicsContext::getResizedCallback;
%ignore osg::GraphicsContext::createGraphicsContext;
%ignore osg::GraphicsContext::getTraits;

%ignore osg::BlendEquation::getExtensions;
%ignore osg::BlendEquation::setExtensions;
%ignore osg::BlendColor::getExtensions;
%ignore osg::BlendColor::setExtensions;
%ignore osg::BufferObject::getExtensions;
%ignore osg::BufferObject::setExtensions;

%ignore osg::View::addSlave;
%ignore osg::View::getSlave;
%ignore osg::View::removeSlave;
%ignore osg::View::findSlaveForCamera;

%ignore osg::ArgumentParser::read;



#if defined(SWIGPYTHON)
%feature("ref") osg::Referenced "$this->ref();"
%feature("unref") osg::Referenced "$this->unref();"
#endif

#if defined(SWIGCSHARP)
%ignore osg::Referenced::ref;
%ignore osg::Referenced::unref;
#endif



// directors - preliminary set
#if defined(SWIGPYTHON)
%feature("director") osg::NodeCallback
#endif

// fix by René Molenaar
#define X_AXIS(a,b,c) X_AXIS=Vec3f(1.0,0.0,0.0);
#define Y_AXIS(a,b,c) Y_AXIS=Vec3f(0.0,1.0,0.0);
#define Z_AXIS(a,b,c) Z_AXIS=Vec3f(0.0,0.0,1.0);

// Now the headers
%include osg/Version

%include osg/Notify

%include osg/ref_ptr
%include osg/Referenced

#if (OSG_VERSION_MAJOR > 1)
%include osg/DeleteHandler
#endif
%include osg/CopyOp
%include osg/Object

%include osg/Vec2s
%include osg/Vec3s
%include osg/Vec4s

%include osg/Vec4ub


%include osg/Vec2b
%include osg/Vec3b
%include osg/Vec4b

%include osg/Vec2f
%include osg/Vec3f
%include osg/Vec4f

%include osg/Vec2d
%include osg/Vec3d
%include osg/Vec4d

%include osg/Vec4
%include osg/Vec3
%include osg/Vec2


%include osg/Quat
%include osg/Matrixd
%include osg/Matrixf
%include osg/Matrix

%include osg/BoundingSphere
%include osg/Plane
%include osg/Polytope

%include osg/FrameStamp
%include osg/StateSet
%include osg/StateAttribute
%include osg/Stencil
%include osg/Depth
%include osg/TexEnv
%include osg/TexEnvCombine
%include osg/TexEnvFilter
%include osg/TexGen
%include osg/TexGenNode

%include osg/AlphaFunc
%include osg/BlendFunc
%include osg/BlendEquation
%include osg/BlendColor

%include osg/BufferObject
%include osg/Image
%include osg/ImageStream


#if (OSG_VERSION_MAJOR > 0)
#if (OSG_VERSION_MINOR > 0)
%include osg/OperationThread
#endif
%include osg/GraphicsThread
%include osg/GraphicsContext
#endif

%include osg/Texture
%include osg/TexMat
%include osg/Texture1D
%include osg/Texture2D
%include osg/Texture3D
%include osg/TextureCubeMap
%include osg/TextureRectangle
%include osg/VertexProgram
%include osg/ColorMask

%ignore osg::Viewport::x;
%ignore osg::Viewport::y;
%ignore osg::Viewport::width;
%ignore osg::Viewport::height;

%include osg/Viewport
%include osg/Shader
%include osg/Program
%include osg/DisplaySettings
%include osg/State
%include osg/NodeCallback

// Nodes

#if (OSG_VERSION_MAJOR > 1)
%include osg/View
%include osg/RenderInfo
#endif
%include osg/Drawable
%include osg/Geometry
%include osg/Shape
%include osg/ShapeDrawable

%include osg/Node
%include osg/Geode
%include osg/Billboard
%include osg/Group
%include osg/Switch
%include osg/NodeVisitor
%include osg/Projection
%include osg/Transform

// %include osg/AnimationPath
%include osg/ApplicationUsage
%include osg/ArgumentParser
%include osg/Array
%include osg/BoundingBox
%include osg/BoundingSphere
%include osg/BoundsChecking
%include osg/BufferObject

%include osg/PositionAttitudeTransform
%include osg/MatrixTransform
%include osg/CullSettings

%include osg/Light
%include osg/LightModel
%include osg/LightSource


#if (OSG_VERSION_MAJOR > 0)

%include osg/AutoTransform
%include osg/Camera
%include osg/CameraView


// Reference stuff


%template(ImageRef) osg::ref_ptr<osg::Image>;
%template(TextureRef) osg::ref_ptr<osg::Texture>;
%template(GroupRef) osg::ref_ptr<osg::Group>;
%template(NodeRef) osg::ref_ptr<osg::Node>;
%template(TransformRef) osg::ref_ptr<osg::Transform>;
%template(GeodeRef) osg::ref_ptr<osg::Geode>;
%template(BillboardRef) osg::ref_ptr<osg::Billboard>;
%template(SwitchRef) osg::ref_ptr<osg::Switch>;
%template(ProjectionRef) osg::ref_ptr<osg::Projection>;
%template(LightRef) osg::ref_ptr<osg::Light>;
%template(MatrixTransformRef) osg::ref_ptr<osg::MatrixTransform>;
%template(AutoTransformRef) osg::ref_ptr<osg::AutoTransform>;
%template(CameraRef) osg::ref_ptr<osg::Camera>;
%template(CameraViewRef) osg::ref_ptr<osg::CameraView>;


// belongs to osg::Uniform
%apply float *OUTPUT { float& f };
%apply int   *OUTPUT { int& i };
%apply bool  *OUTPUT { bool& f };
%apply int   *OUTPUT { int& i0, int& i1 };
%apply int   *OUTPUT { int& i0, int& i1, int& i2 };
%apply int   *OUTPUT { int& i0, int& i1, int& i2, int& i3 };

%apply bool  *OUTPUT { bool& b0, bool& b1 };
%apply bool  *OUTPUT { bool& b0, bool& b1, bool& b2 };
%apply bool  *OUTPUT { bool& b0, bool& b1, bool& b2, bool& b3 };

%ignore osg::Uniform::setUpdateCallback;
%ignore osg::Uniform::getUpdateCallback;
%ignore osg::Uniform::setEventCallback;
%ignore osg::Uniform::getEventCallback;


%include osg/Uniform
#endif

%include osg/Timer
