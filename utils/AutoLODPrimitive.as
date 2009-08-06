package utils
{
	import away3d.containers.*;
	import away3d.primitives.*;
	import away3d.materials.*;
	
	/**
	 * Class for creating a primitive LOD object
	 */
	public class AutoLODPrimitive extends ObjectContainer3D
	{
		/**
		 * Constructor
		 */
	    public function AutoLODPrimitive(color:int, init:Object = null)
	    {
	    	super(init);
	    	
	        //var primitive0:Plane = new Plane({material:new WireColorMaterial(color), width:300, height:300});
	        var primitive0:Plane = new Plane();
	        primitive0.material = new WireColorMaterial(color);
	        primitive0.width = 300;
	        primitive0.height = 300;
	        
	        //var primitive1:RegularPolygon = new RegularPolygon({material:new WireColorMaterial(color), radius:150});
	        var primitive1:RegularPolygon = new RegularPolygon();
	        primitive1.material = new WireColorMaterial(color);
	        primitive1.radius = 150;
	        
	        //var primitive2:Cube = new Cube({material:new WireColorMaterial(color), width:300, height:300, depth:300, segmentsW:2, segmentsH:2});
	        var primitive2:Cube = new Cube();
	        primitive2.material = new WireColorMaterial(color);
	        primitive2.width = 300;
	        primitive2.height = 300;
	        primitive2.depth = 300;
	        primitive2.segmentsW = 2;
	        primitive2.segmentsH = 2;
	        
	        //var primitive3:Torus = new Torus({material:new WireColorMaterial(color), radius:150, tube:60, segmentsR:10, segmentsT:8});
	        var primitive3:Torus = new Torus();
	        primitive3.material = new WireColorMaterial(color);
	        primitive3.radius = 150;
	        primitive3.tube = 60;
	        primitive3.segmentsR = 10;
	        primitive3.segmentsT = 8;
	        
	        //var primitive4:Cylinder = new Cylinder({material:new WireColorMaterial(color), radius:150, height:300, segmentsW:12, segmentsH:6});
	        var primitive4:Cylinder = new Cylinder();
	        primitive4.material = new WireColorMaterial(color);
	        primitive4.radius = 150;
	        primitive4.height = 300;
	        primitive4.segmentsW = 12;
	        primitive4.segmentsH = 6;
	        
	        //var primitive5:Cone = new Cone({material:new WireColorMaterial(color), radius:150, height:300, segmentsW:14, segmentsH:10});
	        var primitive5:Cone = new Cone();
	        primitive5.material = new WireColorMaterial(color);
	        primitive5.radius = 150;
	        primitive5.height = 300;
	        primitive5.segmentsW = 14;
	        primitive5.segmentsH = 10;
			        
	        //var primitive6:Sphere = new Sphere({material:new WireColorMaterial(color), radius:150, segmentsW:16, segmentsH:12});
	        var primitive6:Sphere = new Sphere();
	        primitive6.material = new WireColorMaterial(color);
	        primitive6.radius = 150;
	        primitive6.segmentsW = 16;
	        primitive6.segmentsH = 12;
	        
	        //var lod0:LODObject = new LODObject({minp:0.2, maxp:0.3}, primitive0);
	        var lod0:LODObject = new LODObject(primitive0);
	        lod0.minp = 0.2;
	        lod0.maxp = 0.3;
	        
	        addChild(lod0);
	        
	        //var lod1:LODObject = new LODObject({minp:0.3, maxp:0.4}, primitive1);
	        var lod1:LODObject = new LODObject(primitive1);
	        lod1.minp = 0.3;
	        lod1.maxp = 0.4;
	        
	        addChild(lod1);
	        
	        //var lod2:LODObject = new LODObject({minp:0.4, maxp:0.5}, primitive2);
	        var lod2:LODObject = new LODObject(primitive2);
	        lod2.minp = 0.4;
	        lod2.maxp = 0.5;
	        
	        addChild(lod2);
	        
	        //var lod3:LODObject = new LODObject({minp:0.5, maxp:0.6}, primitive3);
	        var lod3:LODObject = new LODObject(primitive3);
	        lod3.minp = 0.5;
	        lod3.maxp = 0.6;
	        
	        addChild(lod3);
	        
	        //var lod4:LODObject = new LODObject({minp:0.6, maxp:0.7}, primitive4);
	        var lod4:LODObject = new LODObject(primitive4);
	        lod4.minp = 0.6;
	        lod4.maxp = 0.7;
	        
	        addChild(lod4);
	        
	        //var lod5:LODObject = new LODObject({minp:0.7, maxp:0.8}, primitive5);
	        var lod5:LODObject = new LODObject(primitive5);
	        lod5.minp = 0.7;
	        lod5.maxp = 0.8;
	        
	        addChild(lod5);
	        
	        //var lod6:LODObject = new LODObject({minp:0.8, maxp:0.9}, primitive6);
	        var lod6:LODObject = new LODObject(primitive6);
	        lod6.minp = 0.8;
	        lod6.maxp = 0.9;
	        
	        addChild(lod6);
	    }
	}
}