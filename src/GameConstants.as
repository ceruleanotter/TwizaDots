package 
{
	
	/**
	 * ...
	 * @author Lyla
	 */

	 import flash.events.Event;
	 import flash.net.URLLoader;
	 import flash.net.URLRequest;
	 import net.flashpunk.FP
	public class GameConstants 
	{
	public static const  WORLD_WIDTH:int = 600;
	public static const  WORLD_HEIGHT:int = 600;
	public static const DOT_RADIUS:int = 10;
	
	private static var DOT_FILE:String = "flag.xml"
	
	
	
	
	public static function initalizeDots(tw:TwizaWorld):void {
			var xmlString:URLRequest = new URLRequest(DOT_FILE);
			var xmlLoader:URLLoader = new URLLoader(xmlString);
			
			var dotArray:Array = new Array();
		
			xmlLoader.addEventListener("complete", init);
			function init(event:Event):void{
				 var dotList:XML = XML(xmlLoader.data);
				 trace("DOTLIST");
				 //trace(dotList);
				 var d:XMLList = dotList.children().children();
				 for each (var dotxml:XML in d) {
					 
					 var d_loc:XMLList = dotxml.children();
					// trace(d_loc);

					 dotArray.push(new Dot(d_loc[0].toString(), d_loc[1].toString()));
				 }

				tw.continueTwizaInit(dotArray)
			}

	}
	
	
	}
}