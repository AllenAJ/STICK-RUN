package 
{
    import flash.display.MovieClip
import flash.ui.Keyboard;
 import flash.events.KeyboardEvent;
 import flash.text.TextField;
 import flash.text.TextFieldType;
 import flash.events.MouseEvent;
 import flash.text.TextFormat;
 import flash.net.*
 import fl.transitions.Tween;
	  import caurina.transitions.*;
import fl.transitions.easing.*;
import fl.transitions.TweenEvent;
 import flash.net.URLRequest
 import flash.display.Loader;
 import flash.utils.*
 import flash.net.navigateToURL;
 import flash.net.URLLoader
 import flash.events.MouseEvent;
 import flash.events.Event;
 import flash.display.Loader;
 import flash.net.URLRequest;
 import flash.events.Event;
 import flash.net.*
	import flash.events.TimerEvent
 import flash.events.KeyboardEvent;
 import flash.net.LocalConnection;
 import flash.ui.Mouse;
 import flash.events.Event;
 import com.freeactionscript.Scrollbar;
	import playerio.*
    
    public dynamic class first_join extends flash.display.MovieClip
    {
		 public function first_join()
        {
			
          this.getit();
            addFrameScript(0, this.frame1);

            return;
        }
	
		public function getit(){
			
			red.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.over, false, 0, true);
                   red.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.out, false, 0, true);
				red.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.down, false, 0, true);
			blue.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.over, false, 0, true);
                   blue.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.out, false, 0, true);
				blue.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.down, false, 0, true);
			green.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.over, false, 0, true);
                   green.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.out, false, 0, true);
				green.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.down, false, 0, true);
				yellow.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.over, false, 0, true);
                   yellow.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.out, false, 0, true);
				yellow.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.down, false, 0, true);
				white.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.over, false, 0, true);
                   white.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.out, false, 0, true);
				white.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.down, false, 0, true);
			
			gotoAndStop(1);
		}
		
	public function over(arg1:flash.events.MouseEvent):*
        {
			arg1.target.gotoAndPlay("over");
          
        }

        public function out(arg1:flash.events.MouseEvent):*
        {
			arg1.target.gotoAndPlay("out");
            
        }
		
		   public function down(arg1:flash.events.MouseEvent):*
        {
		  
		}
		
		 function frame1()
        {
			  stop();
        x = stage.stageWidth / 2
			  y = stage.stageHeight / 2
        }// end function
			
			
		
			 
    }
	
	
	
}
