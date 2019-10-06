package 
{
    import flash.display.*;
    import flash.text.*;
    
    public dynamic class item_skin extends MovieClip
    {
        public function item_skin()
        {
            super();
            addFrameScript(0, this.frame1);
            return;
        }

        internal function frame1():*
        {
            stop();
            return;
        }

        public var vipPass:flash.display.MovieClip;

        public var t1:flash.display.MovieClip;

        public var premPass:flash.display.MovieClip;

        public var c1:flash.display.MovieClip;

        public var amount_txt:flash.text.TextField;

        public var c2:flash.display.MovieClip;

        public var plusPass:flash.display.MovieClip;

        public var bird:flash.display.MovieClip;
    }
}
