package 
{
    import caurina.transitions.*;
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;
    import flash.utils.*;

    dynamic public class coins_n_shop_mc extends MovieClip
    {
        public var enter_code_w:MovieClip;
        public var goprestige_w:MovieClip;
        public var ov:MovieClip;
        public var cont:MovieClip;
        public var entercode_btn:SimpleButton;
        public var goprestige_btn:SimpleButton;
        public var coins_txt:TextField;
        public var cantsell_ov:MovieClip;
        public var msk:MovieClip;
        public var close_btn:SimpleButton;
        public var coins_get_txt:TextField;
        public var sell_xp_btn:SimpleButton;
        public var xp_txt:TextField;
        public var buy_coins_btn:SimpleButton;
        public var busy:Boolean;
        public var sd:Object;
        public var citemD:Object;
        public var code_tryied_failed:Boolean;

        public function coins_n_shop_mc()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function clmwdn(event:MouseEvent)
        {
            if (this.busy)
            {
                return;
            }
            MovieClip(parent).removeChild(this);
            return;
        }// end function

        public function setup(param1:Object)
        {
			ov.visible = false
			goprestige_w.visible = false
			enter_code_w.visible = false
			  this.cantsell_ov.gotoAndStop(1);
			this.cantsell_ov.visible = true;
            scaleX = 0.3;
            scaleY = 0.3;
            Tweener.addTween(this, {scaleX:1, scaleY:1, time:0.4, transition:"easeOutBack"});
            this.sd = param1;
			
            if (param1.level == 30)
            {
                this.cantsell_ov.visible = false;
            }
			trace(param1.xp) 
            this.xp_txt.text = param1.xp + " XP";
            this.coins_get_txt.text = Math.round(param1.xp / 20) + " Coins";
            this.coins_txt.text = param1.coins + "";
            //if (MovieClip(root).items.length > 30)
           // {
           //     MovieClip(root).addAchievement("shop_looter");
           // }
            this.setupShopItems(MovieClip(root).shop_items);
            return;
        }// end function

        public function gopr(event:MouseEvent)
        {
            this.goprestige_w.init();
            return;
        }// end function

      public function sllxp(event:MouseEvent)
        {
            this.xp_txt.text = "0 XP";
            this.coins_get_txt.text = "0 Coins";
            this.cantsell_ov.visible = true;
            this.cantsell_ov.gotoAndStop(2);
            MovieClip(root).sellXP();
            this.coins_txt.text = MovieClip(root).coins + "";
            if (Math.round(this.sd.xp / 20) > 1200000)
            {
                MovieClip(root).banPlayer("Selling hacked XP");
            }
            return;
        }// end function

        public function xpGotReset()
        {
            this.xp_txt.text = "0 XP";
            this.coins_get_txt.text = "0 Coins";
            return;
        }// end function
  
        public function buyItem(param1:Object)
        {
            if (MovieClip(root).coinsi < param1.price)
            {
                MovieClip(root).alerts("Not enough coins!");
            }
            else
            {
                this.citemD = param1;
                MovieClip(root).buyItem(param1.n, param1.price);
                this.ov.visible = true;
            }
            return;
        }// end function

        public function itemBought()
        {
            this.ov.visible = false;
            MovieClip(root).alerts("Item bought!");
            this.citemD.mvc.gotoAndStop(2);
            this.citemD.mvc.name_txt.text = this.citemD.mvc.n;
            MovieClip(root).player_card_setup();
            this.coins_txt.text = MovieClip(root).coinsi + "";
           // if (MovieClip(root).items.length > 27)
           // {
           //     MovieClip(root).addAchievement("shop_looter");
           // }
			
            return;
        }// end function
 /*
        public function entercode_btn_press(event:MouseEvent)
        {
            if (!this.code_tryied_failed)
            {
                this.enter_code_w.visible = true;
            }
            else
            {
                MovieClip(root).alert("Disabled for 1 minute!");
            }
            return;
        }// end function

        public function buy_coins_btn_press(event:MouseEvent)
        {
            MovieClip(root).openPremiumShop();
            MovieClip(parent).removeChild(this);
            return;
        }// end function

        public function rec_gc(param1)
        {
            var _loc_2:* = null;
            this.enter_code_w.visible = false;
            this.enter_code_w.gotoAndStop(1);
            if (param1.indexOf("max_user") != -1)
            {
                MovieClip(root).alert("Sorry request failed. \n please try again!");
            }
            else if (param1.indexOf("none") != -1)
            {
                MovieClip(root).alert("Code wrong!\nNice try.");
                this.code_tryied_failed = true;
                setTimeout(this.code_tryied_failed_setfalse, 60000);
            }
            else if (param1.indexOf("used") != -1)
            {
                MovieClip(root).alert("Code already used.");
                this.code_tryied_failed = true;
                setTimeout(this.code_tryied_failed_setfalse, 20000);
            }
            else if (param1.indexOf("free") != -1)
            {
                _loc_2 = param1.split(";");
                MovieClip(root).alert("Code correct!\n+" + _loc_2[1] + " Coins.");
                MovieClip(root).addCoins(parseInt(_loc_2[1]));
                MovieClip(root).refreshStats();
                this.coins_txt.text = MovieClip(root).coins + "";
            }
            return;
        }// end function

        public function code_tryied_failed_setfalse()
        {
            this.code_tryied_failed = false;
            return;
        }// end function
      */
        public function setupShopItems(param1:Array)
        {
			 this.msk.mouseEnabled = false;
            var _loc_3:* = null;
            var _loc_2:* = 0;
            while (_loc_2 < param1.length)
            {
                
                _loc_3 = new shop_item_disp();
                if (_loc_2 == Math.round((_loc_2 - 0.01) / 2) * 2)
                {
                    _loc_3.x = -95;
                }
                else
                {
                    _loc_3.x = 95;
                }
                _loc_3.y = Math.round((_loc_2 - 0.01) / 2) * 50;
                this.cont.addChild(_loc_3);
                if (!MovieClip(root).hasItem(param1[_loc_2].n))
                {
					 _loc_3.gotoAndStop(1);
                    _loc_3.price_txt.text = param1[_loc_2].price;
                    _loc_3.buy_btn.addEventListener(MouseEvent.CLICK, this.buy_item_click);
                }
                else
                {
                    _loc_3.gotoAndStop(2);
                }
                _loc_3.n = param1[_loc_2].mc;
                _loc_3.itm = param1[_loc_2].n;
                _loc_3.price = param1[_loc_2].price;
                _loc_3.disp.gotoAndStop(param1[_loc_2].n);
                _loc_3.name_txt.text = param1[_loc_2].mc;
                _loc_2 = _loc_2 + 1;
            }
            addEventListener(Event.ENTER_FRAME, this.scrollloop, false, 0, true);
            return;
        }// end function

        public function scrollloop(event:Event)
        {
            if (mouseY < this.msk.y - this.msk.height / 2)
            {
                this.cont.y = this.cont.y + 6;
            }
            else if (mouseY > this.msk.y + this.msk.height / 2)
            {
                this.cont.y = this.cont.y - 6;
            }
            if (this.cont.y > 54)
            {
                this.cont.y = 54;
            }
            if (this.cont.y < -this.cont.height + 54 + this.msk.height - 5)
            {
                this.cont.y = -this.cont.height + 54 + this.msk.height - 5;
            }
            return;
        }// end function

        public function buy_item_click(event:MouseEvent)
        {
            this.buyItem({n:event.currentTarget.parent.itm, price:event.currentTarget.parent.price, mvc:event.currentTarget.parent});
            return;
        }// end function

        function frame1()
        {
            this.busy = false;
            this.close_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.clmwdn);
            this.goprestige_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.gopr);
            this.sell_xp_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.sllxp);
            this.code_tryied_failed = false;
            this.entercode_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.entercode_btn_press);
            this.buy_coins_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.buy_coins_btn_press);
            this.ov.visible = false;
            this.goprestige_w.visible = false;
            this.enter_code_w.visible = false;
            this.msk.mouseEnabled = false;
            this.entercode_btn.visible = false;
            return;
        }// end function

    }
}
