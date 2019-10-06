package 
{
    import caurina.transitions.*;
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
	import flash.utils.*
    
    public dynamic class items_open extends flash.display.MovieClip
    {
		public var wotitem
        public function items_open()
        {
			
            super();
            addFrameScript(0, frame1);

            return;
        }

        public function cls(arg1:flash.events.MouseEvent):*
        {
            if (numbery != 69) 
            {
                ccb("cancel", "", 0);
            }
            else 
            {
                ccb("cancel", "");
            }
            flash.display.MovieClip(parent).removeChild(this);
			//mynewsss.visible = true;
            return;
        }
         public function closeme(){
			    MovieClip(root).maekoffer.visible = true
				flash.display.MovieClip(parent).removeChild(this);
			
			
			trace("yes i was removed now stfu xddddddd")
		 }
		
		  public function closeme1(e:MouseEvent){
			    
				flash.display.MovieClip(parent).removeChild(this);
			
			
			trace("yes i was removed now stfu xddddddd")
		 }
        public function about(arg1:int):*
        {
            numbery = arg1;
			// arg1 = ["red", "blue", "green", "yellow", "white", "team", "vip", "enderbros", "planejump"];
            
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
            ccb = arg2;
             x = 378.25
			y = 289.6
            loc1 = [];
            loc2 = [];
			var mommy:Array = [""]
			
            loc3 = new Array();
            loc4 = 0;
            while (loc4 < arg1.length) 
            {
                if (mommy.indexOf(arg1[loc4].itemKey) < 0 )
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
					alpha = 100;
					x = 378.25
			 y = 259.6
                    cont.addChild(loc5);
					
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                     loc5.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, item_down5, false, 0, true);
					 loc5.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					
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
            if (cont.height > 210) 
            {
                addEventListener(flash.events.Event.ENTER_FRAME, scroll_loop, false, 0, true);
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
            ccb = arg2;
             x = 378.25
			y = 289.6
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
						(loc5 = new item_skin()).x = loc1.length * 34 - Math.floor(loc1.length / 7) * 340;
                    loc5.y = Math.floor(loc1.length / 7) * 34;
                    loc5.scaleX = 0.53;
                    loc5.scaleY = 0.53;
                    loc5.gotoAndStop(loc3[loc4]);
                    loc5.item_name = loc3[loc4];
                    loc5.amount = 1;
					alpha = 100;
					x = 378.25
			 y = 289.6
                    cont.addChild(loc5);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, item_down1, false, 0, true);
					 loc5.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					
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
            if (cont.height > 210) 
            {
                addEventListener(flash.events.Event.ENTER_FRAME, scroll_loop, false, 0, true);
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
            ccb = arg2;
             x = 177.1
			y = 142.9
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
					alpha = 100;
					x = 378.25
			 y = 259.6
                    cont.addChild(loc5);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    loc5.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, item_downoffer, false, 0, true);
					 loc5.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					
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
            if (cont.height > 210) 
            {
                addEventListener(flash.events.Event.ENTER_FRAME, scroll_loop, false, 0, true);
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
            ccb = arg2;
            var mynona = 5
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc4 = 0;
			
			
			
			
			
			//start
			
					
					
					
					//end
			for(var i=0;i<14;i++){
					this["sk" + i].visible = false

                     }
					 sk0.addEventListener(flash.events.MouseEvent.ROLL_OVER, skin_over, false, 0, true);
                   sk0.addEventListener(flash.events.MouseEvent.ROLL_OUT, skin_out, false, 0, true);
                    sk0.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, skin_down, false, 0, true);
					sk0.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					sk0.gotoAndStop("red");
					 sk0.item_name = "red"
					 this["sk" + "0"].visible = true
					sk1.addEventListener(flash.events.MouseEvent.ROLL_OVER, skin_over, false, 0, true);
                sk1.addEventListener(flash.events.MouseEvent.ROLL_OUT, skin_out, false, 0, true);
                   sk1.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, skin_down, false, 0, true);
					sk1.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					sk1.gotoAndStop("blue");
					 sk1.item_name = "blue";
					 this["sk" + "1"].visible = true
					 sk2.addEventListener(flash.events.MouseEvent.ROLL_OVER, skin_over, false, 0, true);
                   sk2.addEventListener(flash.events.MouseEvent.ROLL_OUT, skin_out, false, 0, true);
                  sk2.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, skin_down, false, 0, true);
					sk2.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					sk2.gotoAndStop("green");
					sk2.item_name = "green";
					 this["sk" + "2"].visible = true
					  sk3.addEventListener(flash.events.MouseEvent.ROLL_OVER, skin_over, false, 0, true);
                   sk3.addEventListener(flash.events.MouseEvent.ROLL_OUT, skin_out, false, 0, true);
                  sk3.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, skin_down, false, 0, true);
					sk3.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					sk3.gotoAndStop("yellow");
					sk3.item_name = "yellow";
					 this["sk" + "3"].visible = true
					  sk4.addEventListener(flash.events.MouseEvent.ROLL_OVER, skin_over, false, 0, true);
                   sk4.addEventListener(flash.events.MouseEvent.ROLL_OUT, skin_out, false, 0, true);
                  sk4.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, skin_down, false, 0, true);
					sk4.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					sk4.gotoAndStop("white");
					sk4.item_name = "white";
					 this["sk" + "4"].visible = true
					
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
				mynona = mynona + 1
            }
            loc4 = 0;
			 mynona = 5;
			
            while (loc4 < loc3.length) 
            {
				trace(mynona)
		
                if (loc1.indexOf(loc3[loc4]) == -1) 
					
                {
					var skinhow = ["sk" + mynona]
					trace(sk1.scaleX);
			
			               this[skinhow].amount = 1;
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, skin_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, skin_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, skin_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					this[skinhow].gotoAndStop(loc3[loc4]);
					 this[skinhow].item_name = loc3[loc4];
					 this[skinhow].visible = true
                    loc1.push(loc3[loc4]);
					 loc2.push(this[skinhow]);
					mynona = mynona + 1
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
					
                   
                }
                loc4 = loc4 + 1;
				
				
            }
            /*if (MovieClip(root).hasItem("tradingpass"))
            {
              // trading_pass.visible = true;
               
            }
			else{
				 //..trading_pass.visible = false;
			}
			if (MovieClip(root).hasItem("vippass"))
            {
              // vip_pass.visible = true;
               
            }
			else{
				// vip_pass.visible = false;
			}
			if (MovieClip(root).hasItem("ninjakick"))
            {
               //ninj.visible = true;
               
            }
			else{
				// ninj.visible = false;
			}
			if (MovieClip(root).hasItem("shockwave"))
            {
               //sw.visible = true;
               
            }
			else{
				// sw.visible = false;
			}
			if (MovieClip(root).hasItem("invi"))
            {
              // invi.visible = true;
               
            }
			else{
				// invi.visible = false;
			}
			if (MovieClip(root).hasItem("powerboost"))
            {
             //  pb.visible = true;
               
            }
			else{
				// pb.visible = false;
			}
			 zskin.visible = false;
			 lolli.visible = false;
			 mskin.visible = false;
			inspec.visible = false;
			//specialskin_txt.visible = false;
			mtrxskin.visible = false;
			 if (MovieClip(root).hasItem("stickrunteam"))
            {
                initSkin(mtrxskin, "matrixskin");
            }
			if (MovieClip(root).hasItem("zombieeyes") && MovieClip(root).hasItem("zombiemouth") && MovieClip(root).hasItem("zombieclaws"))
            {
                zskin.visible = true;
               // specialskin_txt.visible = true;
                initSkin(zskin, "infectedskin");
            }
			 if (MovieClip(root).hasItem("millionairehat") && MovieClip(root).hasItem("millionaireglasses") && MovieClip(root).hasItem("millionairecase"))
            {
                mskin.visible = true;
             //   specialskin_txt.visible = true;
                initSkin(mskin, "millionaireskin");
            }
			 if (MovieClip(root).hasItem("inspectorhat") && MovieClip(root).hasItem("inspectorhand") && MovieClip(root).hasItem("inspectorglass"))
            {
                inspec.visible = true;
               // specialskin_txt.visible = true;
                initSkin(inspec, "inspectorskin");
            }
			if (MovieClip(root).hasItem("lollipop"))
            {
                lolli.visible = true;
              //  specialskin_txt.visible = true;
                initSkin(lolli, "lollipopskin");
            }*/
			
			
            return;
        }
		
		public function initSkin(param1:MovieClip, param2:String)
        {
			param1.gotoAndStop(param2);
					param1.item_name = param2;
			param1.addEventListener(flash.events.MouseEvent.ROLL_OVER, skin_over, false, 0, true);
                   param1.addEventListener(flash.events.MouseEvent.ROLL_OUT, skin_out, false, 0, true);
                    param1.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, skin_down, false, 0, true);
					param1.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
			param1.visible = true
					
           
            return;
        }// end function
		
		//heads
		
		public function setuphead(arg1:Array, arg2:Function, type_:Array):*
        {
			
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc41:*=0;
			 var momma:*=0;
            var loc5:*=null;
            ccb = arg2;
            var itemit = "red"
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc41 = 0;
			   momma = 0;
			
					for(var i=0;i<29;i++){
					this["of" + i].visible = false

                     }
					 head_none.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                   head_none.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    head_none.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, head_down, false, 0, true);
					head_none.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					 head_none.item_name = "1";
			
            while (loc41 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc41].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc41].itemKey);
                }
                loc41 = loc41 + 1;
				 momma = momma + 1;
            }
            momma = 0;
			  loc41 = 0;
            while (loc41 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc41]) == -1) 
                {
					
						trace(loc3[loc41])
						itemit = itemit + loc3[loc41];
					trace(loc41)
						var skinhow = ["of" + momma]
					trace(head_none.scaleX);
				   this[skinhow].amount = 1;
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, head_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
				
					this[skinhow].gotoAndStop(loc3[loc41]);
					trace(skinhow)
					this[skinhow].item_name = loc3[loc41];
					 this[skinhow].visible = true
                    loc1.push(loc3[loc41]);
					loc2.push(this[skinhow]);
					 momma = momma + 1;
                    
                }
				else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc41])]).amount + 1;
                    loc6.amount = loc7;
                   
                }
				
               
                loc41 = loc41 + 1;
				
            }
            return;
        }
		
		
		//bgs
		
		public function setupbg(arg1:Array, arg2:Function, type_:Array):*
        {
			
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            ccb = arg2;
            var mynona = 0
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc4 = 0;
			
					for(var i=0;i<3;i++){
					this["bg" + i].visible = false

                     }
					 bg_none.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                   bg_none.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    bg_none.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, bg_down, false, 0, true);
					bg_none.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					 bg_none.item_name = "1";
			
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
				mynona = mynona + 1
            }
            loc4 = 0;
			mynona = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
						var skinhow = ["bg" + mynona]
					trace(head_none.scaleX);
					
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, bg_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					this[skinhow].gotoAndStop(loc3[loc4]);
					this[skinhow].item_name = loc3[loc4];
					 this[skinhow].visible = true
                    loc1.push(loc3[loc4]);
						loc2.push(this["of" + mynona]);
					mynona = mynona + 1
                    
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
                   
                }
                loc4 = loc4 + 1;
            }
            return;
        }
		
		
		//shoes
		
		public function setupfeet(arg1:Array, arg2:Function, type_:Array):*
        {
			
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            ccb = arg2;
            
            loc1 = [];
            loc2 = [];
			var mynona = 0
            loc3 = new Array();
            loc4 = 0;
			
					for(var i=0;i<5;i++){
					this["sh" + i].visible = false

                     }
					 	 shoes_none.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                   shoes_none.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    shoes_none.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, shoes_down, false, 0, true);
					shoes_none.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					 shoes_none.item_name = "1";
			
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
				mynona = mynona + 1
            }
			mynona = 0;
            loc4 = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
						var skinhow = ["sh" + mynona]
					trace(head_none.scaleX);
					
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, shoes_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					this[skinhow].gotoAndStop(loc3[loc4]);
					this[skinhow].item_name = loc3[loc4];
					 this["sh" + mynona].visible = true
                    loc1.push(loc3[loc4]);
				loc2.push(this["of" + mynona]);
					mynona = mynona + 1
                    
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
                   
                }
                loc4 = loc4 + 1;
            }
            return;
        }
		public function setupbody(arg1:Array, arg2:Function, type_:Array):*
        {
			
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            ccb = arg2;
            
            loc1 = [];
            loc2 = [];
			var mynona = 0
            loc3 = new Array();
            loc4 = 0;
			
					for(var i=0;i<5;i++){
					this["bd" + i].visible = false

                     }
					 	 body_none.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                   body_none.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    body_none.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, body_down, false, 0, true);
					body_none.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					 body_none.item_name = "1";
			
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
				mynona = mynona + 1
            }
			mynona = 0;
            loc4 = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
						var skinhow = ["bd" + mynona]
					trace(head_none.scaleX);
					
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, body_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					this[skinhow].gotoAndStop(loc3[loc4]);
					this[skinhow].item_name = loc3[loc4];
					 this["bd" + mynona].visible = true
                    loc1.push(loc3[loc4]);
				loc2.push(this["of" + mynona]);
					mynona = mynona + 1
                    
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
                   
                }
                loc4 = loc4 + 1;
            }
            return;
        }
		
		//mouth
		
		public function setupmouth(arg1:Array, arg2:Function, type_:Array):*
        {
			
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            ccb = arg2;
            var mynona = 0
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc4 = 0;
			
					for(var i=0;i<11;i++){
					this["om" + i].visible = false

                     }
				 mouth_none.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                   mouth_none.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    mouth_none.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, mouth_down, false, 0, true);
					mouth_none.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					 mouth_none.item_name = "1";
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
				mynona = mynona + 1
            }
            loc4 = 0;
			mynona = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
						var skinhow = ["om" + mynona]
					trace(head_none.scaleX);
					
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, mouth_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					this[skinhow].gotoAndStop(loc3[loc4]);
					this[skinhow].item_name = loc3[loc4];
					 this["om" + mynona].visible = true
                    loc1.push(loc3[loc4]);
					loc2.push(this["of" + mynona]);
					mynona = mynona + 1
                    
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
                   
                }
                loc4 = loc4 + 1;
            }
            return;
        }
		
		
		//hands
		
		public function setuphands(arg1:Array, arg2:Function, type_:Array):*
        {
			
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            ccb = arg2;
            var mynona = 0
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc4 = 0;
			
					for(var i=0;i<7;i++){
					this["hnd" + i].visible = false

                     }
				 hands_none.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                   hands_none.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    hands_none.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, hands_down, false, 0, true);
					hands_none.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					  hands_none.item_name = "1";
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
				mynona = mynona + 1
            }
            loc4 = 0;
			mynona = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
						var skinhow = ["hnd" + mynona]
					trace(head_none.scaleX);
					
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, hands_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					this[skinhow].gotoAndStop(loc3[loc4]);
					this[skinhow].item_name = loc3[loc4];
					 this["hnd" + mynona].visible = true
                    loc1.push(loc3[loc4]);
					loc2.push(this["of" + mynona]);
					mynona = mynona + 1
                    
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
                   
                }
                loc4 = loc4 + 1;
            }
            return;
        }
		
		//shoes
		
		public function setupglasses(arg1:Array, arg2:Function, type_:Array):*
        {
			
            var loc6:*=undefined;
            var loc7:*=undefined;
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=null;
            ccb = arg2;
            var mynona = 0
            loc1 = [];
            loc2 = [];
			
            loc3 = new Array();
            loc4 = 0;
			
					for(var i=0;i<14;i++){
					this["og" + i].visible = false

                     }
					 	 glasses_none.addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                   glasses_none.addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    glasses_none.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, glasses_down, false, 0, true);
					glasses_none.addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					 glasses_none.item_name = "1";
			
            while (loc4 < arg1.length) 
            {
                if (type_.indexOf(arg1[loc4].itemKey) >= 0) 
                {
                    loc3.push(arg1[loc4].itemKey);
                }
                loc4 = loc4 + 1;
				mynona = mynona + 1
            }
            loc4 = 0;
			mynona = 0;
            while (loc4 < loc3.length) 
            {
                if (loc1.indexOf(loc3[loc4]) == -1) 
                {
						var skinhow = ["og" + mynona]
					trace(head_none.scaleX);
					
					this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OVER, item_over, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.ROLL_OUT, item_out, false, 0, true);
                    this[skinhow].addEventListener(flash.events.MouseEvent.MOUSE_DOWN, glasses_down, false, 0, true);
					this[skinhow].addEventListener(flash.events.MouseEvent.CLICK, back_item, false, 0, true);
					this[skinhow].gotoAndStop(loc3[loc4]);
					this[skinhow].item_name = loc3[loc4];
					 this["og" + mynona].visible = true
                    loc1.push(loc3[loc4]);
					loc2.push(this["of" + mynona]);
					mynona = mynona + 1
                    
                }
                else 
                {
                    loc7 = (loc6 = loc2[loc1.indexOf(loc3[loc4])]).amount + 1;
                    loc6.amount = loc7;
                   
                }
                loc4 = loc4 + 1;
            }
            return;
        }
		
		
		
		

        public function scroll_loop(arg1:flash.events.Event):*
        { var headin;
            if (mouseY < -110) 
            {
               headin.y = headin.y + 8;
            }
            else if (mouseY > 110) 
            {
                headin.y = headin.y - 8;
			}
            if (headin.y > orgY) 
            {
                headin.y = orgY;
            }
            if (headin.y < orgY - headin.height + 200) 
            {
                headin.y = orgY - headin.height + 200;
            }
            
        }

        public function item_over(arg1:flash.events.MouseEvent):*
        {
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.8, "scaleY":0.8, "rotation":10, "time":0.2});
          //  blsnd.play();
            return;
        }

        public function item_out(arg1:flash.events.MouseEvent):*
        {
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.5, "scaleY":0.5, "rotation":0, "time":0.5});
            return;
        }
		 public function back_item(arg1:flash.events.MouseEvent):*
        {
            //caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.12});
            return;
        }
		 public function skin_over(arg1:flash.events.MouseEvent):*
        {
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.8, "scaleY":0.8, "rotation":10, "time":0.2});
           // blsnd.play();
            return;
        }

        public function skin_out(arg1:flash.events.MouseEvent):*
        {
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.5999908447265625, "scaleY":0.5999908447265625, "rotation":0, "time":0.5});
            return;
        }
           public function skin_down(arg1:flash.events.MouseEvent):*
        {
			// klicksnd.play();
           	currentSkin.gotoAndStop(arg1.currentTarget.item_name)
			//MovieClip(root).status_p.bg.gotoAndStop(arg1.currentTarget.item_name)
			MovieClip(root).userme.skin = arg1.currentTarget.item_name;
			MovieClip(root).userme.save();
           
            return;
		}
		 public function head_down(arg1:flash.events.MouseEvent):*
        {
			 //klicksnd.play();
           	hatq.gotoAndStop(arg1.currentTarget.item_name)
			MovieClip(root).userme.hat = arg1.currentTarget.item_name;
			MovieClip(root).userme.save();
           
            return;
		}
		public function shoes_down(arg1:flash.events.MouseEvent):*
        {
			 //klicksnd.play();
           //	cplayer.playa.shoe2.shoes.gotoAndStop(arg1.currentTarget.item_name)
				//cplayer.playa.shoe1.shoes.gotoAndStop(arg1.currentTarget.item_name)
			MovieClip(root).userme.shoes = arg1.currentTarget.item_name;
			MovieClip(root).userme.save();
           
            return;
		}
		public function glasses_down(arg1:flash.events.MouseEvent):*
        {
			// klicksnd.play();
           //	cplayer.playa.head.glasses.gotoAndStop(arg1.currentTarget.item_name)
		    eyesq.gotoAndStop(arg1.currentTarget.item_name)
			MovieClip(root).userme.glasses = arg1.currentTarget.item_name;
			MovieClip(root).userme.save();
           
            return;
		}
		public function mouth_down(arg1:flash.events.MouseEvent):*
        {
			 //klicksnd.play();
           //	cplayer.playa.head.mouth.gotoAndStop(arg1.currentTarget.item_name)
			MovieClip(root).userme.mouth = arg1.currentTarget.item_name;
			MovieClip(root).userme.save();
           
            return;
		}
		public function body_down(arg1:flash.events.MouseEvent):*
        {
		    bodyq.gotoAndStop(arg1.currentTarget.item_name)
			MovieClip(root).userme.body = arg1.currentTarget.item_name;
			MovieClip(root).userme.save();
           
            return;
		}
		public function bg_down(arg1:flash.events.MouseEvent):*
        {
			 //klicksnd.play();
           //	cplayer.currentBG.gotoAndStop(arg1.currentTarget.item_name)
           
            return;
		}
		
		public function hands_down(arg1:flash.events.MouseEvent):*
        {
			 //klicksnd.play();
           	//cplayer.playa.hands1.inner.gotoAndStop(arg1.currentTarget.item_name)
			//cp//layer.playa.hands.inner.gotoAndStop(arg1.currentTarget.item_name)
			MovieClip(root).userme.hands = arg1.currentTarget.item_name;
			MovieClip(root).userme.save
           
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
            if (numbery != 69) 
            {
                ccb("select", arg1.currentTarget.item_name, numbery);
            }
            else 
            {
                ccb("select", arg1.currentTarget.item_name);
            }
           // klicksnd.play();
           	currentSkin.gotoAndStop(arg1.currentTarget.item_name)
           
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
            if (numbery != 69) 
            {
                ccb("select", arg1.currentTarget.item_name, numbery);
            }
            else 
            {
                ccb("select", arg1.currentTarget.item_name);
            }
           // klicksnd.play();
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
			var omg = wotitem
            if (numbery != 69) 
            {
                ccb("select", arg1.currentTarget.item_name, numbery);
            }
            else 
            {
                ccb("select", arg1.currentTarget.item_name);
            }
           // klicksnd.play();
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
            if (numbery != 69) 
            {
                ccb("select", arg1.currentTarget.item_name, numbery);
            }
            else 
            {
                ccb("select", arg1.currentTarget.item_name);
            }
            //klicksnd.play();
			
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
            if (numbery != 69) 
            {
                ccb("select", arg1.currentTarget.item_name, numbery);
            }
            else 
            {
                ccb("select", arg1.currentTarget.item_name);
            }
            //klicksnd.play();
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
			currentSkin.gotoAndStop(MovieClip(root).userme.skin);
			hatq.gotoAndStop(MovieClip(root).userme.hat);
			eyesq.gotoAndStop(MovieClip(root).userme.glasses);
			bodyq.gotoAndStop(MovieClip(root).userme.body);
			/*cplayer.playa.head.mouth.gotoAndStop(MovieClip(root).userme.mouth);
			cplayer.playa.head.glasses.gotoAndStop(MovieClip(root).userme.glasses);
			cplayer.playa.hands1.inner.gotoAndStop(MovieClip(root).userme.hands);
			cplayer.playa.hands.inner.gotoAndStop(MovieClip(root).userme.hands);
			cplayer.playa.shoe1.shoes.gotoAndStop(MovieClip(root).userme.shoes);
			cplayer.playa.shoe2.shoes.gotoAndStop(MovieClip(root).userme.shoes);*/
			close_btn.addEventListener(MouseEvent.CLICK, closeme1)
            blsnd = new blub2();
            klicksnd = new klicksound1();
            trace("A");
            nonlisted = ["vippassit", "vipskinit", "vipbadgeit", "deluxeit"];
            isnonlisted = false;
            trace("J");
            orgY =  cont.y;
            trace("IS");   
            trace("close good");
            alpha = 0;
            trace("AWESOME");
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
