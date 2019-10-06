package 
{
    import caurina.transitions.*;
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
	import flash.utils.*
    
    public dynamic class items_table extends flash.display.MovieClip
    {
		public var wotitem
        public function items_table()
        {
            super();
            addFrameScript(0, this.frame1);
            return;
        }

        public function cls(arg1:flash.events.MouseEvent):*
        {
            if (this.numbery != 69) 
            {
                this.ccb("cancel", "", 0);
            }
            else 
            {
                this.ccb("cancel", "");
            }
            flash.display.MovieClip(parent).removeChild(this);
			this.mynewsss.visible = true;
            return;
        }
         public function closeme(){
			    MovieClip(root).maekoffer.visible = true
				flash.display.MovieClip(parent).removeChild(this);
			
			
			trace("yes i was removed now stfu xddddddd")
		 }
		  public function closeme1(){
			    
				flash.display.MovieClip(parent).removeChild(this);
			
			
			trace("yes i was removed now stfu xddddddd")
		 }
        public function about(arg1:int):*
        {
            this.numbery = arg1;
			this.arg1 = ["red", "blue", "green", "yellow", "white", "team", "vip", "enderbros", "planejump"];
            return;
        }
             public function setupin(arg1:Array, arg2:Function, type_:Array):*
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
             this.x = 378.25
			this.y = 289.6
            loc1 = [];
            loc2 = [];
			var mommy:Array = [""]
			
            loc3 = new Array();
            loc4 = 0;
            while (loc4 < arg1.length) 
            {
                if (mommy.indexOf(arg1[loc4].itemKey) >= -1) 
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
						(loc5 = new item_skin()).x = loc1.length * 38 - Math.floor(loc1.length / 7) * 266.1;
                    loc5.y = Math.floor(loc1.length / 7) * 39;
                    loc5.scaleX = 0.53;
                    loc5.scaleY = 0.53;
                    loc5.gotoAndStop(loc3[loc4]);
                    loc5.item_name = loc3[loc4];
                    loc5.amount = 1;
					this.alpha = 100;
					this.x = 378.25
			 this.y = 259.6
                    this.cont.addChild(loc5);
					
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.item_out, false, 0, true);
                     loc5.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.item_down5, false, 0, true);
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
		        public function setup1(arg1:Array, arg2:Function, type_1:Array):*
        {
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            this.ccb = arg2;
             this.x = 378.25
			this.y = 289.6
            loc1 = [];
            loc2 = [];
			var mommy:Array = ["team", "red", "blue", "green", "yellow", "Rainbow Skin", "Million Skin", "Xmas Skin"]
			
            loc3 = new Array();
            loc4 = 0;
            while (loc4 < arg1.length) 
            {
                if (type_1.indexOf(arg1[loc4].itemKey) >= 0) 
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
						(loc5 = new item_skin()).x = loc1.length * 38 - Math.floor(loc1.length / 7) * 266.1;
                    loc5.y = Math.floor(loc1.length / 7) * 39;
                    loc5.scaleX = 0.53;
                    loc5.scaleY = 0.53;
                    loc5.gotoAndStop(loc3[loc4]);
                    loc5.item_name = loc3[loc4];
                    loc5.amount = 1;
					this.alpha = 100;
					this.x = 378.25
			 this.y = 289.6
                    this.cont.addChild(loc5);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.item_out, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.item_down1, false, 0, true);
					 loc5.addEventListener(flash.events.MouseEvent.CLICK, this.back_item, false, 0, true);
					
                    loc1.push(loc3[loc4]);
                    loc2.push(loc5);
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
                 
                }
                loc4 = loc4 + 1;
            }
            if (this.cont.height > 210) 
            {
                addEventListener(flash.events.Event.ENTER_FRAME, this.scroll_loop, false, 0, true);
            }
            return;
        }
		 public function setupoffer(arg1:Array, arg2:Function, type_:Array):*
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
             this.x = 177.1
			this.y = 142.9
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc4 = 0;
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) < 0) 
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
						(loc5 = new item_skin()).x = loc1.length * 38 - Math.floor(loc1.length / 7) * 266.1;
                    loc5.y = Math.floor(loc1.length / 7) * 39;
                    loc5.scaleX = 0.53;
                    loc5.scaleY = 0.53;
                    loc5.gotoAndStop(loc3[loc4]);
                    loc5.item_name = loc3[loc4];
                    loc5.amount = 1;
					this.alpha = 100;
					this.x = 378.25
			 this.y = 259.6
                    this.cont.addChild(loc5);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.item_out, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.item_downoffer, false, 0, true);
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
        public function setup(arg1:Array, arg2:Function, type_:Array):*
        {
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            this.ccb = arg2;
             this.x = 177.1
			this.y = 142.9
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc4 = 0;
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
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
						(loc5 = new item_skin()).x = loc1.length * 38 - Math.floor(loc1.length / 11) * 418.7;
                    loc5.y = Math.floor(loc1.length / 11) * 43;
                    loc5.scaleX = 0.53;
                    loc5.scaleY = 0.53;
                    loc5.gotoAndStop(loc3[loc4]);
                    loc5.item_name = loc3[loc4];
                    loc5.amount = 1;
					this.alpha = 100;
					this.x = 177.1
			 this.y = 142.9
                    this.cont.addChild(loc5);
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
                   
                }
                loc4 = loc4 + 1;
            }
            if (this.cont.height > 210) 
            {
                addEventListener(flash.events.Event.ENTER_FRAME, this.scroll_loop, false, 0, true);
            }
            return;
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
            if (this.cont.y < this.orgY - this.cont.height + 200) 
            {
                this.cont.y = this.orgY - this.cont.height + 200;
            }
            return;
        }

        public function item_over(arg1:flash.events.MouseEvent):*
        {
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.65, "scaleY":0.65, "time":0.5});
            this.blsnd.play();
            return;
        }

        public function item_out(arg1:flash.events.MouseEvent):*
        {
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.53, "scaleY":0.53, "time":0.4});
            return;
        }
		 public function back_item(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.53, "scaleY":0.53, "time":0.4});
            return;
        }


        public function item_down(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.08});
            /*if (!flash.display.MovieClip(root).hasItem(arg1.currentTarget.item_name)) 
            {
                flash.display.MovieClip(root).alert("You don\'t own that item anymore!");
                return;
            }*/
            if (this.numbery != 69) 
            {
                this.ccb("select", arg1.currentTarget.item_name, this.numbery);
            }
            else 
            {
                this.ccb("select", arg1.currentTarget.item_name);
            }
            this.klicksnd.play();
           	flash.display.MovieClip(root).playerme.head1.head.player_hat.gotoAndStop(String(arg1.currentTarget.item_name));
           
            return;
        }
		public function item_downoffer(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.08});
            /*if (!flash.display.MovieClip(root).hasItem(arg1.currentTarget.item_name)) 
            {
                flash.display.MovieClip(root).alert("You don\'t own that item anymore!");
                return;
            }*/
            if (this.numbery != 69) 
            {
                this.ccb("select", arg1.currentTarget.item_name, this.numbery);
            }
            else 
            {
                this.ccb("select", arg1.currentTarget.item_name);
            }
            this.klicksnd.play();
		        MovieClip(root).clients.payVault.refresh(null);
			if(  MovieClip(root).clients.payVault.has(arg1.currentTarget.item_name)){
				MovieClip(root).offermakeyes(arg1.currentTarget.item_name);
			
			MovieClip(root).offersbg.gotoAndStop(2);
				MovieClip(root).mibutt = "no";
				MovieClip(root).miass = "no";
			MovieClip(root).offersbg.itemioffer.gotoAndStop(arg1.currentTarget.item_name);
			MovieClip(root).content1.visible = false;
			MovieClip(root).inventory1.x = 999
				trace(MovieClip(root).mibutt)
				trace(MovieClip(root).miass)
			flash.display.MovieClip(parent).removeChild(this);
			}
			else{
				
				
			}
           
           
            return;
        }
		public function item_downin(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.08});
            /*if (!flash.display.MovieClip(root).hasItem(arg1.currentTarget.item_name)) 
            {
                flash.display.MovieClip(root).alert("You don\'t own that item anymore!");
                return;
            }*/
			var omg = this.wotitem
            if (this.numbery != 69) 
            {
                this.ccb("select", arg1.currentTarget.item_name, this.numbery);
            }
            else 
            {
                this.ccb("select", arg1.currentTarget.item_name);
            }
            this.klicksnd.play();
           	flash.display.MovieClip(root).offeropened.item1.gotoAndStop(String(arg1.currentTarget.item_name));
			
            return;
        }
		 public function item_down1(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.08});
            /*if (!flash.display.MovieClip(root).hasItem(arg1.currentTarget.item_name)) 
            {
                flash.display.MovieClip(root).alert("You don\'t own that item anymore!");
                return;
            }*/
            if (this.numbery != 69) 
            {
                this.ccb("select", arg1.currentTarget.item_name, this.numbery);
            }
            else 
            {
                this.ccb("select", arg1.currentTarget.item_name);
            }
            this.klicksnd.play();
			
           	flash.display.MovieClip(root).micard.miskin.gotoAndStop(String(arg1.currentTarget.item_name));
			flash.display.MovieClip(root).userme.currentskin = arg1.currentTarget.item_name;
			flash.display.MovieClip(root).userme.save();
           
            return;
        }
		public function item_down5(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.08});
            /*if (!flash.display.MovieClip(root).hasItem(arg1.currentTarget.item_name)) 
            {
                flash.display.MovieClip(root).alert("You don\'t own that item anymore!");
                return;
            }*/
            if (this.numbery != 69) 
            {
                this.ccb("select", arg1.currentTarget.item_name, this.numbery);
            }
            else 
            {
                this.ccb("select", arg1.currentTarget.item_name);
            }
            this.klicksnd.play();
			if ( MovieClip(root).itemcek1 == true && MovieClip(root).itemcek2 == false && MovieClip(root).itemcek3 == false ){
						if(flash.display.MovieClip(root).offeropened.item2.currentFrameLabel != arg1.currentTarget.item_name && flash.display.MovieClip(root).offeropened.item3.currentFrameLabel != arg1.currentTarget.item_name){
							
						
						flash.display.MovieClip(root).offeropened.item1.gotoAndStop(arg1.currentTarget.item_name);
				        }
						else {
							
						}
					
					}
					if ( MovieClip(root).itemcek1 == false && MovieClip(root).itemcek2 == true && MovieClip(root).itemcek3 == false ){
						if(flash.display.MovieClip(root).offeropened.item1.currentFrameLabel != arg1.currentTarget.item_name && flash.display.MovieClip(root).offeropened.item3.currentFrameLabel != arg1.currentTarget.item_name){
							
						
						flash.display.MovieClip(root).offeropened.item2.gotoAndStop(String(arg1.currentTarget.item_name));
						}	
						else {
							
						}
							}
					
					if ( MovieClip(root).itemcek1 == false && MovieClip(root).itemcek2 == false && MovieClip(root).itemcek3 == true ){
						
						if(flash.display.MovieClip(root).offeropened.item1.currentFrameLabel != arg1.currentTarget.item_name && flash.display.MovieClip(root).offeropened.item2.currentFrameLabel != arg1.currentTarget.item_name){
							
						
						flash.display.MovieClip(root).offeropened.item3.gotoAndStop(String(arg1.currentTarget.item_name));
						}
						else {
							
						}
							}
					MovieClip(root).TheConnection.send("igaveu", MovieClip(root).miass, MovieClip(root).offeropened.item1.currentFrame + ";" + MovieClip(root).offeropened.item2.currentFrame + ";" + MovieClip(root).offeropened.item3.currentFrame + ";")
					MovieClip(root).itemcek1 = false
					MovieClip(root).itemcek2 = false
					MovieClip(root).itemcek3 = false
					flash.display.MovieClip(root).inventory1.x = 999
		flash.display.MovieClip(parent).removeChild(this);
           
            return;
        }

        internal function frame1():*
        {
            this.blsnd = new blub2();
            this.klicksnd = new klicksound1();
            trace("sounds good");
            this.nonlisted = ["vippassit", "vipskinit", "vipbadgeit", "deluxeit"];
            this.isnonlisted = false;
            trace("lists and shits good");
            this.orgY = this.cont.y;
            trace("this suspicious good");
           
            trace("close good");
            alpha = 0;
            x = stage.stageWidth / 2;
            y = 0;
            trace("pos and alpha good");
            return;
        }

        public var cont:flash.display.MovieClip;

        public var entergiftcode_btn:flash.display.SimpleButton;

        public var close_btn:flash.display.SimpleButton;

        public var nonlisted:Array;

        public var ccb:Function;

        public var isnonlisted:Boolean;

        public var orgY:Number;

        public var blsnd:flash.media.Sound;

        public var klicksnd:flash.media.Sound;

        public var numbery:Number=69;
    }
}
