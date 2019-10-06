package 
{
    import caurina.transitions.*;
    import flash.display.*;
    import flash.events.*;
    import flash.media.*;
    import flash.text.*;
    
    public dynamic class items_mc extends flash.display.MovieClip
    {
        public function items_mc()
        {
            super();
            addFrameScript(0, this.frame1);
            this.scaleX = 0.6;
            this.scaleY = 0.6;
            caurina.transitions.Tweener.addTween(this, {"scaleX":1, "scaleY":1, "time":1, "rotation":0, "transition":"easeOutBack"});
            return;
        }

        internal function frame1():*
        {
            this.x_btn.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.clmwdn);
            this.bs = new blub2();
            this.ks = new klicksound1();
            this.hats_page2 = 0;
            return;
        }

        public function detonate(arg1:*):*
        {
            flash.display.MovieClip(root).clients.payVault.refresh(this.exterminate);
            return;
        }

        public function clmwdn(arg1:flash.events.MouseEvent):*
        {
            flash.display.MovieClip(root).user.save();
            flash.display.MovieClip(parent).removeChild(this);
            return;
        }

        public function exterminate():*
        {
            var loc1:*=new items_table();
            flash.display.MovieClip(root).addChild(loc1);
            loc1.setup(flash.display.MovieClip(root).clients.payVault.items, flash.display.MovieClip(root).deleteitem);
            return;
        }

        public function setup():*
        {
            var loc2:*=undefined;
            var loc3:*=undefined;
            trace("kjut's Ham!!!!!");
            this.ov.visible = false;
            this.aaa.addEventListener(flash.events.MouseEvent.CLICK, this.detonate);
            this.currentSkin.gotoAndStop(flash.display.MovieClip(root).user.equippedskin);
            this.petss.gotoAndStop(flash.display.MovieClip(root).user.mypet);
            trace("aha");
            var loc1:*=0;
            trace("MY NAME IS BOGDAN THE FAGGOT");
            this.outfit_wings = ["red", "blue", "green", "yellow", "white", "team", "vip", "enderbros", "planejump"];
            this.skins = ["red"];
            this.outfit_arrays = [this.outfit_head, this.outfit_glasses, this.outfit_mouth, this.outfit_wings, this.outfit_hands];
            this.vip.visible = false;
            this.verified.visible = false;
            this.team.visible = false;
            this.idk.visible = false;
            trace("good part 1");
            trace("good part 1,2");
            this.skins_counter = 0;
            //this.hats_counter = 0;
            //this.glasses_counter = 0;
            //this.mouth_counter = 0;
            this.wings_counter = 0;
           // this.hands_counter = 0;
            loc1 = 0;
            trace("good part 1,5");
            while (loc1 < this.skins.length) 
            {
                this["sk" + loc1].visible = false;
                if (flash.display.MovieClip(root).hasItem(this.skins[loc1])) 
                {
                    this.initSkin(this["sk" + this.skins_counter], this.skins[loc1]);
                    loc2 = this;
                    loc3 = this.skins_counter + 1;
                    loc2.skins_counter = loc3;
                }
                loc1 = loc1 + 1;
            }
            trace("good part 2,5");
            loc1 = 0;
            while (loc1 < this.outfit_wings.length) 
            {
                this["sh" + loc1].visible = false;
                if (flash.display.MovieClip(root).hasItem(this.outfit_wings[loc1])) 
                {
                    this.initWings(this["sh" + this.wings_counter], this.outfit_wings[loc1]);
                    loc2 = this;
                    loc3 = this.wings_counter + 1;
                    loc2.wings_counter = loc3;
                }
                loc1 = loc1 + 1;
            }
            trace("good part 3");
            if (!(this.wings_counter > 0)) 
            {
            };
            trace("good part 5");
            if (flash.display.MovieClip(root).user.equippedskin != "none") 
            {
                this.currentSkin.gotoAndStop(flash.display.MovieClip(root).user.equippedskin);
            }
            else 
            {
                this.currentSkin.gotoAndStop("none");
            }
            this.initWings(this.wings_none, "none");
            return;
        }

        public function initSkin(arg1:flash.display.MovieClip, arg2:String):*
        {
            this.initItem(arg1, arg2, "skin");
            return;
        }

        public function initWings(arg1:flash.display.MovieClip, arg2:String):*
        {
            this.initItem(arg1, arg2, "wings");
            return;
        }
		
        public function initItem(arg1:flash.display.MovieClip, arg2:String, arg3:String):*
        {
            arg1.visible = true;
            arg1.gotoAndStop(flash.display.MovieClip(root).hasLabel(arg1, arg2) ? arg2 : 1);
            arg1.itm = arg2;
            arg1.typ = arg3;
            if (!arg1.hasEventListener(flash.events.MouseEvent.MOUSE_DOWN)) 
            {
                arg1.addEventListener(flash.events.MouseEvent.ROLL_OVER, this.sk_over);
                arg1.addEventListener(flash.events.MouseEvent.ROLL_OUT, this.sk_out);
                arg1.addEventListener(flash.events.MouseEvent.MOUSE_DOWN, this.sk_down);
                arg1.addEventListener(flash.events.MouseEvent.MOUSE_UP, this.sk_up);
            }
            return;
        }

        public function sk_over(arg1:flash.events.MouseEvent):*
        {
            this.bs.play(0, 0, new flash.media.SoundTransform(0.75));
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.7, "scaleY":0.7, "rotation":10, "time":0.2});
            return;
        }

        public function sk_out(arg1:flash.events.MouseEvent):*
        {
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.5});
            return;
        }

        public function sk_down(arg1:flash.events.MouseEvent):*
        {
			trace("BAMMMMMMMMMMMM");
			flash.display.MovieClip(parent).removeChild(this);
			this.selectItem(arg1.currentTarget);
            caurina.transitions.Tweener.addTween(arg1.currentTarget, {"scaleX":0.4, "scaleY":0.4, "rotation":0, "time":0.12});
            return;
        }

        public function sk_up(arg1:flash.events.MouseEvent):*
        {
            this.selectItem(arg1.currentTarget);
            return;
        }

        public function selectItem(arg1:*):*
        {
            if (arg1.typ != "skin") 
            {
                if (arg1.typ != "wings") 
                {
                    flash.display.MovieClip(root).user.mypet = arg1.itm;
                    flash.display.MovieClip(root).user.save();
					trace("BAMMMMMMMMMMMM");
                    this.updateOutfit();
                }
            }
            else 
            {
                flash.display.MovieClip(root).user.equippedskin = arg1.itm;
                flash.display.MovieClip(root).user.save();
                this.updateSkin();
                this.updateOutfit();
            }
            return;
        }

        public function updateSkin():*
        {
            if (flash.display.MovieClip(root).user.equippedskin != "none") 
            {
                this.currentSkin.gotoAndStop(flash.display.MovieClip(root).user.equippedskin);
            }
            else 
            {
                this.currentSkin.gotoAndStop("red");
            }
            return;
        }

        public function updateOutfit():*
        {
			trace("BA");
            this.petss.gotoAndStop(flash.display.MovieClip(root).user.mypet);
            flash.display.MovieClip(root).charAppear();
            return;
        }

        public function pu_over(arg1:flash.events.MouseEvent):*
        {
            this.pu_info.visible = true;
            this.pu_info.alpha = 0;
            this.pu_info.x = Math.max(-160, arg1.currentTarget.x);
            this.pu_info.y = 100;
            this.pu_info.gotoAndStop(arg1.currentTarget.puid);
            return;
        }

        public function pu_out(arg1:flash.events.MouseEvent):*
        {
            return;
        }

        public function deldown(arg1:flash.events.MouseEvent):*
        {
            flash.display.MovieClip(root).itemRemoveSelector();
            return;
        }

        public function snddown(arg1:flash.events.MouseEvent):*
        {
            trace("hell no");
            return;
        }

        public var of3:*;

        public var trading_pass:flash.display.MovieClip;

        public var hnd9:*;

        public var of30:*;

        public var of21:*;

        public var of12:*;

        public var og3:*;

        public var of4:*;

        public var of31:*;

        public var of22:*;

        public var of13:*;

        public var of5:*;

        public var og4:*;

        public var sp:flash.display.MovieClip;

        public var pb:flash.display.MovieClip;

        public var ov:flash.display.MovieClip;

        public var of32:*;

        public var of23:*;

        public var of14:*;

        public var sh0:*;

        public var of6:*;

        public var og5:*;

        public var xtra_txt:flash.text.TextField;

        public var hnd10:*;

        public var hnd15:*;

        public var hnd16:*;

        public var of33:*;

        public var of24:*;

        public var of15:*;

        public var sh1:*;

        public var of7:*;

        public var og6:*;

        public var hnd11:*;

        public var of34:*;

        public var of25:*;

        public var of16:*;

        public var sh2:*;

        public var of8:*;

        public var og7:*;

        public var om0:*;

        public var hnd12:*;

        public var hnd13:*;

        public var hnd14:*;

        public var of35:*;

        public var of26:*;

        public var of17:*;

        public var og8:*;

        public var sh3:*;

        public var of9:*;

        public var wings_none:*;

        public var om1:*;

        public var sk0:flash.display.MovieClip;

        public var sh4:*;

        public var sh5:*;

        public var sh6:*;

        public var og9:*;

        public var of36:*;

        public var of27:*;

        public var of18:*;

        public var special_btn:*;

        public var om2:*;

        public var sk10:flash.display.MovieClip;

        public var sk1:flash.display.MovieClip;

        public var om10:*;

        public var of37:*;

        public var hands_none:*;

        public var of20:*;

        public var of19:*;

        public var om3:*;

        public var sk11:flash.display.MovieClip;

        public var glasses_none:*;

        public var sk2:flash.display.MovieClip;

        public var invi:flash.display.MovieClip;

        public var del_btn:flash.display.SimpleButton;

        public var om11:*;

        public var of38:*;

        public var hnd0:*;

        public var of29:*;

        public var sk12:flash.display.MovieClip;

        public var om4:*;

        public var sk3:flash.display.MovieClip;

        public var sw:flash.display.MovieClip;

        public var mskin:flash.display.MovieClip;

        public var of39:*;

        public var hnd1:*;

        public var sk13:flash.display.MovieClip;

        public var sk14:flash.display.MovieClip;

        public var om5:*;

        public var sk4:flash.display.MovieClip;

        public var hnd2:*;

        public var om6:*;

        public var sk5:flash.display.MovieClip;

        public var currentSkin:flash.display.MovieClip;

        public var close_btn:flash.display.SimpleButton;

        public var hnd3:*;

        public var om7:*;

        public var sk6:flash.display.MovieClip;

        public var mouth_none:*;

        public var hnd4:*;

        public var om8:*;

        public var head_none:*;

        public var sk7:flash.display.MovieClip;

        public var builderskin:flash.display.MovieClip;

        public var fthskin:flash.display.MovieClip;

        public var hnd5:*;

        public var om9:*;

        public var of0:*;

        public var sk8:flash.display.MovieClip;

        public var ninj:flash.display.MovieClip;

        public var snd_btn:flash.display.SimpleButton;

        public var hnd6:*;

        public var og10:*;

        public var vipPass:flash.display.MovieClip;

        public var of1:*;

        public var sk9:flash.display.MovieClip;

        public var bs:flash.media.Sound;

        public var ks:flash.media.Sound;

        public var outfit:Object;

        public var hats_page2:int;

        public var skins_counter:uint;

        public var hats_counter:uint;

        public var glasses_counter:uint;

        public var mouth_counter:uint;

        public var wings_counter:uint;

        public var hands_counter:uint;

        public var outfit_head:Array;

        public var outfit_glasses:Array;

        public var xmasskin_mc:flash.display.MovieClip;

        public var outfit_mouth:Array;

        public var outfit_wings:Array;

        public var outfit_hands:Array;

        public var skins:Array;

        public var outfit_arrays:Array;

        public var guardian_pu:flash.display.MovieClip;

        public var of28:*;

        public var idk:itemActual;

        public var premPass:flash.display.MovieClip;

        public var charWears:flash.display.MovieClip;

        public var plusPass:flash.display.MovieClip;

        public var bird_pu:flash.display.MovieClip;

        public var verified:itemActual;

        public var hnd17:itemActual;

        public var aaa:flash.display.SimpleButton;

        public var vip:itemActual;

        public var x_btn:flash.display.SimpleButton;

        public var team:itemActual;

        public var pu_info:flash.display.MovieClip;

        public var hnd7:*;

        public var og11:*;

        public var of10:*;

        public var og1:*;

        public var of2:*;

        public var vip_pass:flash.display.MovieClip;

        public var hnd8:*;

        public var of11:*;

        public var og2:*;

        public var og0:*;
    }
}
