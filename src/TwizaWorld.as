package
{
	import net.flashpunk.World;
	
	import Dot;
	public class TwizaWorld extends World
	{
	
		private var dots:Array;
		public var currentDot:Dot; 
		public function TwizaWorld()
		{

			/*var d1:Dot = new Dot(20, 20);
			var d2:Dot = new Dot(100, 20);			
			var d3:Dot = new Dot(100, 100);
			var d4:Dot = new Dot(20, 100);	
			
			add(d1);
			add(d2);
			add(d3);
			add(d4);*/
			
			//dots = new Array(d1, d2, d3, d4);
			GameConstants.initalizeDots(this);
		}
		
		public function continueTwizaInit(dotarr:Array):void {
			dots = dotarr;
			trace(dots);
			trace ("IS DOTS");
			for each (var d:Dot in dots) {
				add(d);
			}
			currentDot = dots[0];
			currentDot.importantDot();
			this.nextDot()
			this.nextDot()

			//make an array of dots
		}

		
		override public function update():void
		{
			//check if we clicked a dot, then go to the next dot
			//if we get a false from next dot, they've won.
		}		
		
		
		public function nextDot():Boolean {
			var nextDotIndex = (dots.indexOf(currentDot))+1;
			if (dots.length <= nextDotIndex) {
				//the last dot
				trace("This is the last dot");
				return false;
			}
			currentDot.finishedDot();
			currentDot = dots[nextDotIndex];
			currentDot.importantDot();
			return true;
		}
	}
}