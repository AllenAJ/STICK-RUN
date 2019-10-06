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
    
    public dynamic class items_tables extends flash.display.MovieClip
    {
		 public function items_tables()
        {
			
          
            addFrameScript(0, this.frame1);

            return;
        }
	
		public function cls(event:MouseEvent)
        {
           MovieClip(root).make_offer_btn.visible = true
            MovieClip(parent).removeChild(this);
            return;
        }// end function
		 public function setup(arg1:Array, arg2:Function, type_:Array):*
        {
			MovieClip(root).clients.payVault.refresh(null);
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            this.ccb = arg2;
             
			 caurina.transitions.Tweener.addTween(this, {"alpha":1, "y":stage.stageHeight / 2 , "time":0.7});
            loc1 = [];
            loc2 = [];
			var mommy:Array = ["stickrunteam"]
			
            loc3 = new Array();
            loc4 = 0;
            while (loc4 < arg1.length) 
            {
                if (!(arg1[loc4].itemKey == "stickrunteam") && !(arg1[loc4].itemKey == "onemil")) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
            }
            loc4 = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
						(loc5 = new item_other()).x = loc1.length * 34 - Math.floor(loc1.length / 10) * 340;
                    loc5.y = Math.floor(loc1.length / 10) * 34;
                    
                    loc5.gotoAndStop(loc3[loc4]);
                    loc5.item_name = loc3[loc4];
                    loc5.amount = 1;
					loc5.scaleX = 0.7;
                    loc5.scaleY = 0.7;
				this.x = stage.stageWidth / 2;
                    this.cont.addChild(loc5);
					this.alpha = 0
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.item_out, false, 0, true);
                     loc5.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.item_down, false, 0, true);
					 loc5.addEventListener(flash.events.MouseEvent.CLICK, this.back_item, false, 0, true);
					
                    loc1.push(loc3[loc4]);
                    loc2.push(loc5);
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
					 loc6.amount_txt.text = loc6.amount + "";
					
                 
                }
                loc4 = loc4 + 1;
            }
            if (this.cont.height > 210) 
            {
                addEventListener(flash.events.Event.ENTER_FRAME, this.scroll_loop, false, 0, true);
            }
            return;
        }
	public function item_over(arg1:flash.events.MouseEvent):*
        {
             caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.9, "scaleY":0.9, "time":0.5});
           // this.blsnd.play();
            return;
        }

        public function item_out(arg1:flash.events.MouseEvent):*
        {
			
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.7, "scaleY":0.7, "time":0.4});
            return;
        }
		 public function back_item(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.12});
            return;
        }
		   public function item_down(arg1:flash.events.MouseEvent):*
        {
		  //this.klicksnd.play();
			 this.ccb("select", arg1.currentTarget.item_name);
			   MovieClip(parent).removeChild(this);
		
		}
            public function scroll_loop(arg1:flash.events.Event):*
        {
            if (mouseY < -110) 
            {
                this.cont.y = this.cont.y + 8;
            }
            else if (mouseY > 110) 
            {
                this.cont.y = this.cont.y - 8;
            }
            if (this.cont.y > this.orgY) 
            {
                this.cont.y = this.orgY;
            }
            if (this.cont.y < this.orgY - this.cont.height + 198) 
            {
                this.cont.y = this.orgY - this.cont.height + 198;
            }
            return;
        }
		
		
		 function frame1()
        {
            this.close_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.cls);
            alpha = 0;
            x = stage.stageWidth / 2;
            y = 0;
            
            this.isnonlisted = false;
            this.orgY = this.cont.y;
            this.blsnd = new blub2();
           // this.klicksnd = new klicksound1();
            return;
        }// end function
			
			
		
			 
    }
	
	
	
}
