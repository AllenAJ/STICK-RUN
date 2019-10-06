package 
{
    import flash.display.*;
    import flash.events.*;

    dynamic public class DailyScratch extends MovieClip
    {
        public var item0:MovieClip;
        public var item1:MovieClip;
        public var close_btn:SimpleButton;
        public var item2:MovieClip;
        public var scratching:Boolean;

        public function DailyScratch()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function setup()
        {
			stop();
            var _loc_1:* = 0;
            while (_loc_1 < 3)
            {
                
                this["item" + _loc_1].addEventListener(MouseEvent.MOUSE_OVER, this.m_over);
                this["item" + _loc_1].addEventListener(MouseEvent.MOUSE_OUT, this.m_out);
                this["item" + _loc_1].addEventListener(MouseEvent.CLICK, this.scratch);
                _loc_1 = _loc_1 + 1;
            }
        }// end function

        public function setupPots(param1:String) : void
        {
            MovieClip(root).pots = new Object();
            MovieClip(root).pots.p0 = param1;

        }// end function

        public function close(param1)
        {
           removeChild(this);
        }// end function

        public function scratch(param1)
        {
			if(this.scratching == false){
            this.scratching = true;
            param1.currentTarget.gotoAndStop("bet");
			
            param1.currentTarget.prize.item1.inner1.gotoAndStop(MovieClip(root).WTFUWON);
			
            MovieClip(root).TheConnection1.send("completeScratch",MovieClip(root).WTFUWON);
			trace("works");
			this.close_btn.visible = true;
			this.close_btn.addEventListener(MouseEvent.CLICK,ttt);
            return;}
        }// end function

        public function m_over(param1)
        {
            if (this.scratching)
            {
                return;
            }
            param1.currentTarget.gotoAndStop("over");
            return;
        }// end function
public function ttt(param1)
        {
           this.visible=false;
            return;
        }// end function
        public function m_out(param1)
        {
            if (this.scratching)
            {
                return;
            }
            param1.currentTarget.gotoAndStop("none");
            return;
        }// end function

        function frame1()
        {
            this.scratching = false;
            this.setup();
			trace(scratching);
            return;
        }// end function

    }
}