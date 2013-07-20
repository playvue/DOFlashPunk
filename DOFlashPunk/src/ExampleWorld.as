package  
{
	import net.flashpunk.World;
	
	/**
	 * Copyright (c) Erik Jansson
	 *
	 * Website: http://caffeineviking.com
	 * Contact: caffeineviking@gmail.com
	 * Twitter: https://twitter.com/CaffeineViking
	 * FlashGameLicense: https://www.fgl.com/view_account.php?username=sauronz
	 *
	 * ExampleWorld.as
	 * @author CaffeineViking
	 */ 
	
	public class ExampleWorld extends World
	{
		
		public function ExampleWorld() 
		{
			super();
			add(new ExampleEntity());
		}
		
	}
}