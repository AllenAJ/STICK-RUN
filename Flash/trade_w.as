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
    
    public dynamic class trade_w extends flash.display.MovieClip
    {
		
		 public function trade_w()
        {
			
          
            addFrameScript(0, this.frame1);

            return;
        }
	
		public function cls()
        {
             MovieClip(root).make_offer_btn.visible = true
            MovieClip(parent).removeChild(this);
			  
            
        }// end function
		public function setup(param1:String)
        {
			 this.itm1 = "";
            this.itm2 = "";
            this.itm3 = "";
            this.itm4 = "";
            this.itm5 = "";
            this.itm6 = "";
            this.cns = 0;
			item1.gotoAndStop(1)
			item2.gotoAndStop(1)
			item3.gotoAndStop(1)
			item4.gotoAndStop(1)
			item5.gotoAndStop(1)
			item6.gotoAndStop(1)
			  
            this.get_itm = param1.split(":")[2];
           
            this.name_txt.htmlText = param1.split(":")[0];
            this.item_mc.gotoAndStop(param1.split(":")[2]);
            this.partner_mpid = param1.split(":")[1];
            this.waiting.visible = false;
			this.lockov.visible = false
			this.ok_btn.visible = true
            this.leave_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.leave_offer);
            this.coins_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.open_coins_selector);
            this.ok_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.ok_pressed);
            this.initItemBtn(this.item1, 1);
            this.initItemBtn(this.item2, 2);
            this.initItemBtn(this.item3, 3);
            this.initItemBtn(this.item4, 4);
            this.initItemBtn(this.item5, 5);
            this.initItemBtn(this.item6, 6);
			MovieClip(root).refreshitems();
            return;
        }// end function
		
		
		 public function lockOffer()
        {
            this.lockov.visible = true;
            this.coins_selector.visible = false;
            if (this.cit_open)
            {
                MovieClip(root).removeChild(this.cit);
            }
            return;
        }// end function
		

		 public function initItemBtn(param1:MovieClip, param2:uint)
        {
            param1.num = param2;
            param1.addEventListener(MouseEvent.MOUSE_OVER, this.item_over);
            param1.addEventListener(MouseEvent.MOUSE_OUT, this.item_out);
            param1.addEventListener(MouseEvent.MOUSE_DOWN, this.item_down);
            return;
        }// end function
		
		
		  public function ok_pressed(event:MouseEvent)
        {
            this.ok_btn.visible = false;
            this.waiting.visible = true;
            MovieClip(root).TheConnection.send("trade_lock");
            this.lockOffer();
            return;
        }// end function
		
		
		 public function open_coins_selector(event:MouseEvent)
        {
            this.coins_selector.visible = true;
           // this.coins_selector.activated();
            return;
        }// end function
		
		
		public function leave_offer(event:MouseEvent)
        {
            MovieClip(root).TheConnection.send("leave_offer");
			 MovieClip(root).make_offer_btn.visible = true
            MovieClip(parent).removeChild(this);
            return;
        }// end function
		public function rejected()
        {
           MovieClip(root).alert("Your trading-partner is uninterested!")
			 MovieClip(root).make_offer_btn.visible = true
            MovieClip(parent).removeChild(this);
			
            return;
        }// end function
		
		
	public function item_over(event:flash.events.MouseEvent):*
        {
             
             caurina.transitions.Tweener.addTween(event.currentTarget, {scaleX:0.9, scaleY:0.9, time:0.5});
           
           // this.blsnd.play();
            return;
        }

        public function item_out(event:flash.events.MouseEvent):*
        {
			
            caurina.transitions.Tweener.addTween(event.currentTarget, {"scaleX":0.7, "scaleY":0.7, "time":0.4});
            return;
        }
		 public function back_item(event:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.12});
            return;
        }
		   public function item_down(event:flash.events.MouseEvent):*
        {
		  this.c_item_id = event.currentTarget.num;
			trace(event.currentTarget.num)
            this.cit = new items_tables();
            MovieClip(root).addChild(this.cit);
            this.cit.setup(MovieClip(root).items,this.itemSelect, []);
            this.cit_open = true;
            return;
			
		}
		
           public function itemSelect(param1:String, param2:String = "")
        {
            this.cit_open = false;
            if (this.lockov.visible)
            {
                return;
            }
            if (param1 == "select")
            {
                if (param2 == this.get_itm)
                {
                    MovieClip(root).alert("You cannot give the item that is being offered!");
                    return;
                }
                if (MovieClip(root).tradeBlacklist.indexOf(param2) != -1)
                {
                    MovieClip(root).alert("That item is blacklisted!");
                    return;
                }
                if (param2 == this.itm1 || param2 == this.itm2 || param2 == this.itm3 || param2 == this.itm4 || param2 == this.itm5 || param2 == this.itm6)
                {
                    MovieClip(root).alert("You\'re offering that item already!");
                    return;
                }
                this["itm" + this.c_item_id] = param2;
                this["item" + this.c_item_id].gotoAndStop(param2);
                MovieClip(root).TheConnection.send("trade_item_update", this.c_item_id, param2);
				trace("noob")
            }
            return;
        }// end function
		
		
		
		function frame1()
        {
            this.coins_selector.visible = false;
            scaleX = 0.5;
            scaleY = 0.5;
            alpha = 0;
            this.lockov.visible = false;
            this.partner_mpid = 0;
            this.s1 = new blub2();
            this.cit_open = false;
            this.c_item_id = 0;
            this.itm1 = "";
            this.itm2 = "";
            this.itm3 = "";
            this.itm4 = "";
            this.itm5 = "";
            this.itm6 = "";
            this.cns = 0;
			this.blsnd = new blub2();
            //this.drawp = new dropsound();
            return;
        }// end function
           
			
			
		
			 
    }
	
	
	
}
