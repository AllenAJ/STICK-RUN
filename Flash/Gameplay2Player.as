package 
{

	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.Event;



	public class Gameplay2Player extends MovieClip
	{

		private var speedX=0;
		private var speedY=0;
		public function Gameplay2Player()
		{
			stage.addEventListener(KeyboardEvent.KEY_DOWN ,keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP ,keyUp);
			stage.addEventListener(Event.ENTER_FRAME, update);
		}
		public function keyDown(e:KeyboardEvent) {
        if(e.keyCode == 37) {
            speedX = -5;
        }
        if(e.keyCode == 38) {
            speedY = -5;
        }
        if(e.keyCode == 39) {
            speedX = 5;
        }
        if(e.keyCode == 40) {
            speedY = 5;
        }
    }

    public function keyUp(e:KeyboardEvent) {
        if(e.keyCode == 37 || e.keyCode == 39) {
            speedX = 0;
        }
        if(e.keyCode == 38 || e.keyCode == 40) {
            speedY = 0;
        }
    }

    public function update(e:Event) {
        x += speedX;
        y += speedY;
		

   

    }

	}

}