package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	/**
	 * Main.as
	 * @author CaffeineViking
	 */
	
	public class Main extends Engine
	{
		public static const WIDTH:uint = 640;
		public static const HEIGHT:uint = 480;
		public static const FRAMERATE:Number = 30.0;
		
		public function Main()
		{
			//We pass "this" because Main.as is
			//the root of the Flash application. 
			
			super(this, WIDTH,
			HEIGHT, FRAMERATE);
		}
		
		override public function init():void 
		{
			trace("Flashpunk " + FP.VERSION +
			" has been initialized!");
			
			FP.console.enable();
			FP.console.log("Works!");
			
			FP.world = new ExampleWorld();
			super.init();
		}
		
	}
	
}