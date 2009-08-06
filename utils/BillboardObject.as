package utils
{
	import away3d.core.base.Billboard;
	
	/**
	 * Data class for a billboard's position and speed
	 */
	public class BillboardObject
	{
		public var billboard:Billboard;
		
		public var x:Number;
		
		public var y:Number;
		
		public var z:Number;
		
		public var speedx:Number;
		
		public var speedy:Number;
		
		public var speedz:Number;
		
		public function BillboardObject(billboard:Billboard, x:Number, y:Number, z:Number, speedx:Number, speedy:Number, speedz:Number)
		{
			this.billboard = billboard;
			this.x = x;
			this.y = y;
			this.z = z;
			this.speedx = speedx;
			this.speedy = speedy;
			this.speedz = speedz;
		}
	}
}