package {
	import flash.events.StatusEvent;
    import flash.net.LocalConnection;
	import flash.display.MovieClip
	import playerio.*
	import com.facebook.graph.*;
	import Facebook.FB;
	import Facebook.*;
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
	import com.freeactionscript.Scrollbar;
	import flash.system.Security;
	import com.protobuf.Message;
	import com.greensock.easing.Back;
	import flash.display.StageDisplayState;
	import playerio.utils.Converter;
	import flash.media.Sound;
	import caurina.transitions.*;
	import flash.utils.setTimeout;
	import flash.external.ExternalInterface;
	import flash.ui.*;
	import flash.utils.*;
	import flash.system.Security;

	import flash.ui.Mouse;
	import caurina.transitions.*;
	import com.greensock.*;
    import com.freeactionscript.*;
	//import com.greensock.loading.*;

    import com.greensock.*;
	import com.encryption.*;
	import com.greensock.easing.*;
	import flash.display.*;
    import flash.events.*;
    import flash.media.*;
    import flash.net.*;
    import flash.text.*;
	import flash.display.Loader;
    import flash.events.Event;
    import flash.system.ApplicationDomain;
    import flash.net.URLRequest;
    import flash.system.LoaderContext
    import flash.ui.*;
	

	public class MyGame extends MovieClip{
		private var fbname:String = "";
		private var scoreframe:String = "";
		private var fbuid:String = "";
		private var myid:String = "";
		private var myuid:String = "";
		private var token:String = "";
		private var nabs11111:String;
		private var blehtime1:int;
		public var WTFUWON:String;
		public var coins = 0
	    public var clients
		public var coinsi
	    public var items:Array;
		public var usernme
		public var userme
		public var userme1
		//public var me:Cultist;
		var goal:Point;
		public var cult:Array;
		var altars:Array;
		public var _swfContent:MovieClip;
		public var TheConnection
		public var TheConnection2
		public var TheConnection1
        private var alertnow:AlertNow;
		public var unixtime:int;
		private var localConnection:LocalConnection = new LocalConnection();
		var players:Array;
		var friends = {};
			private var ships:Object = {}, missiles:Object = {}, gameOver:Boolean = false;
		  //      var map:Map;
 public var nested:MovieClip;
        public var bubble:MovieClip;
		 var friendsArr = [];
         var friendsSec = [];
		 var leftKeyDown:Boolean = false;
         var upKeyDown:Boolean = false;
         var rightKeyDown:Boolean = false;
         var downKeyDown:Boolean = false
		 public var ingame = false
         var mainSpeed:Number = 7;
         //var score = 0;
		 public var itemoffer
		 public var SectorJoined
		 public var skinHex = ["#CCCCCC", "#D4D400", "#0070D4", "#AA0F0F", "#0FAA14", "#CCCCCC", "#D02D2D", "#FFFF00"];
         public var fontHex = ["#F5F5F5", "#F5F5F5", "#F5F5F5", "#F5F5F5", "#F5F5F5", "#F5F5F5", "#F5F5F5", "#B1B100", "#00FF25"];
         public var cards = ["vip", "rarespin", "verification"];
            		var myId1:int;	
var tx:Number;
		var ty:Number;
		public var enemyArr:Array;

		public var randomShit = 0;
		public var randomShit1 = 0;
		public var enemySpeed:uint = 10;
		var dead:Boolean = false;
		public var intervalForAdding:uint;
		public var intervalIntervalForAdding:uint;

		public var mouseIsDown = false;
		public var speed = 0;
		public var score = 0;

		public var xp = 0;
		public var ma_coins = 0;
		private var vy:Number = 0;
		private var friction:Number = 0.90;
		private var maxspeed:Number = 8;
		private var numStars:int = 80;
		var rect:Rectangle;
		public var movingup:Boolean = false;
		public var movingdown:Boolean = false;
		public var notmoving:Boolean = true;
		public var booming:Boolean = false;
		public var enBallInterval:uint;
		public var enBallIntervalForAdding:uint;
		var nCount:Number = 30;
		var gravity:Number = 8;
		var jumpPower:Number = 0;
		var isJumping:Boolean = false;
		var isDouble:Boolean = false;
		var isGround:Boolean = false;
		var ground:Number = 351;
		public var enWall:MovieClip;
		public var enBall:MovieClip;
		public var enBall2:MovieClip;
		var moveDist:Number;
		  public var offers_w:MovieClip;
		 public var miname1
		 public var ui
		 public var offercount = 0
		 public var orgY
		 public var hats = [ "redhat", "blackhat", "brownhat", "hoodhat", "crazyscihat", "snaphat", "chickhat", "monkhat", "hockeyhat", "greenpunk", "gifthat", "generalhat", "astronuthat", "chemistryhat", "kitchenhat", "wizardhat", "winterhat", "robberhat", "somberohat", "piratehat", "narutohat", "russiahat", "ninjaturtlehat", "imbatmanhat", "luishat", "vaderhat", "kinghat", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""];
		 public var mouths = ["", "", "", "", "", "", "", "", "gasmask", "", ""]
		 public var skins = ["", "", "", "", "", "", "Teamskin", "", "", "", "blue", ""]
		 public var bgs = ["", "", ""]
		 public var eyes = ["vglass", "fireglass", "gasmaskglass", "", "", "", "", "", "", "", "", "", "", ""]
		 public var tradeBlacklist = ["vippass", "vip", "Teamskin", "xmas", "onemil", "santahat", "bunny", "partyhat", "santabeard", "santaglasses"];
		 public var shoes = ["", "", "", "", ""]
		 public var hands = ["", "", "", "", "", "", ""]
		 public var body = [ "greenlantern", ""];
            public var clvlup
			public var item0:MovieClip;
        public var item1:MovieClip;
        public var close_btn:SimpleButton;
        public var item2:MovieClip;
        public var scratching:Boolean;
		//public var level = 1
		public var coins_n_shop
		public var i:int = 0;
		public var ctr_w = new trade_w();
		var oldTime:Number = (new Date()).getTime();
		//Time at the last state update
		var oldStateTime:Number;
		var serverTimeDiff:int;
		var coef: Number = Math.random();
		var slotsArr: Array = ["plane", "enemy1", "enemy2", "enemy3", "rocket", "accash", "noluck"];
        private var speed1:Number = 0;
		private var paddles:Vector.<Sprite> = new Vector.<Sprite>();
		private var line:Shape;
		private var clickedname:String = "";
		private var lastPaddle:String;
		var str1: String = slotsArr[Math.round(Math.random() * 6)];
		var str2: String = slotsArr[Math.round(Math.random() * 6)];
		var str3: String = slotsArr[Math.round(Math.random() * 6)];
		var betting: Number = 1;
		var user1337s:Array
		 //public var status_p = new stats_mc();
		
		function MyGame(){
			            addFrameScript(0,  frame1, 1,  frame2, 2,  frame3,3, frame4,4, frame5,5, frame6,6,frame7,7, frame8);
			token = root.loaderInfo.parameters.fb_access_token|| "EAAETMYCt8ccBACbnIiJZAflQv83jNzHcUOxmjNwyDbIGwGBHfJFZBbJP07WUHxilZCluY8i3Dd6D9aHpKaeUNCTZClpzKh8YIMDuATvFWyr1cU1CwYLyyQc1DrW6EMD5b5KGijy7t0FERZAZAEZA4K28O7rJGxWmwZBVtDtCaGxLe1wT8VYZAKE0pZCKzSLMSfhXQZD"

	  
		   
			var config = "https://graph.facebook.com/me?access_token=" + token;
			Security.allowDomain("*");
			var url = new URLRequest(config);
			var urlr = new URLLoader();
			urlr.load(url);
							
			stop();
			var ldr:URLLoader = new URLLoader()
            ldr.load(new URLRequest("https://stick.run/gettime.php?v="+Math.random()))
            ldr.addEventListener(Event.COMPLETE, timeloaded)
			urlr.addEventListener(Event.COMPLETE, getName);
			aa.visible=false;
		    stop();
				
			if(token != null && token != "")
			{
				PlayerIO.quickConnect.facebookOAuthConnect(stage,
														   "swift-assault-v2-vosmqdz5reqyuqp7pl10jq", 
														   token, 
														   "", 
														   connectfb,
														   function ():void
														   {
															   a1.htmlText = "<font color='#FF0000'>ERROR F5!</font>" 
															   trace("Error connecting to facebook");
														   })
			}
			else
			{
			    a1.htmlText = "<font color='#FF0000'>ERROR F5!</font>" 
				trace("facebook error");
			}
			
		   }
		   private function connectfb(client:Client, fbid:String):void{
			  a1.htmlText = "<font color='#00CC00'>Connected to facebook!</font>" 
			  			//..Loader126.visible=false;
			//Tweener.addTween(Loader126,{x:457, y:164, alpha:1, time:2, transition:"fadeon"});
			clients = client
			refreshitems();
			trace("Sucessfully connected to the multiplayer server");
			client.payVault.refresh(checkit);
			trace("You better work nab");
			fbuid = fbid;
			myid=fbuid;
			nabs11111= root.loaderInfo.parameters.fb_frnds||'{"data":[{"name":"no friends","id":"107884723uu111778"}],"paging":{"cursors":{"before":"QVFIUldoTlJGTXVoOV9pUE54ZAklvNDc5YkRoWVRQYkE3T1pXcXNzeXJoN3I0QUt4ZAmlLVkxCanVYMzRzd3hUWTRZAdDNVQVI0YlpWT3pIZAjJXUHFvXzd6Q1BR","after":"QVFIUnQ1Wmgzb2E1VEhEV2xiTFIwYU10dkFQcUtaV2pQbVJNVlR5SWQ2T1NRMThsUUJXYi1IdklKdjl1NkkzZAmRSMTdESXd4bkJtMXZAXalViOEItUWhWaFFn"}},"summary":{"total_count":1636}}'; 
			
var myObj = JSON.parse(nabs11111);
trace(myObj);
 user1337s= myObj.data;
			("FRNDS3:"+user1337s);

for (var i:String in user1337s) {
	
alert(user1337s[i].name);

	  } 
			
		function checkit(){
			
			if (client.payVault.has("Teamskin"))
            {
               client.multiplayer.createJoinRoom(
				"test",								//Room id. If set to null a random roomid is used
				"MyCode",							//The game type started on the server
				true,								//Should the room be visible in the lobby?
				{},									//Room data. This data is returned to lobby list. Variabels can be modifed on the server
				{},									//User join data
				handleJoin,							//Function executed on successful joining of the room
				handleError							//Function executed if we got a join error
			);
			
               
            }
			else{
				clients.bigDB.loadOrCreate("PlayerObjects",myid,handleDatabase,errorDatabase);
			}}}
		/////////////////////PUT YOUR FUNTIONS HERRE OR YOU WILL MESS UP NAB DOWN///////////////////////////
		public function errorDatabase(param1:Error) 
      {
         trace(param1);
      }
	  public function timeloaded(event1:Event)
        {
			
			          // trace(ldr.data+"manfa")
            //var evt:* = event1;
            var e2:* = event1;
            if (e2.target.data.split(":")[1] != MD5.hash(e2.target.data.split(":")[0] + "_fuckyou"))
            {
               alert("Error loading time!");
                
            }
			//trace(e);
			
            unixtime = parseInt(e2.target.data.split(":")[0]);
			trace(new Date().getTime()+"UNIXTIME IGNORE");
            if (new Date().getTime() / 1000 > unixtime + 80000)
            {
                alert("Your local time is outdated! This could make things go wrong!");
            }
			//trace(e);
			 var ctime = getUnixTimestamp();
			trace(unixtime);trace(ctime);
			var ctime1 = toTimeCode(ctime);
			
			trace(ctime1);
			}
			public function toTimeCode(milliseconds:Number):String
{
	var seconds:int = Math.floor((milliseconds/1000) % 60);
	var strSeconds:String = (seconds < 10) ? ("0" + String(seconds)):String(seconds);
	var minutes:int = Math.round(Math.floor((milliseconds/1000)/60));
	var strMinutes:String = (minutes < 10) ? ("0" + String(minutes)):String(minutes);
	var strMilliseconds:String = milliseconds.toString();
	strMilliseconds = strMilliseconds.slice(strMilliseconds.length -3, strMilliseconds.length)
	var timeCode:String = strMinutes + ":" + strSeconds + ':' + strMilliseconds;
	blehtime1 = Number(strMinutes);
	return timeCode;
}
	  public function handleDatabase(param1:DatabaseObject)
      {
		  
		  ////////error continue later
          userme = param1;
		if (param1.Name == null)
         {
          param1.Name = null;
		 
         }
		  if (param1.level == null)
         {
          param1.level  = 1;
		 
         }
		  if (param1.diamond != coinsi)
         {
          param1.diamond = coinsi;
		 
         }
		  if (param1.prestige == null)
         {
          param1.prestige = 0;
		 
         }
		  if (param1.xp == null)
         {
          param1.xp = 0;
         }
		 if (param1.xptonextlev == null)
         {
          param1.xptonextlev = 150;
         }
		 
		 if (param1.hat == null)
         {
          param1.hat = "1";
		 
         }
		 if (param1.mouth == null)
         {
          param1.mouth = "1";
		 
         }
		 if (param1.glasses == null)
         {
          param1.glasses = "1";
		 
         }
		 if (param1.hands == null)
         {
          param1.hands = "1";
		 
         }
		 if (param1.shoes == null)
         {
          param1.shoes = "1";
		 
         }
		 if (param1.body == null)
         {
          param1.body = "1";
		 
         }
		  if (param1.skin == null)
         {
          param1.skin = "red";
		 
         }
		 
		 if (param1.joined == null)
         {
          param1.joined = true;
			getreward();
		 
         }
		  if (param1.Status == null)
         {
          param1.Status = "Newbie";
		 
         }
		 else if( ingame == false){
			  trace("ok what now")
			  this.addEventListener(Event.ENTER_FRAME, loading);
			
			 function loading(e:Event):void {
trace("i see")
	var total:Number = stage.loaderInfo.bytesTotal;
	var loaded:Number = stage.loaderInfo.bytesLoaded;
 
	bar_mc.scaleX = loaded/total/2;
	loader_txt.text = Math.floor((loaded/total)*100)+ "%";

	if (total == loaded) {
		//play();
		removeEventListener(Event.ENTER_FRAME, loading);
		dbloaded();
		
	}

}
			
		  }
		  
		 else{
			
		 }
		  param1.save();
		
      }
	
	  public function handleJoin85(connection:Connection):void{
//clients.multiplayer.developmentServer = "127.0.0.1:8184";
TheConnection1 = connection;
trace("MENU Active");

connection.addDisconnectHandler(handleDisconnect);
		connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				trace("DR DAMN ");		
				
				TheConnection1.send("DR", blehtime1,myid);
				damnit.visible = false;
			})
			connection.addMessageHandler("DailyScratch", function(m:Message){
				trace("HereIsYourDailyRewardBro");
					var reward3 = new DailyScratch();
			        addChild(reward3);
			        reward3.x = 373;
			        reward3.y = 249;
					WTFUWON=m.getString(0);
					trace(WTFUWON+"HAHAHAHWAHWEHWERHWRHWRW");
                     /*hisstat.coinstxt.text = String(m.getString(0));
					hisstat.Name1337.text = String(m.getString(8));
					m.getString(3);
					m.getString(6);
					m.getString(4);*/
					//pdiamond, message.GetString(0), head, eyes, mouth, hands, foot, body
				});
				connection.addMessageHandler("alert1", function(m:Message, alert1:String){
				alert(alert1);

				
			})
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just joined the room");
			})
			
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages)
			
			
			
			
			//Add disconnect listener
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				trace("Recived a message with the type hello from the server"+myid);			 
			})
			
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just joined the room");
			})
			
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages)
			
		
		}
	 /*public function gotCoins(param1:Connection)
        {
            var c:* = param1;
            c.addMessageHandler("done", function (param1)
            {
                if (param1.getString(0) == "coins")
                {
                    firstClient.payVault.refresh(updateCoins);
                    c.disconnect();
                }
                else if (param1.getString(0) == "error")
                {
                    alert("Error in getting coins");
                    c.disconnect();
                }
                return;
            }// end function
            );
            return;
        }*/
	  public function getUnixTimestamp()
        {
            return this.unixtime;
        }
		
         
    
	  public function handleDatabase1(param1:DatabaseObject)
      {
		  ////////error continue later
          userme1 = param1;
		  if (param1.ach1 == null)
         {
          param1.ach1 = "1";
		 
         }
		  if (param1.ach2 == null)
         {
          param1.ach2 = "1";
		 
         }
		 if (param1.ach3 == null)
         {
          param1.ach3 = "1";
		 
         }
		 if (param1.ach4 == null)
         {
          param1.ach4 = "1";
		 
         }
		 if (param1.ach5 == null)
         {
          param1.ach5 = "1";
		 
         }
		 if (param1.ach6 == null)
         {
          param1.ach6 = "1";
		 
         }
		 else if( ingame == false){
			  trace("Achievements Loaded")
			
		 }
		  
		 else{
			
		 }
		  param1.save();
		
      }
	   public function handlehisDatabase(param1:DatabaseObject)
      {
          usernme = param1;
			  trace("His DB LOADED")
			  if (param1.Name == null)
         {
          param1.Name = null;
		 
         }
		
      }
		public function refreshitems()
            {
                 clients.payVault.refresh( payVaultLoaded);
            }
			 public function payVaultLoaded()
        {
             coinsi =  clients.payVault.coins;
             items =  clients.payVault.items;
            
        }
		 public function getreward()
        {
			//..gotoAndStop(2)
			var reward = new rewardz();
			addChild(reward);
			reward.x = stage.stageWidth / 2;
			 reward.y = stage.stageHeight / 2;
			 caurina.transitions.Tweener.addTween(reward, {scaleX:1, scaleY:1, time:1.2, transition:"easeOutElastic"});
			var thexp : int = 9;
			var thecoins : int = 1000;
			 clients.payVault.credit(thecoins, "New Player", null,  addCoinsFail);
			 userme.xp =  userme.xp + thexp;
			 //userme.Name =  fbname;
			 userme.save();
			 
			
			 reward.thanks_btn.addEventListener(MouseEvent.CLICK,OKcool);
             
              function OKcool(e:Event){
               removeChild(reward);
				   dbloaded();
               }
			
			
		}
		public function kk(event: MouseEvent): void {






			if (coinsi >= 5) {


				spins.slot.gotoAndStop(2);
				spins.slot1.gotoAndStop(2);
				spins.slot2.gotoAndStop(2);
				setTimeout(end1, 3000);
				setTimeout(end2, 4000);
				setTimeout(end3, 5000);
				spins.ok.removeEventListener(MouseEvent.CLICK, kk);

				clients.payVault.debit(
					5,
					"Spin Slots Fee",
					function (): void {
						trace("Successfully debited the user")
					},
					function (e: PlayerIOError): void {
						trace("Unable to debit user", e)
					}
				)


			} else if (clients.payVault.coins < 5) {


				spins.output.text = "You Don't Have Enough Coins.";


			}

		}

		public function end1(): void {
			spins.slot.gotoAndStop(3);
			spins.slot.result.gotoAndStop(str1);

		}
		public function end2(): void {
			spins.slot1.gotoAndStop(3);
			spins.slot1.result.gotoAndStop(str2);
		}
		public function end3(): void {
			spins.slot2.gotoAndStop(3);
			spins.slot2.result.gotoAndStop(str3);

			if (coef * 100 < 60) {
				while (str1 == str2 || str1 == str3) {
					str1 = slotsArr[Math.round(Math.random() * 6)];
				}
			}

			if (str1 == str2 == str3) {
				win();
			} else if (str1 == str2 || str1 == str3 || str2 == str3) {
				spins.output.text = "You won 0 Coins";
			}

			spins.ok.addEventListener(MouseEvent.CLICK, kk);
			coef = Math.random();
			str1 = slotsArr[Math.round(Math.random() * 6)];
			str2 = slotsArr[Math.round(Math.random() * 6)];
			str3 = slotsArr[Math.round(Math.random() * 6)];
					refreshitems();

		}



		public function win(): void {




			spins.output.text = "You win 100 Coins";
			clients.payVault.credit(
				100,
				"Spin Slots  Win",
				function (): void {
					trace("Successfully debited the user")
				},
				function (e: PlayerIOError): void {
					trace("Unable to debit user", e)
				}
			)
						refreshitems();

		}

		public function checkLevelUp(param1:Number)
        {
			if(userme.level != "admin" && userme.level != "mod"&& userme.level != "10"){
				trace(param1)
          
            if (param1> userme.xptonextlev)
            {
                levelUp(userme.level+1);
				userme.xp==0;
				userme.xptonextlev=userme.xptonextlev+200;
				userme.save();
            }
			
           
		}
        }// end function
		 public function levelUp(param1:Number)
        {
			trace(param1)
			var clvlup1
			clvlup1 = new levelup_mc();
			if(clvlup1.parent != null){
				removeChild(clvlup1);
				 userme.level = param1;
            userme.save();
           
			  addChild(clvlup1);
				 caurina.transitions.Tweener.addTween(clvlup1, {scaleX:1, scaleY:1, time:1.2, transition:"easeOutElastic"});
			trace("new lvlup")
            clvlup1.x = stage.stageWidth / 2;
           clvlup1.y = stage.stageHeight / 2;
			}
			
            this.userme.level = param1;
            this.userme.save();
           clvlup1 = new levelup_mc();
			  addChild(clvlup1);
			 caurina.transitions.Tweener.addTween(clvlup1, {scaleX:1, scaleY:1, time:1.2, transition:"easeOutElastic"});
			trace("new lvlup")
            clvlup1.x = stage.stageWidth / 2;
           clvlup1.y = stage.stageHeight / 2;
          
           
            return;
        }
		 public function dbloaded(){
			 ///,,..//gotoAndstop
			 a.htmlText = "<font color='#00CC00'>Connecting To Server!</font>" 
			//Loader125.visible=false;
			//Tweener.addTween(Loader125,{x:570, y:215, alpha:1, time:2, transition:"fadeon"});
			aa.visible=true;
			Tweener.addTween(aa,{x:277.95, y:301.2, alpha:1, time:1, transition:"fadeon"});
			//Tweener.addTween(aa,{x:270, y:277-5, alpha:1, time:2, transition:"fadeon"});
			aa.buttonMode = true; 
    aa.useHandCursor = true;
    aa.mouseChildren = false;
aa.addEventListener(MouseEvent.CLICK,on_click)
aa.addEventListener(MouseEvent.MOUSE_OVER, overFunction);

			 }
			  public function addCoinsFail(param1:PlayerIOError)
        {
			trace(param1.message)
            alert("Couldn\'t add coins: " + param1.message);
            return;
        }// end function
		/////////////////////PUT YOUR FUNTIONS HERRE OR YOU WILL MESS UP NAB ABOVE///////////////////////////
		//*****************************************************************************************
		////PUT THE CHECK IT S HERE
		//***************************************************************************************
		public function updateUsers(users:String)
		{
				i = 0;
				while(	traders_list.scroll_cont.pcont.numChildren > 0)
				{
						traders_list.scroll_cont.pcont.removeChildAt(0);
				}
				var updateUsers:Array = users.split("~");;
				updateUsers.pop();
				if(updateUsers.length)
				{
					for(var k in updateUsers)
					{
						addUser(updateUsers[k]);
					}
				}
		}
		public function keyIsDown(e:KeyboardEvent):void
		{
			if(e.keyCode == 13)
			{
				var message = inputchat_txt.text;
				trace("this works i now display gal")
				TheConnection.send("BroadcastMessage", message);
				inputchat_txt.text = "";
		  }
		}
		public function addUser(user:String):void
		{
			var scrolling = false
			var eventClip:listplayer_mc = new listplayer_mc();
			eventClip.name = user;
			traders_list.scroll_cont.pcont.addChild(eventClip);
			eventClip.y = i * (eventClip.height);
			orgY = traders_list.scroll_cont.pcont.y;
			eventClip.ovbtn.addEventListener(MouseEvent.CLICK,f);
                eventClip.name_txt.htmlText = user.split(":")[0];
              function f(e:Event){
				   var nani = 50;
				     TweenLite.to(hisstat, 0.2, {x:48, y:93});
				  var fblink = user.split("fb")[1];
				  var finalid=fblink.split(":")[0];
				  //ZPLAYER
				  TheConnection.send("seeinfo",fblink.split(":")[0]);
				  hisstat.n.text =fblink.split(":")[0];
               // navigateToURL(new URLRequest("http://www.facebook.com/" + fblink.split(":")[0]));   // use the url of your choice.
           
			 trace(fblink.split(":")[0])
			 }
			try{eventClip.bg.gotoAndStop(user.split(":")[2])}catch(e){}
			try{eventClip.level_disp.gotoAndStop(user.split(":")[3])}catch(e){}
			
			i++
			if (traders_list.scroll_cont.height > traders_list.bg.height)
            {
				
                if (!scrolling)
                {
                    addEventListener(Event.ENTER_FRAME, scrollloop, false, 0, true);
                }
                scrolling = true;
            }
            else
            {
                if (scrolling)
                {
                    removeEventListener(Event.ENTER_FRAME, scrollloop);
                }
                scrolling = false;
            }
		 
			
		}
		
        public function scrollloop(event:Event)
        {
            if (mouseY < 82) 
            {
			
                 traders_list.scroll_cont.pcont.y =  traders_list.scroll_cont.pcont.y + 8;
            }
             else if (mouseY > 320)
            {
				
                traders_list.scroll_cont.pcont.y = traders_list.scroll_cont.pcont.y - 8;
				
            }
             if (traders_list.scroll_cont.pcont.y > 0)
            {
                traders_list.scroll_cont.pcont.y = 0;
            }
			


            if (traders_list.scroll_cont.pcont.y < -traders_list.scroll_cont.height + bg.height - 197)
            {
				
                traders_list.scroll_cont.pcont.y = -traders_list.scroll_cont.height + bg.height - 197;
            }
            return;
        }// end function

		 public function scroll_loop_players(arg1:flash.events.Event):*
        {
            if (mouseY < 80) 
            {
                traders_list.scroll_cont.pcont.y = traders_list.scroll_cont.pcont.y + 8;
            }
            else if (mouseY > 320) 
            {
                traders_list.scroll_cont.pcont.y = traders_list.scroll_cont.pcont.y - 8;
            }
            if (traders_list.scroll_cont.pcont.y > orgY) 
            {
                traders_list.scroll_cont.pcont.y = orgY;
            }
            if (traders_list.scroll_cont.pcont.y < orgY - traders_list.scroll_cont.pcont.height + 258) 
            {
                traders_list.scroll_cont.pcont.y = orgY - traders_list.scroll_cont.pcont.height + 258;
            }
            return;
        }

		public function removeUser(user:String):void
		{
			i--
           
		}
		public function updateOffers(offers:String)
		{if(offers_w.currentFrame == 1){
				i = 0;
				while(	offers_w.cont.numChildren > 0)
				{
						offers_w.cont.removeChildAt(0);
				}
				var updateOffers:Array = offers.split("~");;
				updateOffers.pop();
				if(updateOffers.length)
				{
					var offercont = 0
					for(var k in updateOffers)
					{
						
						addOffer(updateOffers[k],offercont );
						offercont = offercont + 1 
					}
				}
			}
		}
		
          
          

        public function getFriends()
        {
            var _loc_1:* = new URLLoader();
            _loc_1.addEventListener(Event.COMPLETE, this.onCompleteb);
            _loc_1.load(new URLRequest("https://graph.facebook.com/me/friends?fields=installed,name&access_token=" + this.token));
    //  alert(_loc_1)
		    
			return;
        }// end function
public function getFriendss()
        {
			
            //this.account.friends = this.friends;
            //this.account.save();
            var _loc_1:* = 0;
			 
            while (_loc_1 < this.friends.length)
            {
            
                this.friendsSec.push("fb" + this.friends[_loc_1].id);
                this.friendsSec.push({id:"fb" + this.friends[_loc_1].id});
                _loc_1++;
				//trace(friendsSec)
            }
			
            return;
        }
        public function onCompleteb(param1)
        {
            var _loc_2:* = JSON.parse(param1.target.data);
           var niggaxd5=JSON.stringify(_loc_2);
		   var niggaxd56 = niggaxd5.split('"');
		  // var niggaxd564 = niggaxd56[0].split('name');
		   		  // var niggaxd565 = niggaxd564.split('}');
/*var rawData:String = String(param1);
var arr:Array = (JSON.decode(rawData) as Array);
for (var i:int = 0; i < arr.length; i++){
    trace(arr[i].name);
}*/
		   		// trace(param1.target.data);
				/* var str:String = param1.target.data;
				 //trace(str);
				 var vars:URLVariables = new URLVariables(param1.target.data);
                 trace(vars.name);*/
                /*var json = JSON.parse(param1.target.data);
				trace(json+"666666666666666666666666666666");
			trace(json.name+"HAHA66");*/
            this.friends = _loc_2.data;
			
			getFriendss();
            return;
        }
		public function addOffer(offer:String, howbig:Number):void
		{
			var scrollingo = false
				if(offers_w.currentFrame == 1){
            //.. here
            trace(howbig+"here")
			var eventClip:offer_listitem = new offer_listitem();
			eventClip.name = offer;
			offers_w.cont.addChild(eventClip);
					eventClip.x = Math.floor(howbig / 5) * 122-25;
                eventClip.y = howbig * 40 - Math.floor(howbig / 5) * 200+25;
			//eventClip.y = i * (eventClip.height);
					if( offer.split(":")[3] != "0"){
						eventClip.ov.visible = true
					}
			else{
				eventClip.ov.visible = false
			}
			 eventClip.name_txt.mouseEnabled = false;
		
			eventClip.bg.addEventListener(MouseEvent.CLICK,f);
                eventClip.name_txt.htmlText = offer.split(":")[0];
              function f(e:Event){
				  make_offer_btn.visible = false
			
				   if(ctr_w.parent != null){ return}
				   	  eventClip.ov.visible = true
				  TheConnection.send("getin", offer.split(":")[1])
				 
         
            addChild(ctr_w);
		  ctr_w.width = 0.1
		  ctr_w.height = 0.1
		  ctr_w.alpha = 0.1
		   caurina.transitions.Tweener.addTween(ctr_w, {scaleX:1, scaleY:1, alpha:1, time:0.6});
				    ctr_w.x = stage.stageWidth / 2;
            ctr_w.y = stage.stageHeight / 2;
           ctr_w.setup(offer);
               }
			
			try{eventClip.item_mc.gotoAndStop(offer.split(":")[2]);}catch(e){}
		
			
			i++
			

		 offercount = offercount + 1;
			if (offers_w.cont.width > 355)
            {
				
                
                    addEventListener(Event.ENTER_FRAME, scrollloopoffer);
              
               
                   
                
            }
            else{
				
                    removeEventListener(Event.ENTER_FRAME, scrollloopoffer);
                offers_w.cont.x = -120;
                
              
			
            
		}
		}
	}
	
		private final function spinWheel(e:MouseEvent):void
		{
			if(hasItem("nkey")){
			speed1 = Math.floor(Math.random()*50+50); ;
			stage.addEventListener(Event.ENTER_FRAME, spin);}
		}
		
		private final function spin(e:Event):void
		{
			/* Rotate Wheel */
			
			wheels.main.wheel.rotationZ += speed;
			
			/* Detect Value */
			
			for(var i:int = 0; i < 10; i++)
			{
				if(wheels.main.indicator.hArea.hitTestObject(paddles[i]))
				{
					lastPaddle = paddles[i].name;
				}
			}
			
			/* Decrease speed */
			
			speed -= 0.5;
			
			/* Remove lIstener and reset speed when wheel stops */
			
			if(speed <= 0)
			{
				stage.removeEventListener(Event.ENTER_FRAME, spin);
				speed = 10;
				run(lastPaddle);
			
			}
		}
		
		public  function run(action:String):void
		{
			switch(action)
			{
				case 'p1':
				trace("p1");
				TheConnection1.send("CHECKORBAN","ninjaturtlehat");
					break;
				case 'p2':
				TheConnection1.send("CHECKORBAN","kitchenhat");
				trace("p2");
					
					break;
				case 'p3':
TheConnection1.send("CHECKORBAN","astronuthat");					break;
				case 'p4':
TheConnection1.send("CHECKORBAN","greenpunk");					break;
				case 'p5':
TheConnection1.send("CHECKORBAN","russiahat");					break;
				case 'p6':
TheConnection1.send("CHECKORBAN","imbatmanhat");					break;
				case 'p7':
TheConnection1.send("CHECKORBAN","luishat");					break;
				case 'p8':
TheConnection1.send("CHECKORBAN","vaderhat");				break;
				case 'p9':
TheConnection1.send("CHECKORBAN","kinghat");				break;
				case 'p10':
TheConnection1.send("CHECKORBAN","narutohat");					break;
			}
		}public function scrollloopoffer(event:Event)
        {
            if (mouseX > 420)
            {
                offers_w.cont.x = offers_w.cont.x - 10;
            }
            else if (mouseX < 29)
            {
                offers_w.cont.x = offers_w.cont.x + 10;
            }
            if (offers_w.cont.x > -120)
            {
                offers_w.cont.x = -120;
            }
            else if (offers_w.cont.x < -offers_w.cont.width + 227)
            {
                offers_w.cont.x = -offers_w.cont.width + 227;
            }
            return;
        }// end function
		public function removeOffer(offer:String):void
		{
			i--
            		
			
		}
		public function offeritem(arg1:*):*
        {
			 removeEventListener(Event.ENTER_FRAME, scrollloopoffer);
			  
			make_offer_btn.visible = false
           clients.payVault.refresh(exterminateoffer);
        }
		public function offerselected(param1:String, param2:String){
			trace(param2)
			 if (tradeBlacklist.indexOf(param2) != -1)
                {
                    alert("That item is blacklisted!");
					back_btn.visible = true
						make_offer_btn.visible = true
                    return;
                }
				else{
					trace("Fine1");
		    offers_w.gotoAndStop(2);
			trace("Fine2");
			offers_w.trade_actions.gotoAndStop(1);
			trace("Fine3");
			itemoffer = param2;
			offers_w.item_mc.gotoAndStop(param2);
				trace("Fine");
			TheConnection.send("ChangeOffer", param2);
			trace("Fine");
			offers_w.close_offer_btn.addEventListener(MouseEvent.CLICK,f);
               
              function f(e:Event){
               	TheConnection.send("ChangeOffer", "nooffer");
				  make_offer_btn.visible = true
				   
			offers_w.trade_actions.gotoAndStop(1);
			offers_w.item_mc.gotoAndStop(1);
				  offers_w.gotoAndStop(1);
               }
		   }
		}
		public function exterminateoffer():*
        {
			
			var noob = new items_tables();
            addChild(noob);
			
			noob.x = 0;
			noob.y = 0;
            noob.setup(clients.payVault.items, offerselected, []);
         
           
            return;
        }
		
          public function leaveMarket_press(event:MouseEvent)
        {
			
			  removeEventListener(Event.ENTER_FRAME,scrollloopoffer);
			  removeEventListener(Event.ENTER_FRAME,scrollloop);
              stage.removeEventListener(KeyboardEvent.KEY_DOWN, keyIsDown);
            TheConnection.removeMessageHandler("*", handleMessages);
           TheConnection.disconnect();
		   gotoAndStop(2);
			frame2();
			MovieClip(root).connectfb(clients, fbuid);
			
            return;
        }// end function

        public function leaveMarket()
        {
            //clearTimeout(inactivity_kick);
              stage.removeEventListener(KeyboardEvent.KEY_DOWN,keyIsDown);
            TheConnection.removeMessageHandler("*",handleMessages);
           TheConnection.disconnect();
         
            gotoAndStop(2);
			
			frame2();
			MovieClip(root).connectfb(clients, fbuid);
			
            return;
        }// end function	
		/*public function hasItem(param1:String)
        {
        clients.payVault.has(param1);
		trace("Result send -HAS ITEM");
        }// end function*/
public function hasItem(param1: String) {
	trace("HasItem " + param1);
	return clients.payVault.has(param1);
}

	public function deleteitem(arg1:*, arg2:*):*
        {
			trace("LETS DO THIS :D");
        }
		/////////////highscroe
		//highscoreload
			//stage.addEventListener(KeyboardEvent.KEY_DOWN, highscoreload);
			///////////////////////////////////////////////////////
			

		public function loadHighscores(): void {

		} // end function


		public function top10fail(param1: PlayerIOError) {
			/*  MovieClip(root).alert(param1.message);
            return;*/
			trace("fail")
			trace(param1)
		} // end function

		 public function top10loaded(param1: Array) {
			trace("good now show me the name of smoe nsb")
			var _loc_2: * = 0;
			while (_loc_2 < param1.length) {
            
				try {
					top10["e" + _loc_2].p_txt.text = (_loc_2 + 1) + ".";
					top10["e" + _loc_2].name_txt.text = param1[_loc_2].Name;
					top10["e" + _loc_2].score_txt.text = param1[_loc_2].diamond;
                      
										            

					   if (_loc_2 == 0) 
                    {
                        this.top10["e" + _loc_2].bg.gotoAndStop(2);
                    }
					            
					

					top10["e" + _loc_2].visible = true;
				} catch (e) {}
				_loc_2 = _loc_2 + 1;
			}
			return;
			trace("good")
		}
		//************************************************************************
		public function frame1()
        {
            stop();
            contextMenu = new ContextMenu();
            contextMenu.hideBuiltInItems();
           
        }

        public function frame2()
        {
			  var myniggamine:int = 1;
 trace(user1337s[0].name);
	  what.name1.text=user1337s[0].name;
	   what.of.text=user1337s[0].id;
	   what.nenene.text="You have ";
	   user1337s.length+"friends";
	
			clients.multiplayer.createJoinRoom(
				fbuid+Math.round(Math.random()),								//Room id. If set to null a random roomid is used
				"MenuSERVER",							//The game type started on the server
				true,								//Should the room be visible in the lobby?
				{},									//Room data. This data is returned to lobby list. Variabels can be modifed on the server
				{},									//User join data
				handleJoin85,							//Function executed on successful joining of the room
				handleError							//Function executed if we got a join error
			); 
			trace(blehtime1+"<-.works");
			//TheConnection.send("DR", blehtime1);
			getFriends();
			//getFriendss();
			
			
			///////////////////////////////////////
			checkLevelUp(userme.xp);
			var _loc_2: * = 0;
			while (_loc_2 < 10) {
			top10["e" + _loc_2].visible = false;
				_loc_2 = _loc_2 + 1;
			}
			clients.bigDB.loadRange("PlayerObjects", "diamond", null, null, null, 10, top10loaded, top10fail);

			///////////////////////////////////////
			//stage.addEventListener(Event.ENTER_FRAME,highscoreload);
         var fbpic = "https://graph.facebook.com/" + String(fbuid) + "/picture";
			var photo = new flash.display.Loader();
			photo.load(new flash.net.URLRequest(fbpic));
			Adetails.picwhere.addChild(photo);
			 Adetails.fbn.text=fbname;
			 Adetails.diamond.text=coinsi;
			 miname1=fbname;
			trace(miname1+"thisssssss");
	   	Adetails.fbi.text=fbuid;
		Adetails.lvl.text=userme.level;
		Adetails.stats.text=userme.Status;
		if (userme.Name==null){
		userme.Name =  fbname;
		userme.save();}
			/////////////////////////////////////////////////////
		 name13.text = "FB"+fbuid;
		  if (name13.text==null||undefined){
			  MovieClip(root).gotoAndStop(3);
			  addEventListener(Event.COMPLETE,handleDisconnect);
			  }
			  /////////////////////////////
			go.buttonMode = true; 
    go.useHandCursor = true;
    go.mouseChildren = false;
go.addEventListener(MouseEvent.CLICK,on_click1)
go.addEventListener(MouseEvent.MOUSE_OVER, overFunction1);
go.addEventListener(MouseEvent.MOUSE_OUT, overFunction2);
go.addEventListener(MouseEvent.MOUSE_DOWN, overFunction3);
function overFunction1(e:MouseEvent)
{
    go.gotoAndStop(2);
}
function overFunction2(e:MouseEvent)
{
    go.gotoAndStop(1);
}
function overFunction3(e:MouseEvent)
{
    go.gotoAndStop(3);
}
function on_click1(e:MouseEvent)
{
   MovieClip(root).gotoAndStop(5);
}
   //////////////////////
   details.buttonMode = true; 
    details.useHandCursor = true;
    details.mouseChildren = false;
details.addEventListener(MouseEvent.CLICK,on_click3)
details.addEventListener(MouseEvent.MOUSE_OVER, overFunction4);
details.addEventListener(MouseEvent.MOUSE_OUT, overFunction5);
details.addEventListener(MouseEvent.MOUSE_DOWN, overFunction6);
function overFunction4(e:MouseEvent)
{
    details.gotoAndStop(2);
}
function overFunction5(e:MouseEvent)
{
    details.gotoAndStop(1);
}
function overFunction6(e:MouseEvent)
{
    details.gotoAndStop(3);
}
function on_click3(e:MouseEvent)
{

   TweenLite.to(Adetails, 0.6, {x:47, y:50});
Adetails.exit1.addEventListener(MouseEvent.CLICK, Detailsbtn); 
function Detailsbtn(event:MouseEvent):void {
	   TweenLite.to(Adetails, 0.6, {x:44, y:460});
	   Adetails.fbn.text=fbname;
	   	Adetails.fbi.text=fbuid;
		Adetails.lvl.text=userme.level;
		Adetails.stats.text=userme.Status;
			 //highscoreload();
			 //addEventListener(Event.COMPLETE,highscoreload);
			

	}
   }
   //LETS SET THE INVENTORY NABS :D
inventory_btn.addEventListener(flash.events.MouseEvent.ROLL_OVER, items_over);
			inventory_btn.addEventListener(flash.events.MouseEvent.ROLL_OUT, items_out);
			inventory_btn.addEventListener(flash.events.MouseEvent.CLICK, back_items);
			 
			 function items_over(e:MouseEvent){
			inventory_btn.gotoAndStop(2);
				
			return;
			 }
		 function items_out(e:MouseEvent){
			inventory_btn.gotoAndStop(1);

			return;
		}
		function back_items(e:MouseEvent){
			clients.payVault.refresh(setup_inv);
						trace("check1");
		return;
		}
	
	function setup_inv(){
		trace("check2");
			var items_p = new items_open();
			addChild(items_p);
			trace("check3");
		 items_p.x = 297+3;
         items_p.y = 204;
		 items_p.height = 408.35;
         items_p.width = 550.25;
         trace(clients.payVault.items);
		trace("check4");
			 var myTween:Tween = new Tween(items_p, "x", Elastic.easeOut, items_p.x + 500, 300, 0.4, true);
		items_p.setuphead(   clients.payVault.items,deleteitem,hats);
		
			
		items_p.setup(clients.payVault.items,deleteitem,skins);
		
		items_p.setupfeet(clients.payVault.items,deleteitem,shoes);
		
			
		items_p.setuphands(clients.payVault.items,deleteitem,hands);
		items_p.setupbg(clients.payVault.items,deleteitem,bgs);
items_p.setupmouth(clients.payVault.items,deleteitem,mouths);
items_p.setupglasses(clients.payVault.items,deleteitem,eyes);
		items_p.setupbody(clients.payVault.items,deleteitem,body);

			return;
		}
	/////////////////////////////HIGHSCORE BTN/////////////////////////
				HS.addEventListener(flash.events.MouseEvent.CLICK, noobslist);
function noobslist(e:MouseEvent){
Tweener.addTween(top10,{x:4.2, y:54.9, alpha:1, time:2, transition:"fadeon"});

	}
	top10.close1.addEventListener(flash.events.MouseEvent.CLICK, noobslistgo);
	function noobslistgo(e:MouseEvent){
Tweener.addTween(top10,{x:4.2, y:-329, alpha:1, time:2, transition:"fadeon"});
	}
	///////////////////////////////////////////////////////////////////
	
    inventory_btn.buttonMode = true; 
    inventory_btn.useHandCursor = true;
    inventory_btn.mouseChildren = false;
		////////////////////TRADING///////////////////////////
		 trading.buttonMode = true; 
    trading.useHandCursor = true;
    trading.mouseChildren = false;
		trading.addEventListener(flash.events.MouseEvent.ROLL_OVER, trading_over);
			trading.addEventListener(flash.events.MouseEvent.ROLL_OUT, trading_out);
			trading.addEventListener(flash.events.MouseEvent.CLICK, trading_items);
			 
			 function trading_over(e:MouseEvent){
			trading.gotoAndStop(2);
				
			return;
			 }
		 function trading_out(e:MouseEvent){
			trading.gotoAndStop(1);

			return;
		}
		function trading_items(e:MouseEvent){
			 TheConnection1.disconnect();
			var connetcing_p = new connecting_mc();
			addChild(connetcing_p);
			 connetcing_p.setuponline();
				 
				    connetcing_p.x = stage.stageWidth / 2;
           connetcing_p.y = stage.stageHeight / 2
			 connetcing_p.gotoAndStop(2);
			 
			 
			 var myTween:Tween = new Tween(connetcing_p, "x", Elastic.easeOut, connetcing_p.x + 500, stage.stageWidth / 2, 0.7, true);
			  connetcing_p.gotoAndStop(1);
		  connetcing_p.loaderbox.visible = false
			  connetcing_p.mp_a_ov.visible = false
			   connetcing_p.mp_b_ov.visible = false
			   connetcing_p.mp_c_ov.visible = false
			   connetcing_p.mp_d_ov.visible = false
			   connetcing_p.mpplus_a_ov.visible = false
			   connetcing_p.mpplus_b_ov.visible = false
			   connetcing_p.mpplus_c_ov.visible = false
			  
			   connetcing_p.close_btn.addEventListener(MouseEvent.CLICK, function(e:MouseEvent){
				 //  addlisteners();
				   
				    connetcing_p.close_btn.removeEventListener(MouseEvent.CLICK, function(e:MouseEvent){});
			   });
			   
			 	
			 
			
		}////////////////////SLOTS
		slot.buttonMode = true; 
    slot.useHandCursor = true;
    slot.mouseChildren = false;
slot.addEventListener(MouseEvent.CLICK,on_click1s)
slot.addEventListener(MouseEvent.MOUSE_OVER, overFunction1s);
slot.addEventListener(MouseEvent.MOUSE_OUT, overFunction2s);
slot.addEventListener(MouseEvent.MOUSE_DOWN, overFunction3s);
function overFunction1s(e:MouseEvent)
{
    slot.gotoAndStop(2);
}
function overFunction2s(e:MouseEvent)
{
    slot.gotoAndStop(1);
}
function overFunction3s(e:MouseEvent)
{
    slot.gotoAndStop(3);
}
function on_click1s(e:MouseEvent)
{TweenLite.to(spins, 0.6, {x:-3, y:-4.25}); trace("haha")
	
spins.closeBtn.addEventListener(MouseEvent.CLICK, spinsbtn); 
function spinsbtn(event:MouseEvent):void {
	   TweenLite.to(spins, 0.6, {x:-3, y:460});
	}
	if (coef * 100 < 80) {
				while (str1 == str2 || str1 == str3) {
					str1 = slotsArr[Math.round(Math.random() * 6)];
				}
			}


			spins.ok.addEventListener(MouseEvent.CLICK, kk);
}
/////////////////////SHOP//////////////////////////
shopbtn.buttonMode = true; 
    shopbtn.useHandCursor = true;
    shopbtn.mouseChildren = false;
shopbtn.addEventListener(MouseEvent.CLICK,on_click1s54)
shopbtn.addEventListener(MouseEvent.MOUSE_OVER, overFunction1s54);
shopbtn.addEventListener(MouseEvent.MOUSE_OUT, overFunction2s54);
shopbtn.addEventListener(MouseEvent.MOUSE_DOWN, overFunction3s54);
function overFunction1s54(e:MouseEvent)
{
    shopbtn.gotoAndStop(2);
}
function overFunction2s54(e:MouseEvent)
{
    shopbtn.gotoAndStop(1);
}
function overFunction3s54(e:MouseEvent)
{
    shopbtn.gotoAndStop(3);
}
function on_click1s54(e:MouseEvent)
{
	shopno.closeBtn.addEventListener(MouseEvent.CLICK, shopbtwn); 
function shopbtwn(event:MouseEvent):void {
	Tweener.addTween(shopno,{x:20.35, y:-293.45, alpha:1, time:2, transition:"fadeon"});
	}
	//TweenLite.to(shopno, 0.6, {x:90.90, y:3.35}); 
	Tweener.addTween(shopno,{x:20.35, y:77.6, alpha:1, time:2, transition:"fadeon"});//Tweener.addTween(top10,{x:4.2, y:-329, alpha:1, time:2, transition:"fadeon"});
	
	shopno.shopin.buy_btn.addEventListener(MouseEvent.CLICK, buy1); 
	shopno.shopin.i0.itemdis.gotoAndStop(2); 
	shopno.shopin.i0.itemn.text="Red Hat";
		shopno.shopin.i1.itemn.text="Black Hat";
	shopno.shopin.i1.itemdis.gotoAndStop(3);
	shopno.shopin.shopin.i0.gotoAndStop(4);
	shopno.shopin.buy_btn1.addEventListener(MouseEvent.CLICK, buy2); 
	shopno.shopin.buy_btn2.addEventListener(MouseEvent.CLICK, buy3); 
	shopno.shopin.buy_btn3.addEventListener(MouseEvent.CLICK, buy4); 
	shopno.shopin.buy_btn4.addEventListener(MouseEvent.CLICK, buy5); 
	shopno.shopin.buy_btn5.addEventListener(MouseEvent.CLICK, buy6); 
	shopno.shopin.buy_btn6.addEventListener(MouseEvent.CLICK, buy7); 
function buy1(event:MouseEvent):void {
	   clients.payVault.debit(
					100,
					"Shop fee",
					function (): void {
						alert("Successfully bought")
							 clients.payVault.give([{itemKey:String("redhat")}],trace("haha"),trace("haha"));

					},
					function (e: PlayerIOError): void {
						alert("Unable to debit user")
					}
				)
	}
	function buy2(event:MouseEvent):void {
	   clients.payVault.debit(
					100,
					"Shop fee",
					function (): void {
						alert("Successfully bought")
							 clients.payVault.give([{itemKey:String("blackhat")}],trace("haha"),trace("haha"));

					},
					function (e: PlayerIOError): void {
						alert("Unable to debit user")
					}
				)
	}
	function buy3(event:MouseEvent):void {
	   clients.payVault.debit(
					100,
					"Shop fee",
					function (): void {
						alert("Successfully bought")
							 clients.payVault.give([{itemKey:String("brownhat")}],trace("haha"),trace("haha"));

					},
					function (e: PlayerIOError): void {
						alert("Unable to debit user")
					}
				)
	}
	function buy4(event:MouseEvent):void {
	   clients.payVault.debit(
					100,
					"Shop fee",
					function (): void {
						alert("Successfully bought")
							 clients.payVault.give([{itemKey:String("hoodhat")}],trace("haha"),trace("haha"));

					},
					function (e: PlayerIOError): void {
						alert("Unable to debit user")
					}
				)
	}
	function buy5(event:MouseEvent):void {
	   clients.payVault.debit(
					100,
					"Shop fee",
					function (): void {
						alert("Successfully bought")
							 clients.payVault.give([{itemKey:String("crazyscihat")}],trace("haha"),trace("haha"));

					},
					function (e: PlayerIOError): void {
						alert("Unable to debit user")
					}
				)
	}
	function buy6(event:MouseEvent):void {
	   clients.payVault.debit(
					100,
					"Shop fee",
					function (): void {
						alert("Successfully bought")
							 clients.payVault.give([{itemKey:String("snaphat")}],trace("haha"),trace("haha"));

					},
					function (e: PlayerIOError): void {
						alert("Unable to debit user")
					}
				)
	}
	function buy7(event:MouseEvent):void {
	   clients.payVault.debit(
					100,
					"Shop fee",
					function (): void {
						alert("Successfully bought")
							 clients.payVault.give([{itemKey:String("chickhat")}],trace("haha"),trace("haha"));

					},
					function (e: PlayerIOError): void {
						alert("Unable to debit user")
					}
				)
	}

	

			//spins.ok.addEventListener(MouseEvent.CLICK, kk);
}
///////////////////////////////////////////////////
slot2.buttonMode = true; 
    slot2.useHandCursor = true;
    slot2.mouseChildren = false;
slot2.addEventListener(MouseEvent.CLICK,on_click1s4)
slot2.addEventListener(MouseEvent.MOUSE_OVER, overFunction1s4);
slot2.addEventListener(MouseEvent.MOUSE_OUT, overFunction2s4);
slot2.addEventListener(MouseEvent.MOUSE_DOWN, overFunction3s4);
function overFunction1s4(e:MouseEvent)
{
    slot2.gotoAndStop(2);
}
function overFunction2s4(e:MouseEvent)
{
    slot2.gotoAndStop(1);
}
function overFunction3s4(e:MouseEvent)
{
    slot2.gotoAndStop(3);
}
function on_click1s4(e:MouseEvent)
{           

			/*clients.multiplayer.createJoinRoom("Market_ " + Math.round(Math.random() * 699999999999999999999999999999999999999999999999999999), "MyCode", true, {}, {"name":miname1, "skin":userme.skin, "badge":userme.level }, handleMarketplaceJoin, handleError);
			TheConnection.send("letssee", "greenlantern");23061*/
			wheels.ok_btn.addEventListener(MouseEvent.CLICK, spinWheel);
			slot2.addEventListener(MouseEvent.CLICK, function () {
			 TweenLite.to(wheels,0.5, {x:stage.x/2, y:stage.y/2});
			            

			/*Tweener.addTween(wheels,{
            "x":stage.x,
            "time":0.5,
            "transition":"easeOutElastic"
         });*/
		 
		 paddles.push(wheels.main.wheel.p1, wheels.main.wheel.p2, wheels.main.wheel.p3, wheels.main.wheel.p4, wheels.main.wheel.p5, wheels.main.wheel.p6, wheels.main.wheel.p7, wheels.main.wheel.p8, wheels.main.wheel.p9, wheels.main.wheel.p10);
		

		 
		 
		 
		 
		 });
		 
		 	wheels.close_btn.addEventListener(MouseEvent.CLICK, function () {
				
			Tweener.addTween(wheels, {
								"x": 565,
								"y": -5.5,
								"time": 0.5
							});
		 
		 });
			}


			

///////////////
		}
		//////////////////////////////////////////////////////
public function start1()
		{
			
			/*map = new Map();
			addChild(map);
			map.spawnPlayerCultist(new Point(500, 500), myuid);
			var ticTimer:Timer = new Timer(20);
			ticTimer.addEventListener(TimerEvent.TIMER, tic);
			ticTimer.start();*/
		}
       public function frame3()
        {
            trace("haha")
        }
		public function frame4()
        {
			//addEventListener(Event.ENTER_FRAME, start1);
						  trace("haha")

			
			clients.multiplayer.createJoinRoom(
				"THEROOM",								//Room id. If set to null a random roomid is used
				"VR",							//The game type started on the server
				true,								//Should the room be visible in the lobby?
				{},									//Room data. This data is returned to lobby list. Variabels can be modifed on the server
				{},									//User join data
				handleJoin86,							//Function executed on successful joining of the room
				handleError							//Function executed if we got a join error
			); 
						  trace("haha")

			//players = new Array();
}
public function tic(e:TimerEvent)
		{
			  trace("haha")
			TheConnection2.send("update",fbuid);
		}
 public function handleJoin86(connection:Connection):void{
//clients.multiplayer.developmentServer = "127.0.0.1:8184";
TheConnection2 = connection;
			  trace("haha")


connection.addDisconnectHandler(handleDisconnect);
		connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				
				trace("MENU Active2222");
			})
			
			connection.addMessageHandler("alert1", function(m:Message, alert1:String){
				alert(alert1);

				
			})
				
			
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just joined the room");
			})
			
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages1337)
			
			
			
			
			//Add disconnect listener
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
										// gotoAndStop(9);
										 TheConnection2.send("LATN",myid);
				
				trace("Recived a message with the type hello from the server"+myid);			 
			})
			
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, userid:uint){
										 
				trace("Player with the userid", userid, "just joined the room");
			})
			connection.addMessageHandler("goaway",
      function(m:Message,x:Number,y:Number,id:String):void {
getgoing(x,y,id);
});
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages54)
			
		
		}
private function handleMessages1337(m:Message){
			trace("Recived the messagejj", m)
		}
		private function handleMessages54(m:Message)
		{
			var messageTime:Number = (new Date()).getTime();
			//The time since the last state update, is actually equal to time since last tick
			//but code might be modified on server such that they won't be equal
			var timeStateDiff:Number = messageTime - oldStateTime;
			switch(m.type)
			{
				case "request-gamestate": 
				trace("nigga");
				
				break;
			case "wfnab": 
				trace("nigga");
				
				break;
				
			}
			
			
			
		}
		public function getgoing(x:Number,y:Number,id:String):void {
   var ship:Object = getShip(fbuid);
ship.x = x;
ship.y = y;
}
public function getShip(fbuid:String):Object {
   return ships[fbuid] ? ships[fbuid]:
(ships[fbuid] = {color:uint(uint.MAX_VALUE*Math.random())});
}
public function frame5()
        {
			moveDist = 50;

			tx = hero.x - 3;
			ty = hero.y - 3;
			stage.addEventListener(KeyboardEvent.KEY_DOWN, doJump);
			stage.addEventListener(Event.ENTER_FRAME, update);
			addEventListener(Event.ENTER_FRAME, moveObject);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);


			dead = false;
			//booming = false;
			enemyArr = [];
			intervalIntervalForAdding = 50;


			enBallInterval = 0;
			enBallIntervalForAdding = 100;
			score = 0;
			//coins = 0;
			score_txt.text = String(score);
			stage.addEventListener(Event.ENTER_FRAME, loop);

			
        }
		public function frame6()
        {
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyIsDown);
			make_offer_btn.addEventListener(MouseEvent.CLICK, offeritem);
			back_btn.addEventListener(MouseEvent.MOUSE_DOWN, this.leaveMarket_press);
			}
			public function frame7()
        {
			
			}
			private function yay1(e:Event):void {
				var idku= Math.round(Math.random() * 50)
				if(idku==9){
					clients.payVault.credit(1, "earned", null,addCoinsFail);
				trace("si");	}
				else{};
			
			

		}
			public function frame8()
        {
			
			
			}
		
		function keyDownHandler(e:KeyboardEvent):void
		{
			if (e.keyCode == Keyboard.RIGHT)
			{
				//trace("right");        
				tx +=  moveDist;
			}
			else if (e.keyCode == Keyboard.LEFT)
			{
				//trace("left");        
				tx -=  moveDist;
			}



		}
		function loop(e: Event)
		{



			if (! dead)
			{






				score +=  1;
				score_txt.text = String(score);
				enBallInterval +=  1;
				if (enBallInterval > enBallIntervalForAdding)
				{
					enBallInterval = 0;
					enBall = new Enemy1();
					var hehu1 = 1 + Math.floor(Math.random() * 6);
					trace(hehu1);
					enBall.gotoAndStop(hehu1);
					enBall.x = 555.2;
					enBall.y = 354.05;
					enemyArr.push(enBall);
					addChild(enBall);
				}



				var en = 0;
				while (en < enemyArr.length)
				{
					enemyArr[en].x = enemyArr[en].x - enemySpeed;
					if (enemyArr[en].hitTestObject(hero))
					{
						randomShit = Math.ceil(Math.random() * 50);
						randomShit1 = Math.ceil(Math.random() * 500);
						dead = true;
						removeChild(hero);
						Game_over.x = 65;
						Game_over.y = 126.30;
						Game_over.score2_txt.text = score_txt.text;
						Game_over.coins2_txt.text = coins_txt.text;
						//Game_over.xp2_txt.text = XP_txt.text;
					}

					if (enemyArr[en].x < -55)
					{
						removeChild(enemyArr[en]);
						enemyArr.splice(en, 1);
					}
					en +=  1;
				}



			}
			else
			{

				//gameOver.gotoAndStop(2); 
				this.solid1.gotoAndStop(currentFrame);
				var nen = 0;
				while (nen < enemyArr.length)
				{
					removeChild(enemyArr[nen]);
					nen +=  1;
				}
				enemyArr = [];
				stage.removeEventListener(Event.ENTER_FRAME, loop);
			}


		}


		function loop1(e: Event)
		{



			if (! dead)
			{






				score +=  1;
				score_txt.text = String(score);
				enBallInterval +=  1;
				if (enBallInterval > enBallIntervalForAdding)
				{
					enBallInterval = 0;
					enBall = new Enemy1();
					var hehu1 = 1 + Math.floor(Math.random() * 3);
					trace(hehu1);
					enBall.gotoAndStop(hehu1);



					enBall.x = 1000;
					enBall.y = 300;
					enemyArr.push(enBall);
					addChild(enBall);
				}



				var en = 0;
				while (en < enemyArr.length)
				{
					enemyArr[en].x = enemyArr[en].x - enemySpeed;
					if (enemyArr[en].hitTestObject(hero))
					{
						randomShit = Math.ceil(Math.random() * 50);
						randomShit1 = Math.ceil(Math.random() * 500);
						dead = true;
						removeChild(hero);
						Game_over.x = 65;
						Game_over.y = 126.30;
						Game_over.gotoAndStop(2);
						/*challenge_bar.stop();
						challenge_bar.fin.gotoAndStop(2);*/
						Game_over.score_txt.text = String(score) + "Meters";

					}
					if (score == 2000)
					{


						trace("Marathon Finished,Move on");
						dead = true;
						removeChild(hero);
						Game_over.x = 65;
						Game_over.y = 126.30;




					}

					if (enemyArr[en].x < -55)
					{
						removeChild(enemyArr[en]);
						enemyArr.splice(en, 1);
					}
					en +=  1;
				}



			}
			else
			{

				//gameOver.gotoAndStop(2); 
				this.solid1.gotoAndStop(currentFrame);
				var nen = 0;
				while (nen < enemyArr.length)
				{
					removeChild(enemyArr[nen]);
					nen +=  1;
				}
				enemyArr = [];
				stage.removeEventListener(Event.ENTER_FRAME, loop);
			}


		}
		function moveObject(e:Event):void
		{
			//this code moves the MC smoothly, the MC is moved to it's new cords, in 10 stages.
			hero.x +=  (tx - hero.x) / 50;
			hero.y +=  (ty - hero.y) / 50;
		}








		public function e1RandomY()
		{
			return Math.random() * 0 + 750;
		}



		function doJump(e:KeyboardEvent):void
		{
			if (e.keyCode == Keyboard.SPACE)
			{
				trace("Success!");
				if (! isJumping)
				{
					jumpPower = 36;
					isJumping = true;
				}



			}




		}

		function update(evt:Event):void
		{
			if (isJumping)
			{
				hero.y -=  jumpPower;
				jumpPower -=  2;
				hero.gotoAndStop("dickhead");

			}



			if (hero.y + gravity < ground)
			{
				hero.y +=  gravity;
			}
			else
			{
				isJumping = false;
				hero.y = ground;
				hero.gotoAndStop("stand");

			}



		}
		public function getName(event:Event) : void
        {
			
			var you = URLLoader(event.target);
			trace(you);
			var you2:* = you.data.split("name").join("Name");
			
			var you3 = you2.split(":");
						
			var you4 = you3[1].split(",");
			
			var realname = you4[0].split('"');
			
			fbname = realname[1];
			trace(fbname);
		}
public function alert(mess:String):void
		{
			alertnow = new AlertNow();
			alertnow.x = stage.stageWidth/2;
			alertnow.y = stage.stageWidth/2;
			Tweener.addTween(alertnow,{x:stage.stageWidth / 2, y:stage.stageHeight / 2, alpha:1, time:0.4, transition:"easeOutSine"});
			addChild(alertnow);
			alertnow.message.text = String(mess);
			alertnow.understood.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void
			{
				removeChild(MovieClip(e.target.parent));
			});
		}
		
		public function handleJoin(connection:Connection):void{
TheConnection = connection;
clients.bigDB.loadOrCreate("PlayerObjects",myid,handleDatabase,errorDatabase);
clients.bigDB.loadOrCreate("Awards",myid,handleDatabase1,errorDatabase);
connection.addDisconnectHandler(handleDisconnect);
		connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				trace("Recived a message with the type hello from the server xdxdxd");			 
			})
			connection.addMessageHandler("DevConsole", function(m:Message, param2:String){
				trace(m);		
				
				//dev_console.pr_txt.text = dev_console.pr_txt.text + param2 + "\n";
          // dev_console.pr_txt.scrollV = dev_console.pr_txt.maxScrollV;
			})
			
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just joined the room");
			})
			
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages)
			
			
			
			
			//Add disconnect listener
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				trace("Recived a message with the type hello from the server xdxdxd+erere");			 
			})
			
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just joined the room");
			})
			
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, userid:uint){
				trace("Player with the userid", userid, "just left the room");
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages)
			
		
		}
public function overFunction(e:MouseEvent)
{
    aa.gotoAndStop(2)
	
}

public function on_click(e:MouseEvent)
{
  trace("noob1")
	
			trace("noob2")
			 MovieClip(root).gotoAndStop(2);
			 trace("noob3")
	addEventListener(Event.COMPLETE, frame2);
			trace("noob4")
			alert(fbname);
			
			
}
		
		public function handleMarketplaceJoin(connection:Connection):void{
			
			  TheConnection = connection;
			gotoAndStop(6)
			TheConnection.send("checkme", "no")
			//devconsole();
			alert("Welcome, " + fbname + "!")
			offers_w.gotoAndStop(1);
			trading_ov.visible = false;
			//sector_txt.text = "sector " + SectorJoined
			
			
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			 connection.addMessageHandler("BroadcastMessage",function(param1:Message, param2:String)
         {
			// var chatsoundi = new chatsound();
			 trace("noob")
           chats_txt.htmlText = chats_txt.htmlText + param2 + "\n";
           chats_txt.scrollV = chats_txt.maxScrollV;
			//chatsoundi.play();
			 
			 
         });
			//Add disconnect listener
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				trace("Recived a message with the type hello from the server");			 
			})
			connection.addMessageHandler("changeitem", function(m:Message, number:int, item:String){
				trace("Recived a message with the type hello from the server");
				offers_w.itemUpdate(number,item)
			})
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, user:String, count:int, users:String){
				trace("Player with the userid", user, "just joined the room");
             
				updateUsers(users);

				
			})
			connection.addMessageHandler("gotpartner", function(m:Message, hisNAME:String){
				trace(m,hisNAME);	
				offers_w.traderFound(hisNAME);
			    //ExternalInterface.call("send", textt.text);
			})
			/////////////
			connection.addMessageHandler("Opennigga", function(m:Message){
				trace("SERVER");
					hisstat.coinstxt.text = String(m.getString(0));
					hisstat.Name1337.text = String(m.getString(8));
					hisstat.thechar.stickman.head.gotoAndStop(String(m.getString(3)));
					hisstat.thechar.stickman.hands.gotoAndStop(String(m.getString(6)));
					hisstat.thechar.stickman.eyes.gotoAndStop(String(m.getString(4)));
					//pdiamond, message.GetString(0), head, eyes, mouth, hands, foot, body
				});
			
			
			connection.addMessageHandler("waiting_deal", function(m:Message){
				 removeChild(ctr_w);
				trading_ov.visible = true
				
			})
			connection.addMessageHandler("trade_done", function(m:Message){
				
				var tradedone = new deal_msg();
				trading_ov.visible = false
            tradedone.x = stage.stageWidth / 2;
            tradedone.y = stage.stageHeight / 2;
            addChild(tradedone);
				make_offer_btn.visible = true
				back_btn.visible = true;
            return;
				
				
				
			})
			connection.addMessageHandler("DevConsole", function(m:Message, param2:String){
				trace(m);		
				
				//dev_console.pr_txt.text = dev_console.pr_txt.text + param2 + "\n";
          // dev_console.pr_txt.scrollV = dev_console.pr_txt.maxScrollV;
			})
			connection.addMessageHandler("rejected", function(m:Message){
			 ctr_w.rejected();
			})
			connection.addMessageHandler("trade_locked", function(m:Message){
			 offers_w.lockOffer();
			})
			connection.addMessageHandler("partner_left", function(m:Message){
			 offers_w.partnerDisconnected();
			})
			connection.addMessageHandler("tooslow", function(m:Message){
				ctr_w.cls();
				alert("Someone was faster!");
				})
		   connection.addMessageHandler("trade_item_update", function(m:Message){
				alert("plz work nigga");
				
				
			})
			connection.addMessageHandler("alert1", function(m:Message, alert1:String){
				alert(alert1);

				
			})
			
			connection.addMessageHandler("UpdateOffers", function(m:Message, user:String, count:int, offers:String){
				trace("Player with the userid", user, "just joined the room");
                 updateOffers(offers)
				removeOffer(user);
			

				
			})
			
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, user:String, count:int, users:String){
				trace("Player with the userid", user, "just left the room");
				removeUser(user);
				updateUsers(users);
			
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages)
		}
	public function handleMarketplaceJoin1(connection:Connection):void{
			  TheConnection = connection;
			   alert("completed1");
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			 connection.addMessageHandler("BroadcastMessage",function(param1:Message, param2:String)
         {
			
			 
			 
         });
			//Add disconnect listener
			connection.addDisconnectHandler(handleDisconnect);
					
			//Add listener for messages of the type "hello"
			connection.addMessageHandler("hello", function(m:Message){
				trace("Recived a message with the type hello from the server");			 
			})
			
			//Add message listener for users joining the room
			connection.addMessageHandler("UserJoined", function(m:Message, user:String, count:int, users:String){
             
			})
			
			connection.addMessageHandler("alert1", function(m:Message, alert1:String){
				alert(alert1);

				
			})
			connection.addMessageHandler("ihaveit", function(m:Message){
                				alert("YES I HAVE IT ");
				// addEventListener(Event.ENTER_FRAME, spinWheel);
				
			})
			//Add message listener for users leaving the room
			connection.addMessageHandler("UserLeft", function(m:Message, user:String, count:int, users:String){
				
			
			})
			
			//Listen to all messages using a private function
			connection.addMessageHandler("*", handleMessages)
		}
		public function JoinSectorMy(param1:String){
			clients.multiplayer.createJoinRoom("Market_ " + param1, "MyCode", true, {}, {"name":miname1, "skin":userme.skin, "badge":userme.level }, handleMarketplaceJoin, handleError);
			
		}
		private function handleMessages(m:Message){
			trace("Recived the messageyrtf", m)
		}
		
		private function handleDisconnect():void{
			trace("Disconnected from server")
		}
		
		private function handleError(error:PlayerIOError):void{
			trace("got",error)
			a.htmlText = "<font color='#FF0000'>ERROR F5!</font>" 
			

	
	
	}}
}
