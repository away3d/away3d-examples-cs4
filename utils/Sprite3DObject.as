package utils
{
	import away3d.sprites.*;
	
	/**
	 * Data class for a sprite's position and speed
	 */
	public class Sprite3DObject
	{
		public var sprite:Sprite3D;
		
		public var x:Number;
		
		public var y:Number;
		
		public var z:Number;
		
		public var speedx:Number;
		
		public var speedy:Number;
		
		public var speedz:Number;
		
		public function Sprite3DObject(sprite:Sprite3D, x:Number, y:Number, z:Number, speedx:Number, speedy:Number, speedz:Number)
		{
			this.sprite = sprite;
			this.x = x;
			this.y = y;
			this.z = z;
			this.speedx = speedx;
			this.speedy = speedy;
			this.speedz = speedz;
		}
	}
}