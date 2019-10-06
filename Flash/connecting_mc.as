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
    
    public dynamic class connecting_mc extends flash.display.MovieClip
    {
	public function setuponline(){
		if(MovieClip(root).hasItem("vglass")){
			hastradingpass.visible = true
		}
		else{
				hastradingpass.visible = false
				trace("idh")
		}
		 MovieClip(root).clients.multiplayer.listRooms("MyCode", null, 40, 0, got_rooms, null);
		
		
	}
	 public function got_rooms(param1){
			
			for(var id=0; id<param1.length; id++)
			{
				trace("room [" + param1[id].id + "] got " + param1[id].onlineUsers + " players.");
				if(param1[id].id == "Market_ a"){
					mp_a_txt.text = param1[id].onlineUsers
					if(param1[id].onlineUsers >= 40){
					mp_a_ov.visible = true
					}
					trace("yeews" + param1[id].onlineUsers) 
					trace("noon");
				}
			}
				
				 mp_a_btn.addEventListener(MouseEvent.CLICK, function(e:MouseEvent){
			 trace("nnob jece")
	        JoinSector("a");
				 });
					 for(var id=0; id<param1.length; id++)
			{
				trace("room [" + param1[id].id + "] got " + param1[id].onlineUsers + " players.");
				if(param1[id].id == "Market_ b"){
					mp_b_txt.text = param1[id].onlineUsers
					if(param1[id].onlineUsers >= 40){
					mp_b_ov.visible = true
					}
					trace("yeews" + param1[id].onlineUsers) 
					trace("noon");
				}
			}
				
				 mp_b_btn.addEventListener(MouseEvent.CLICK, function(e:MouseEvent){
			 trace("nnob jece")
	        JoinSector("b");
					  });
					  for(var id=0; id<param1.length; id++)
			{
				trace("room [" + param1[id].id + "] got " + param1[id].onlineUsers + " players.");
				if(param1[id].id == "Market_ c"){
					mp_c_txt.text = param1[id].onlineUsers
					if(param1[id].onlineUsers >= 40){
					mp_c_ov.visible = true
					}
					trace("yeews" + param1[id].onlineUsers) 
					trace("noon");
				}
			}
				
				 mp_c_btn.addEventListener(MouseEvent.CLICK, function(e:MouseEvent){
			 trace("nnob jece")
	        JoinSector("c");
					  });
             for(var id=0; id<param1.length; id++)
			{
				trace("room [" + param1[id].id + "] got " + param1[id].onlineUsers + " players.");
				if(param1[id].id == "Market_ d"){
					mp_d_txt.text = param1[id].onlineUsers
					if(param1[id].onlineUsers >= 40){
					mp_d_ov.visible = true
					}
					trace("yeews" + param1[id].onlineUsers) 
					trace("noon");
				}
			}
				
				 mp_d_btn.addEventListener(MouseEvent.CLICK, function(e:MouseEvent){
			 trace("nnob jece")
	        JoinSector("d");
					  
            
            
           
            return;
		});
			}
		
	
		
			
			
		public function JoinSector(param1:String){
		 MovieClip(root).SectorJoined = param1
			MovieClip(root).JoinSectorMy(param1);
			gotoAndStop(2);
			
			
			
		
		 return;
	}
			 
    }
	
	
	
}
