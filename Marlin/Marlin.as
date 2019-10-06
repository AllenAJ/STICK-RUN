package  {
	
	import flash.display.MovieClip;
	import flash.events.StatusEvent;
	import flash.net.LocalConnection;
	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import flash.display.*;
	import flash.events.*;
	import flash.media.*;
	import flash.net.*;
	import flash.geom.*;
	import flash.text.*;
	import flash.system.Security;
	import flash.system.SecurityDomain;
	import flash.display.Stage;
	import flash.text.TextField;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.ui.Keyboard;
	import flash.display.Sprite;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.GlowFilter;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.accessibility.Accessibility;
	//import com.freeactionscript.Scrollbar;
	import flash.system.Security;
//	import com.greensock.easing.Back;
	import flash.display.StageDisplayState;
	import flash.media.Sound;
	//import caurina.transitions.*;
	import flash.utils.setTimeout;
	import flash.external.ExternalInterface;
	import flash.ui.*;
	import flash.utils.*;
	import flash.system.Security;
	import flash.ui.Mouse;
	//import caurina.transitions.*;
/*	import com.greensock.*;
	import com.freeactionscript.*;
	import com.greensock.*;
	import com.encryption.*;
	import com.greensock.easing.*;*/
	import flash.display.*;
	import flash.events.*;
	import flash.media.*;
	import flash.net.*;
	import flash.text.*;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.system.ApplicationDomain;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import flash.ui.*;
	
	public class Marlin extends MovieClip {
		
		
		public function Marlin() {
			// constructor code
			multi.buttonMode = true;
			multi.useHandCursor = true;
			multi.mouseChildren = false;
			multi.addEventListener(MouseEvent.CLICK,on_click12);
			multi.addEventListener(MouseEvent.MOUSE_OVER, overFunction12);
			multi.addEventListener(MouseEvent.MOUSE_OUT, overFunction22);
			multi.addEventListener(MouseEvent.MOUSE_DOWN, overFunction32);
			function overFunction12(e:MouseEvent)
			{
				var snd11:Sound = new Sound();
				var req11:URLRequest = new URLRequest("https://www.zapsplat.com/wp-content/uploads/2015/sound-effects-35448/zapsplat_multimedia_button_press_plastic_click_002_36869.mp3");
				snd11.load(req11);
				var channel:SoundChannel = snd11.play();
				multi.gotoAndStop(2);
			}
			function overFunction22(e:MouseEvent)
			{
				multi.gotoAndStop(1);
			}
			function overFunction32(e:MouseEvent)
			{
				multi.gotoAndStop(2);
			}
			function on_click12(e:MouseEvent)
			{
				var snd1111:Sound = new Sound();
				var req1111:URLRequest = new URLRequest("https://www.zapsplat.com/wp-content/uploads/2015/sound-effects-35448/zapsplat_multimedia_button_press_plastic_click_003_36870.mp3");
				snd1111.load(req1111);
				var channel:SoundChannel = snd1111.play();
			    ExternalInterface.call("send", textt.text);
			}

		}
	}
	
}
