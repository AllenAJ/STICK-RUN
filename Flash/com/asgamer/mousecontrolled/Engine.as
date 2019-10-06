package com.asgamer.mousecontrolled 
{
	
	import flash.display.MovieClip;
	
	public class Engine extends MovieClip
	{
		
		public function Engine() : void
		{
			var hero:Hero = new Hero(stage);
			addChild(hero);
		}
		
	}

}