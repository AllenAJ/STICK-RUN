package 
{
    import caurina.transitions.*;
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;

    dynamic public class levelup_mc extends MovieClip
    {
        public var ok_btn:SimpleButton;
        public var post_btn:SimpleButton;
        public var level_disp:MovieClip;
        public var level_txt:TextField;
        public var post_overlay:MovieClip;

        public function levelup_mc()
        {
            addFrameScript(0, this.frame1);
            return;
        }// end function

        public function okcool(event:MouseEvent)
        {
            MovieClip(root).removeChild(this);
            return;
        }// end function


        function frame1()
        {
			
			var newlvl = (Math.max(Math.round(MovieClip(root).userme.level / 2), 1) + MovieClip(root).userme.prestige * 15)
			trace(newlvl + " congratz")
            
            this.level_txt.text = "You are level " + MovieClip(root).userme.level + " now!";
            this.level_disp.gotoAndStop(newlvl);
            
            this.ok_btn.addEventListener(MouseEvent.MOUSE_UP, this.okcool);
          //  this.post_btn.addEventListener(MouseEvent.MOUSE_UP, this.postit);
           // this.post_overlay.visible = false;
            return;
        }// end function

    }
}
