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
    
    public dynamic class offers_w_1 extends flash.display.MovieClip
    {
		
		 public function offers_w_1()
        {
			trace("suck")
          
            addFrameScript(0, this.frame1,1 ,this.frame2);

            return;
        }
	
		public function cls(event:MouseEvent)
        {
           
            MovieClip(parent).removeChild(this);
            return;
        }// end function
		
		 public function traderFound(param1:String)
        {
			trace("Hahahaha");
			this.getlist = ["", "", "", "", "", "", 0];
			trace("Hahahaha");
           
		   this.trade_actions.gotoAndStop(2);
		   trace("Hahahaha");
			for(var ii=1;ii<7;ii++){
				this.trade_actions["item" + ii].inner1.visible = false
					 trace("Hahahaha");
                     }
					  trace("Hahahaha");
					  this.trade_actions.lockedov.visible = false;
					   trace("Hahahaha");
            this.trade_actions.yes_btn.visible = false;
            this.trade_actions.unlock_btn.visible = false;
            this.trade_actions.name_txt.htmlText = param1;
            this.close_offer_btn.visible = false;
					  trade_actions.no_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.no);
					  trade_actions.yes_btn.addEventListener(MouseEvent.MOUSE_UP, this.yes);
            return;
        }// end function
		
		 public function lockOffer()
        {
            this.trade_actions.lockedov.visible = true;
			 this.trade_actions.yes_btn.visible = true;
			
            this.trade_actions.unlock_btn.visible = false;
			 this.trade_actions.waiting.visible = false;
           // this.coins_selector.visible = false;
            //if (this.cit_open)
           // {
           //     MovieClip(root).removeChild(this.cit);
           // }
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
            MovieClip(root).TheConnection.send("trade_lock", this.partner_mpid);
            this.lockOffer();
            return;
        }// end function
		
		
		 public function open_coins_selector(event:MouseEvent)
        {
            this.coins_selector.visible = true;
           // this.coins_selector.activated();
            return;
        }// end function
		
         public function itemUpdate(param1:int, param2:String)
        {
            if (MovieClip(root).tradeBlacklist.indexOf(param2) != -1)
            {
                MovieClip(root).alert("Your partner tried to offer a blacklisted item! Report if you want!");
              
                return;
            }
            if (currentFrame == 2)
            {
                if (this.trade_actions.currentFrame == 2)
                {
                    this.trade_actions["item" + param1].inner1.gotoAndStop(param2);
                }
                this.getlist[(param1 - 1)] = param2;
            }
            updateAnim(this.trade_actions["item" + param1].inner1);
            return;
        }// end function
		
		public function updateAnim(param1:MovieClip)
        {
            //this.pcks.play();
			param1.visible = true
            param1.scaleX = 1.5;
            param1.scaleY = 1.5;
            Tweener.addTween(param1, {scaleX:0.7, scaleY:0.7, time:0.6});
            return;
        }// end function
		
		public function leave_offer(event:MouseEvent)
        {
            MovieClip(root).leaveCurrentOffer();
            MovieClip(parent).removeChild(this);
            return;
        }// end function
		
		
	public function item_over(event:flash.events.MouseEvent):*
        {
             
             caurina.transitions.Tweener.addTween(event.currentTarget, {scaleX:0.9, scaleY:0.9, time:0.5});
           
            //this.blsnd.play();
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
                    MovieClip(root).alerts("You cannot give the item that is being offered!");
                    return;
                }
                if (MovieClip(root).tradeBlacklist.indexOf(param2) != -1)
                {
                    MovieClip(root).alerts("That item is blacklisted!");
                    return;
                }
                if (param2 == this.itm1 || param2 == this.itm2 || param2 == this.itm3 || param2 == this.itm4 || param2 == this.itm5 || param2 == this.itm6)
                {
                    MovieClip(root).alerts("You\'re offering that item already!");
                    return;
                }
                this["itm" + this.c_item_id] = param2;
                this["item" + this.c_item_id].gotoAndStop(param2);
               // MovieClip(root).conn.send("sysmsg", "trade_item_update", this.partner_mpid, this.c_item_id, param2);
            }
            return;
        }// end function		
		function frame2()
        {
           /* this.yes_btn.visible = false;
            this.unlock_btn.visible = false;
            this.lockedov.visible = false;
            this.no_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.no);
            this.yes_btn.addEventListener(MouseEvent.MOUSE_UP, this.yes);
            this.unlock_btn.addEventListener(MouseEvent.MOUSE_UP, this.unlock);*/
            return;		
		}
		 public function no(event:MouseEvent)
        {
           MovieClip(root).TheConnection.send("rejectpartner");
			partnerDisconnected();
			trace("gooo")
            return;
        }// end function
       
		public function rejectCurrentPartner()
        {
             MovieClip(root).TheConnection.send("rejectpartner");
			partnerDisconnected();
			trace("gooo")
          
        }// end function
		  public function getData() : Object
        {
			var itemlist = ",";
			for(var i=0;i<6;i++){
					if(this.getlist[i] != "")
			{
				itemlist = itemlist + this.getlist[i] + ",";
			}

                     }
			
			
			trace(itemlist)
			trace(this.getlist)
            return itemlist;
        }// end function
		  public function partnerDisconnected()
        {
            this.getlist = [];
            this.getcoins = 0;
            this.trade_actions.gotoAndStop(1);
            this.close_offer_btn.visible = true;
            return;
        }// end function
		
        public function yes(event:MouseEvent)
        {
            this.acceptCurrentPartner();
            return;
        }// end function
          public function acceptCurrentPartner()
        {
                var accepted_getlist
                MovieClip(root).back_btn.visible = false;
               // this.awaiting_accept_return = true;
                this.accepted_getlist = this.getData();
			trace(this.accepted_getlist);
                MovieClip(root).TheConnection.send("trade_accept", this.accepted_getlist,   MovieClip(root).itemoffer );
               
                this.gotoAndStop(1);
              
              
                //this.stopPrivateChat();
                MovieClip(root).trading_ov.visible = true;
           
            
            return;
        }// end function
        public function unlock(event:MouseEvent)
        {
            this.lockedov.visible = false;
            this.yes_btn.visible = false;
            MovieClip(root).unlockCurrentPartner();
            this.unlock_btn.visible = false;
            return;
        }// end function
		
		function frame1()
        {
			
			
            // this.locksawnd = new locksound();
           // this.trdr_sound = new trader_found();
            this.getlist = ["", "", "", "", "", "", 0];
            this.getcoins = 0;
            this.offers = [];
            stop();
            return;
        }// end function
           
			
			
		
			 
    }
	
	
	
}
