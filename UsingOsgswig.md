## Simple Python OsgViewer ##
```
import osgDB, osgViewer
loadedModel = osgDB.readNodeFile("cow.osg")
viewer = osgViewer.Viewer()
viewer.setSceneData(loadedModel)
viewer.addEventHandler(osgViewer.StatsHandler());
viewer.run()
```

## Included examples (Python) ##
  * osgpick - simple mouse picking
  * pyramid - drawing geometry
  * osgART - osg and ARToolkit integration
  * osgviewerWX - osgViewer embedded in a wx-windows widget
  * osgviewerGTK - osgViewer embedded in a gtk widget
  * todaysimages - scrapes web content (BBC's today in images) for display in an image rotor

## Users of the wrappers ##
  * [HIT Lab NZ](http://www.hitlabnz.org), New Zealand (Hartmut Seichter)
  * [AccessGrid](http://www.accessgrid.org), [KAREN](http://www.karen.net.nz/home/) Project - [SharedOSG](http://www.accessgrid.org/project/sharedosg) deliverable of the [HIT Lab NZ](http://www.hitlabnz.org), New Zealand (Raphael Grasset, Hartmut Seichter)
  * [Data Visualisation and VR group](http://visualisation.tudelft.nl/VRVis), Delft University of Technology, The Netherlands (Gerwin de Haan)
  * [CINECA consortium](http://www.cineca.it/en/index.htm), for the [Virtual Rome Project](http://3d.cineca.it/storage/demo_vrome/htdocs/), Italy (Luigi Calori)
  * [CVSSP](http://www.ee.surrey.ac.uk/CVSSP/) at the University of Surrey, Great Britain  (Joe Killner)
  * "The [pyscene project](http://code.google.com/p/pyscene) is a friendly wrapper for 3D model navigation and peripheral interaction over top of OpenSceneGraph with osgswig and python."