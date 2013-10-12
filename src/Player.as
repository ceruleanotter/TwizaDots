package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Key
	import net.flashpunk.utils.Input
	public class Player extends Entity
	{
		
		public function Player()
		{
			
			//graphic = Image.createCircle(10);
			//(Image)(graphic).scale = 0.1;
			this.x = Input.mouseX;
			this.y = Input.mouseY;
			trace("Player created at " + this.x + " , " + this.y);
		}
		
		override public function update():void
		{
			//check if we clicked a dot, then go to the next dot
			this.x = Input.mouseX;
			this.y = Input.mouseY;
			trace("Player current position " + this.x + " , " + this.y);
			if (Input.mousePressed)
			{
				//this.nextDot;
			}
			//if we get a false from next dot, they've won.
		}	
		
	}
}