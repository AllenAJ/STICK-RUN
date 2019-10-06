package 
{
    import flash.display.*;
    import flash.events.*;

    dynamic public class goprestige_w extends MovieClip
    {
        public var pr1:MovieClip;
        public var pr2:MovieClip;
        public var pr3:MovieClip;
        public var pr4:MovieClip;
        public var pr5:MovieClip;
        public var close_btn:SimpleButton;
        public var costs:Array;

        public function goprestige_w()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function init()
        {
			trace("hi")
            if (MovieClip(root).userme.level != 30)
            {
                return;
            }
            this.visible = true;
            var _loc_1:* = 0;
            while (_loc_1 < MovieClip(root).userme.prestige)
            {
                
                this["pr" + (_loc_1 + 1)].gotoAndStop(2);
                _loc_1 = _loc_1 + 1;
            }
			trace("pr" + (MovieClip(root).userme.prestige + 2))
            this["pr" + (MovieClip(root).userme.prestige + 1)].gotoAndStop(1);
            this["pr" + (MovieClip(root).userme.prestige + 1)].buy_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.pr_down);
            return;
        }// end function

        public function pr_down(event:MouseEvent)
        {
			
            if (MovieClip(root).coinsi >= this.costs[MovieClip(root).userme.prestige + 1])
            {
                this["pr" + (MovieClip(root).userme.prestige + 1)].gotoAndStop(2);
                MovieClip(root).buyNextPrestige(this.costs[MovieClip(root).userme.prestige + 1]);
            }
            else
            {
                MovieClip(root).alerts("Not enough coins!");
            }
            return;
        }// end function

        public function cl_down(event:MouseEvent)
        {
            visible = false;
            return;
        }// end function

        function frame1()
        {
		
            this.costs = [100, 300, 800, 2000, 5000, 0];
            this.pr1.price_txt.text = this.costs[0];
            this.pr2.price_txt.text = this.costs[1];
            this.pr3.price_txt.text = this.costs[2];
            this.pr4.price_txt.text = this.costs[3];
            this.pr5.price_txt.text = this.costs[4];
            this.pr1.gotoAndStop(3);
            this.pr2.gotoAndStop(3);
            this.pr3.gotoAndStop(3);
            this.pr4.gotoAndStop(3);
            this.pr5.gotoAndStop(3);
            this.close_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.cl_down);
            return;
        }// end function

    }
}
