package  
{
	import flash.display.BitmapData;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	
	/**
	 * Copyright (c) Erik Jansson
	 *
	 * Website: http://caffeineviking.com
	 * Contact: caffeineviking@gmail.com
	 * Twitter: https://twitter.com/CaffeineViking
	 * FlashGameLicense: https://www.fgl.com/view_account.php?username=sauronz
	 *
	 * ExampleEntity.as
	 * @author CaffeineViking
	 */ 
	
	public class ExampleEntity extends Entity
	{
		
		public function ExampleEntity()
		{
			var bitmapData:BitmapData = new BitmapData(32, 32, false, 0xFF0000);
			var image:Image = new Image(bitmapData);
			
			super(0, 0, image);
		}
		
		override public function update():void 
		{
			x = Input.mouseX;
			y = Input.mouseY;
			
			super.update();
		}
		
	}
}