package com.asgamer.mousecontrolled 
{
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.display.Stage;
	
	public class Hero extends MovieClip
	{
		
		var stageRef:Stage;
		var speed:Number = 7;
		
		public function Hero(stageRef:Stage) : void
		{
			x = stageRef.stageWidth/2;
			y = stageRef.stageHeight/2;
			
			this.stageRef = stageRef;
			
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
			
		}
		
		private function loop(e:Event) : void
		{
			
			var yDistance:Number = stageRef.mouseY - y;
			var xDistance:Number = stageRef.mouseX - x;
			var radian:Number = Math.atan2(yDistance, xDistance);
			//rotation = radian * 180 / Math.PI;
				
			x -= (x - stageRef.mouseX) / speed;	
			y -= (y - stageRef.mouseY) / speed;

			
		}
		
	}

}