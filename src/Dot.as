package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	public class Dot extends Entity
	{
		
		public function Dot(xLoc:Number, yLoc:Number)
		{
			
			graphic = Image.createCircle(10);
			setHitbox(200, 20);
			//(Image)(graphic).scale = 0.1;
			this.x = xLoc;
			this.y = yLoc;
			trace("Dot created at " + this.x + " , " + this.y);
		}
		
		public function importantDot():void {
			(Image)(graphic).color = 0xFF0000;
		}
		
		public function finishedDot():void {
			(Image)(graphic).color = 0x00FF00;			
		}
	}
}