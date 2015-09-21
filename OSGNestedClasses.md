# Introduction #

OSG is using nested classes as means of encapsulating finegrain control for various parts of the API. The problem osgSWIG is facing is that nested classes are not supported by SWIG and also not available in various target languages. The main need of exposing the nested classes are related to Intersection and the osgManipulator nodekit - consequently this enables interaction with the scenegraph which is needed in VR and AR applications.

# Solution #

To get around SWIGs constrains in regard to nested classes the documentation is suggesting to use expose the nested class through a global typedef. This seems the only way to go about it at this point in time.

To keep the length of names at bay I suggest the following rule: if the name ends in the same or similar word use the latter one, otherwise concate the name in camelcase on the end.

example:

osgUtil::LineSegmentIntersector::Intersection becomes osgUtil.LineSegmentIntersection

but

osg::BlendFunc::Extensions becomes osg.BlendFuncExtensions

# Implementation #

An initial implementation of this concept will be targeting the Intersectors

# Nested Classes #

Here's a list of nested classes:
  * /NestedClassesOsg
  * /NestedClassesOsgUtil

These are osgintrospection-generated information parsed by etc/parse\_introspection.py

# Projects of interest #

  * osgIntrospection, Osg's [Reflection](http://www.openscenegraph.org/projects/osg/wiki/Community/Tasks/ReflectionFramework) framework
  * [genwrapper](http://www.openscenegraph.org/projects/osg/wiki/GenWrapper), an ad-hoc tool designed for generating osg's introspection (apparently uses doxygen parser)
  * useful [http://www.openscenegraph.org/projects/osg/wiki/Community/People/DrewWhitehouse notes by Drew Whitehouse](.md) on wrapping generation