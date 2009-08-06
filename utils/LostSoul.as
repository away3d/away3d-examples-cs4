package utils
{
	
	import away3d.sprites.*;
	import away3d.core.utils.*;
	import away3d.events.*;
	import flash.display.*;
	
	/**
	 * Class for creating moving lost soul sprite
	 */
	public class LostSoul extends DirSprite2D
	{
	    private var role:String;
	    private var nextthink:int;
	    private var lastmove:int;
		
		/**
		 * Constructor
		 */
	    public function LostSoul(init:Object = null)
	    {
	        super(init);
	        
	        scaling = 2;
	        
	        add( 0  , 0,-1  , Cast.bitmap(LostSoulFrontImage));
	        add(-0.7, 0,-0.7, Cast.bitmap(LostSoulLeftFrontImage));
	        add(-1  , 0, 0  , Cast.bitmap(LostSoulLeftImage));
	        add(-0.7, 0, 0.7, Cast.bitmap(LostSoulLeftBackImage));
	        add( 0  , 0, 1  , Cast.bitmap(LostSoulBackImage));
	        add( 0.7, 0, 0.7, flipX(Cast.bitmap(LostSoulLeftBackImage)));
	        add( 1  , 0, 0  , flipX(Cast.bitmap(LostSoulLeftImage)));
	        add( 0.7, 0,-0.7, flipX(Cast.bitmap(LostSoulLeftFrontImage)));
	    }
	    
	    /**
	    * Updates every frame
	    */
	    public override function tick(time:int):void
	    {
	        if ((role == null) || (nextthink < time)) {
	            role = (["stop", "right", "left", "forward"])[int(Math.random()*4)];
	            if ((Math.abs(x) > 300) || (Math.abs(z) > 300))
	                role = "right";
	                //role = (["right", "left"])[int(Math.random()*2)];
	            nextthink = time + Math.random()*3000;
	        }
	
	        var delta:Number = (lastmove - time)/1000;
	        
	        switch (role) {
	            case "stop":
	            	rotationY += delta*(Math.random()*20-10);
	            	break;
	            case "right":
	            	rotationY += delta*Math.random()*10; moveForward(delta*20);
	            	break;
	            case "left":
	            	rotationY -= delta*Math.random()*10; moveForward(delta*20);
	            	break;
	            case "forward":
	            	moveForward(delta*60)
	            	break;
	            default:
	        }
	        
	        lastmove = time;
			
			//constrain position
	        if (x > 500)
	            x = 500;
	        if (x < -500)
	            x = -500;
	        if (z > 500)
	            z = 500;
	        if (z < -500)
	            z = -500;
	    }
	    
	    /**
	    * Creates a mirror bitmapData object from the input bitmapData argument
	    */
	    public function flipX(source:BitmapData):BitmapData
	    {
	        var bitmap:BitmapData = new BitmapData(source.width, source.height);
	        for (var i:int = 0; i < bitmap.width; i++)
	            for (var j:int = 0; j < bitmap.height; j++)
	                bitmap.setPixel32(i, j, source.getPixel32(source.width-i-1, j));
	        return bitmap;
	    }
	}
}