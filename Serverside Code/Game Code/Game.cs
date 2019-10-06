using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using PlayerIO.GameLibrary;
using System.Drawing;

namespace MyGame {
	public class Player : BasePlayer {
		
        public string Name;
        public string Badge;
        public string Namek;
        public string skincolor;
        public string myTrader = "0";
        public string Skin;
        public string OfferItem = "nooffer";
        public string Busy = "0";
        public string ID;
        public string Status = "nothin";
        public bool canChat = true;
        public bool Team = false;
      
	}

	[RoomType("MyCode")]
	public class GameCode : Game<Player> {
        
        String users = "";
        String offers = "";
    
	
		public override void GameStarted() {
			
			Console.WriteLine("Game is started: " + RoomId);

			
			AddTimer(delegate {
				
			}, 100);
			
			
			AddTimer(delegate {
			
				RefreshDebugView(); 
			}, 250);
		}

		// This method is called when the last player leaves the room, and it's closed down.
		public override void GameClosed() {
			Console.WriteLine("RoomId: " + RoomId);
		}

		// This method is called whenever a player joins the game
		public override void UserJoined(Player player) {
			// this is how you send a player a message
			player.Send("hello");
           
            if (player.ID == null)
            {
                player.ID = player.ConnectUserId;
            }
            if (player.Name == null)
            {
                player.Name = player.JoinData["name"];
            }
            if (player.Badge == null)
            {
                player.Badge = player.JoinData["badge"];
            }
         
            player.Skin = player.JoinData["skin"];

            if (player.Skin == "red")
            {
                player.skincolor = "#C00000";
            }
            if (player.Skin == "pussy")
            {
                player.skincolor = "#FF00FF";
            }
            if (player.Skin == "lollipopskin")
            {
                player.skincolor = "#FF00FF";
            }
            else if (player.Skin == "blue")
            {
                player.skincolor = "#0066FF";
            }
            else if (player.Skin == "green")
            {
                player.skincolor = "#009900";
            }
            else if (player.Skin == "yellow")
            {
                player.skincolor = "#BEBE00";
            }
            else
            {
                player.skincolor = "#0099FF";
            }
            PlayerIO.BigDB.LoadOrCreate("Names", player.Name, delegate(DatabaseObject db)
            {
                if (db.Contains("id"))
                {
                  

                }
                else
                {

                    db.Set("id", player.ConnectUserId);
                    db.Save();
                   
                
                }

            }
                  );

			// this is how you broadcast a message to all players connected to the game
            updateRoomData(player);
            updateRoomOffers(player);
			
		}

		// This method is called when a player leaves the game
		public override void UserLeft(Player player) {
            updateRoomData1(player);
            updateRoomOffers(player);
            if (player.myTrader != "0")
            {
                if (player.OfferItem != "nooffer")
                {
                    partnerreject(player);
                   
                }
                else
                {
                    leave_offer(player);
                }

            }
            
			

		}

        private void updateRoomData1(Player player)
        {

            users = "";

            foreach (Player p in Players)
            {

                if (p.Skin == "hordeskin")
                {


                    users += "<font color='#ff0000'>" + p.Name + "</font>" + ":" + p.ConnectUserId + ":" + p.Skin + ":" + p.Badge + "~";
                }
                else
                {
                    users += p.Name + ":" + p.ConnectUserId + ":" + p.Skin + ":" + p.Badge + "~";
                }
            }
            RoomData["Users"] = users;
            RoomData.Save();
            Broadcast("UserLeft", player.ConnectUserId, this.PlayerCount, users, offers);

        }

        private void joinrequest(string hisID, Player player)
        {

            foreach (Player p in Players)
            {
                if (hisID == p.ConnectUserId)
                {

                    if (p.myTrader != "0" && p.Busy != "0")
                    {
                        player.Send("tooslow");
                    }
                    else
                    {
                        p.Busy = "1";
                        p.myTrader = player.ConnectUserId;
                        player.myTrader = p.ConnectUserId;
                        p.Send("gotpartner", player.Name);
                        updateRoomOffers(player);
                    }

                }
               
            }

        }
        private void partnerreject(Player player)
        {
         
            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                     p.Send("rejected");
                     p.myTrader = "0";
                    
                   

                }

            }
            player.Busy = "0";
            player.myTrader = "0";
            updateRoomOffers(player);

        }

        private void trade_accept(string items, string itemk,Player player)
        {

            //Console.WriteLine("trader = " + player.myTrader);
            
            string[] bitems = items.Split(',');
           // List<string> bitems = new List<string>(items.Split(','));

            int howmany = 1;
            foreach (string item in bitems)
            {
                if (item != "")
                {
                    Console.WriteLine("howmany = " + howmany);
                    howmany = howmany + 1;
                }
                Console.WriteLine("howmany = " + howmany);
            }
           
        //public string sitem = "nothing";
     // VAULT1 = tip ki da stvari
            //VAULTS = tip ki prodaja stvar
       // public List<string> bitems = new List<string>();

        //public void Trade(Player tseller, Player tbuyer, string item, List<string> items, GameCode room)
        
             foreach (Player p in Players)
            {
                if (!users.Contains(player.myTrader))
                {
                    player.Send("alert1", "Trade error!");
                
                }
            if (player.myTrader == p.ConnectUserId)
                {
                    
                    Console.WriteLine("trader = " + player.myTrader + p.myTrader);
                    


                    
                    Console.WriteLine("partner found");
                  PayVault vaults = player.PayVault;
                 PayVault vault1 = p.PayVault;

            vaults.Refresh(null);
            vault1.Refresh(null);

            if (vaults.Has(itemk))
            {
                foreach (string itemm in bitems)
                {
                    Console.WriteLine("he got it");
                    if (itemm != "")
                    {
                        if (!vault1.Has(itemm)) { p.Send("alert1", "Trade error!"); player.Send("alert1", "Trade error!"); return; }
                    }
                }
                vaults.Consume(new VaultItem[] { vaults.First(itemk) }, delegate() { Console.WriteLine("he lost 1" + itemk); vault1.Give(new BuyItemInfo[] { new BuyItemInfo(itemk) }, delegate() { Console.WriteLine("he got " + itemk); }); });
              
                int done = 1;
              
                foreach (string ti in bitems)
                {
                    if (ti != "")
                    {
                        string mi = ti;
                        Console.WriteLine("im at d end" + ti);


                        vault1.Consume(new VaultItem[] { vault1.First(ti) }, delegate()
                        {
                            
                            Console.WriteLine("he lost " + ti); Console.WriteLine("done = " + done); vaults.Give(new BuyItemInfo[] { new BuyItemInfo(mi) }, delegate()
                            {
                                done = done + 1;
                                Console.WriteLine("he got " + mi); 
                                Console.WriteLine("howmany = " + howmany);
                                Console.WriteLine("done = " + done);

                                if (done == howmany)
                                {
                                    tradeDone(player);

                                }
                               
                               
                            });
                           
                           
                        });
                        
                       

                    }

                   
                }
                if (done == howmany)
                {
                    tradeDone(player);

                }
                
            }
            else
            {
                p.Send("alert1", "Trade error!"); player.Send("alert1", "Trade error!");
            }
        }
        }
            
        }


        private void tradeDone(Player player)
        {
            foreach (Player p in Players)
            {

                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("trade_done");
                    player.Send("trade_done");
                    player.OfferItem = "nooffer";
                    player.Busy = "0";
                    player.myTrader = "0";
                    p.OfferItem = "nooffer";
                    p.Busy = "0";
                    p.myTrader = "0";
                    
                   
                    Console.WriteLine("trader = " + player.myTrader + p.myTrader);
                    updateRoomOffers(player);
                }
            }
        }





        private void trade_lock(Player player)
        {

            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("trade_locked");
                 



                }

            }

           


        }

        
        private void leave_offer(Player player)
        {

            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                    p.Send("partner_left");
                    p.myTrader = "0";
                    p.Busy = "0";
                    updateRoomOffers(p);



                }

            }
           
            player.myTrader = "0";
            

        }
        private void itemupdate(int itemnum,string item, Player player)
        {

            foreach (Player p in Players)
            {
                if (player.myTrader == p.ConnectUserId)
                {
                   
                    p.Send("changeitem", itemnum,item);

                }

            }

        }
        private void banhim(string player)
        {

            foreach (Player p in Players)
            {
                if (p.ConnectUserId == player)
                {
                    PlayerIO.BigDB.LoadOrCreate("Bans", p.ConnectUserId, delegate(DatabaseObject db)
                    {
                        if (db.Contains("banned"))
                        {
                            p.Send("alert1", "BANNED");
                            p.Disconnect();
                            return;

                        }
                        else
                        {
                            
                            db.Set("banned", "yes");
                            db.Save();
                            p.Send("alert1", "BANNED");
                            p.Disconnect();
                        }

                       





                    }
                  );



                }


            }

           

        }
        private void updateRoomData(Player player)
        {
            ScheduleCallback(delegate() {
                PlayerIO.BigDB.LoadOrCreate("Bans", player.ConnectUserId, delegate(DatabaseObject db)
                {  
                  if (db.Contains("banned"))
                        {
                            player.Send("alert1", "BANNED");
                            player.Disconnect();
                            return;
                        }
                        else
                        {
                            PlayerIO.BigDB.DeleteKeys("Bans", player.ConnectUserId, null);
                        }
                      
                    

                    

                }
                    );
                PayVault vault = player.PayVault;

                vault.Refresh(null);
				if (!vault.Has("Teamskin") && player.Skin == "Teamskin")
                {
                    player.Send("disconnected", player.ConnectUserId);
                    player.Disconnect();
                }
                if (!vault.Has("vip") && player.Skin == "vip")
                {
                    player.Send("disconnected", player.ConnectUserId);
                    player.Disconnect();
                }
				if (!vault.Has("Teamskin") && player.Badge == "mod")
                {
                    player.Send("disconnected", player.ConnectUserId);
                    player.Disconnect();
                }
				if (!vault.Has("Teamskin") && player.Badge == "admin")
                {
                    player.Send("disconnected", player.ConnectUserId);
                    player.Disconnect();
                }
				if (!vault.Has("Teamskin") && player.Skin == "matrixskin")
                {
                    player.Send("disconnected", player.ConnectUserId);
                    player.Disconnect();
                }
            
            
            
            }, 1000);
                   
          
           if (users.Contains(player.ConnectUserId))
            {
player.Send("disconnected", player.ConnectUserId);
               player.Disconnect();
}
            else
            {
                users = "";

                foreach (Player p in Players)
                {
                    if (p.Skin == "hordeskin")
                    {


                        users += "<font color='#ff0000'>" + p.Name + "</font>" + ":" + p.ConnectUserId + ":" + p.Skin + ":" + p.Badge + "~";
                    }
                    else
                    {
                        users += p.Name + ":" + p.ConnectUserId + ":" + p.Skin + ":" + p.Badge + "~";
                    }
                }
                RoomData["Users"] = users;
                RoomData.Save();
                Broadcast("UserJoined", player.ConnectUserId, this.PlayerCount, users);

            }
        }
        private void updateRoomOffers(Player player)
        {



          
            {
                offers = "";

                foreach (Player p in Players)
                {
                    if (p.OfferItem != "nooffer")
                    {
                        offers += p.Name + ":" + p.ConnectUserId + ":" + p.OfferItem + ":" + p.Busy + "~";
                    }
                }
                RoomData["Offers"] = offers;
                RoomData.Save();
                Broadcast("UpdateOffers", player.ConnectUserId, this.PlayerCount, offers);

            }
        }
        public void searchplayer(string tosearch, Player player){
             foreach (Player p in Players)
                {
                    if (p.Name.Contains(tosearch))
                    {
                        player.Send("DevConsole", p.Name + " " + p.ConnectUserId);
                      
                    }
                }

         

        }

		// This method is called when a player sends a message into the server code
        public override void GotMessage(Player player, Message message)
        {
            PayVault vault = player.PayVault;

            vault.Refresh(null);
           

            switch (message.Type)
            {

                // This is how you would set a players name when they send in their name in a 
                // "MyNameIs" message
                case "checkme":

 
                    break;
                case "trade_item_update":
                    itemupdate(message.GetInt(0),message.GetString(1), player);
                     break;
                case "trade_accept":
                    foreach (Player p in Players)
                    {
                        if (player.myTrader == p.ConnectUserId)
                        {
                            p.Send("waiting_deal");
                        }
                    }
                    trade_accept(message.GetString(0),message.GetString(1), player);
                    
                    break;
                case "trade_lock":
                    trade_lock(player);

                    break;
                case "leave_offer":
                    leave_offer(player);
                    break;
                case "rejectpartner":
                    partnerreject(player);
                    break;
                case "MyNameIs":

                    player.Name = message.GetString(0);
                    break;
                case "getin":
                    joinrequest(message.GetString(0), player);
                   
                    break;
                case "ChangeOffer":

                    player.OfferItem = message.GetString(0);
                    updateRoomOffers(player);

                    break;

			
			case "seeinfo":
				PlayerIO.BigDB.LoadOrCreate("PlayerObjects",message.GetString(0), delegate(DatabaseObject playerobject)
					{
						
							{
							var pdiamond = playerobject.GetInt("diamond", 0);
								var head = playerobject.GetString("hat");
								var eyes = playerobject.GetString("glasses");
								var mouth = playerobject.GetString("mouth");
								var hands = playerobject.GetString("hands");
								var foot = playerobject.GetString("shoes");
							    var body = playerobject.GetString("body");
							    var Name599 = playerobject.GetString("Name");
							player.Send("Opennigga", pdiamond, message.GetString(0), head, eyes, mouth, hands, foot, body,Name599);
							};
					});
				break;

                case "DevConsole":
                    vault.Refresh(null);
				if (vault.Has("Teamskin"))
                    {

                        if (message.GetString(0).Contains("give"))
                        {
                            string together = message.GetString(0);
						if (together.Split(' ')[2] == "Teamskin")
                            {
                                player.Send("DevConsole", "This item is restricted!");

                            }
                            else
                            {

                                int repeat = Int32.Parse(together.Split(' ')[3]);
                                foreach (Player p in Players)
                                {
                                    if (p.ConnectUserId == together.Split(' ')[1])
                                    {
                                        PayVault vault1 = p.PayVault;

                                        vault1.Refresh(null);
                                        for (int i = 0; i < repeat; i++)
                                        {
                                            vault1.Give(new BuyItemInfo[] { new BuyItemInfo(together.Split(' ')[2]), }, null);
                                        }
                                        player.Send("DevConsole", "Gave " + together.Split(' ')[1] + " " + repeat + " " + together.Split(' ')[2]);

                                    }
                                }


                            }
                        }
                        if (message.GetString(0).Contains("removeall"))
                        {
                            string timestoremove = message.GetString(0).Split(' ')[2];
						string[] arr1 = new string[] { "vippass", "vip", "Teamskin", "santahat", "bunny", "partyhat", "santabeard",  "cap", "helmet", "raker", "ouch", "groovy", "headache", "chopperhat", "crown", "trollface", "lolface", "afro", "anon", "greenpunk", "bluepunk", "pinkpunk", "redpunk", "beercap", "playahat", "stylercap", "sailorhat", "reggae", "romanhat", "boxhead", "soldierhat", "jokerhat", "sombrero", "fez", "fuuu", "foreveralone", "cerealguy", "fuckyeah", "vikings", "darthvader", "wizard", "partyhat", "cooliehat", "firechiefhat", "santahat", "moneycap", "bunny", "millionairehat", "ghostcap", "brocap", "biker", "inspectorhat", "gang", "annoying", "lawl", "mustache", "hahaha", "rage", "secretgang", "bleh", "gasmask", "zombiemouth", "santabeard", "hardcore", "pussy", "lol", "vip", "diamond", "stickrun", "Teamskin", "rainbow", "onemil", "gold", "blue", "hordeskin", "runnershoes", "jumpershoes", "swiftshoes", "diamondshoes", "emeraldshoes", "gunman", "boxinggloves", "kniferunner", "zombieclaws", "millionairecase", "inspectorhand", "lollipop", "citybg", "industrybg", "bluecitybg", "cool", "freaky", "nerd", "omg", "rogerthat", "cute", "angry", "deatheyes", "crazy", "zombieeyes", "santaglasses", "millionaireglasses", "mangaeyes", "inspectorglass" };
                            foreach (Player p in Players)
                            {
                                if (p.ConnectUserId == message.GetString(0).Split(' ')[1])
                                {
                                    PayVault vault1 = p.PayVault;

                                    vault1.Refresh(null);
                                    foreach (var item in vault1.Items)
                                    {
                                        vault1.Consume(new VaultItem[] { item }, delegate()
                                        {
                                            //Boost the player's car
                                        });
                                       
                                    }
                                    player.Send("DevConsole", "Rewiped " + message.GetString(0).Split(' ')[1]);

                                    foreach (string i in arr1)
                                    {

                                    }

                                }

                            }
                           


                        }
                        if (message.GetString(0).Contains("addgoods"))
                        {
                            string timestoremove = message.GetString(0).Split(' ')[2];
                            string[] arr1 = new string[] {   "crown", "trollface", "lolface", "afro", "anon",  "beercap", "playahat", "romanhat", "boxhead", "soldierhat", "jokerhat", "fuuu", "foreveralone", "cerealguy", "fuckyeah", "vikings", "darthvader", "wizard", "partyhat", "cooliehat", "firechiefhat", "santahat", "moneycap", "bunny", "millionairehat", "ghostcap", "brocap",  "inspectorhat",  "gasmask", "zombiemouth", "santabeard",  "diamond", "stickrun",  "rainbow",  "diamondshoes", "gunman", "boxinggloves", "kniferunner", "zombieclaws", "millionairecase", "inspectorhand", "bluecitybg", "deatheyes", "crazy", "zombieeyes", "santaglasses", "millionaireglasses", "mangaeyes", "inspectorglass" };
                            
                                    PayVault vault1 = player.PayVault;

                                    vault1.Refresh(null);

                             int repeat = Int32.Parse(message.GetString(0).Split(' ')[2]);
                                foreach (Player p in Players)
                                {
                                    if (p.ConnectUserId == message.GetString(0).Split(' ')[1])
                                    {
                                          PayVault vaultss = p.PayVault;

                                        vaultss.Refresh(null);
                                    foreach (string itemcek in arr1)
                                       
                                        for (int i = 0; i < repeat; i++)
                                        {
                                            vault1.Give(new BuyItemInfo[] { new BuyItemInfo(itemcek), }, null);
                                        }
                                        player.Send("DevConsole", "Done");
                                      
                                    {

                                    }

                                    }

                                }
                                      
                                     
                                       
                                    

                                 

                             

                          



                        }
                        if (message.GetString(0).Contains("remove"))
                        {
                            string together2 = message.GetString(0);
						if (together2.Split(' ')[2] == "Teamskin")
                            {
                                player.Send("DevConsole", "This item is restricted!");

                            }
                            else
                            {
                                var list1 = new List<VaultItem>();
                                if (together2.Split(' ')[1] == "my")
                                {
                                    foreach (var item in vault.Items)
                                    {
                                        if (item.ItemKey == together2.Split(' ')[2])
                                        {
                                            list1.Add(item);
                                            if (list1.Count == Int32.Parse(together2.Split(' ')[3]))
                                            {
                                                break;
                                            }
                                        }
                                        player.Send("DevConsole", "Removed " + "my" + " " + together2.Split(' ')[3] + " " + together2.Split(' ')[2]);
                                    }

                                    vault.Consume(list1.ToArray(), null);
                                }
                                else
                                {
                                    foreach (Player p in Players)
                                    {
                                        if (p.ConnectUserId == together2.Split(' ')[1])
                                        {
                                            PayVault vault1 = p.PayVault;

                                            vault1.Refresh(null);
                                            foreach (var item in vault1.Items)
                                            {
                                                if (item.ItemKey == together2.Split(' ')[2])
                                                {
                                                    list1.Add(item);
                                                    if (list1.Count == Int32.Parse(together2.Split(' ')[3]))
                                                    {
                                                        break;
                                                    }
                                                }

                                            }

                                            vault1.Consume(list1.ToArray(), null);
                                            player.Send("DevConsole", "Removed " + together2.Split(' ')[1] + " " + together2.Split(' ')[3] + " " + together2.Split(' ')[2]);


                                        }

                                    }




                                }
                            }
                        }
                        if (message.GetString(0).Contains("add"))
                        {
                            string together = message.GetString(0);
                            int repeat = Int32.Parse(together.Split(' ')[2]);
                            for (int i = 0; i < repeat; i++)
                            {
                                vault.Give(new BuyItemInfo[] { new BuyItemInfo(together.Split(' ')[1]), }, null);
                            }
                            player.Send("DevConsole", "Added " + repeat + " " + together.Split(' ')[1]);

                        }
                        if (message.GetString(0).Contains("nameset"))
                        {
                            player.Name = message.GetString(0).Replace("nameset ", "");
                            player.Send("DevConsole", "Done");
                            updateRoomData1(player);
                        }
                        if (message.GetString(0).Contains("ban"))
                        {

                            banhim(message.GetString(0).Split(' ')[1]);
                        }
                        if (message.GetString(0).Contains("realamen")){
                        
                             player.Name = "";
                             updateRoomData1(player);
                            string thename = message.GetString(0).Replace("realamen ", "");
                            int howmany = 1;
                            int thedid = 0;

                            foreach (char b in thename)
                            {
                                howmany = howmany + 1;
                                thedid = thedid + 1;
                            }
                               
                                     ScheduleCallback(delegate()
                            {

                                char c = thename[thedid];
                                thedid = thedid - 1;
                                player.Name = player.Name + c;
                                updateRoomData1(player);

                            }, 2000);

                                    


                                
                             
                           
                           
                           
                            
                            player.Send("DevConsole", "Done");
                            
                        }
                        if (message.GetString(0).Contains("setname"))
                        {
                           
                           
                        
                            string tosearch = message.GetString(0).Split('.')[1];
                            foreach (Player p in Players)
                            {
                                if (p.ConnectUserId == tosearch)
                                {
                                    p.Name = message.GetString(0).Split('.')[2];
                                   
                                    updateRoomData1(player);
                                     player.Send("DevConsole", "Done");
                                }

                            }
                          
                        }
                        if (message.GetString(0).Contains("msg"))
                        {
                            string msg = message.GetString(0).Replace("msg ", "");
                            player.Send("DevConsole", "Done");
                            Broadcast("alert1", msg);
                           

                            updateRoomData1(player);
                        }
                        if (message.GetString(0).Contains("badge"))
                        {
                            player.Badge = message.GetString(0).Split(' ')[1];
                            player.Send("DevConsole", "Done");
                            updateRoomData1(player);
                        }

                        if (message.GetString(0).Contains("search"))
                        {
                            string tosearch = message.GetString(0).Split(' ')[1];
                            searchplayer(tosearch,player);
                           
                        }
                        if (message.GetString(0).Contains("kick"))
                        {
                            string tosearch = message.GetString(0).Split(' ')[1];
                            foreach (Player p in Players)
                            {
                                if (p.ConnectUserId == tosearch)
                                {
                                    p.Disconnect();
                                    p.Send("disconnected", player.ConnectUserId);
                                }

                            }
                           

                        }
                        if (message.GetString(0).Contains("set team"))
                        {
                            player.Status = "team";
                            player.Send("DevConsole", "Done");
                            updateRoomData1(player);
                        }
                        if (message.GetString(0).Contains("set normal"))
                        {
                            player.Status = "normal";
                            player.Send("DevConsole", "Done");

                            updateRoomData1(player);
                        }
                    }
                    else
                    {
                        player.Send("DevConsole", "Wrong psw");

                    }
                    break;

                case "BroadcastMessage":


                    if (!player.canChat) { return; }

                    ScheduleCallback(delegate() { player.canChat = true; }, 3000);
                    if (player.canChat == true)
                    {

					if (vault.Has("Teamskin") && player.Status != "normal")
                    {
                       
                    
                            Broadcast("BroadcastMessage", "<font color='" + player.skincolor + "'>" + player.Name + ": " + "<font color='#00ffff'>" + message.GetString(0) + "</font>");
                            //player.canChat = false;
                        }
                         else if (vault.Has("hordeskin") && player.Skin == "hordeskin")
                         {


                             Broadcast("BroadcastMessage", "<font color='#454545'>" + player.Name + ": " + "<font color='#ff0000'>" + message.GetString(0) + "</font>");
                             player.canChat = false;
                         }
                         else if (vault.Has("vippass") && player.Status != "normal")
                         {


                             Broadcast("BroadcastMessage", "<font color='" + player.skincolor + "'>" + player.Name + ": " + "<font color='#FFFF00'>" + message.GetString(0) + "</font>");
                             //player.canChat = false;
                         }
					else if (!vault.Has("Teamskin") && message.GetString(0).Contains("<"))
                         {
                          
                             player.canChat = false;
                         }
                         else
                         {
                             Broadcast("BroadcastMessage", "<font color='" + player.skincolor + "'>" + player.Name + ": " + "<font color='#ffffff'>" + message.GetString(0) + "</font>");
                             player.canChat = false;
                         }
                    }
                    break;

               
            }
        }

		Point debugPoint;

		// This method get's called whenever you trigger it by calling the RefreshDebugView() method.
		public override System.Drawing.Image GenerateDebugImage() {
			// we'll just draw 400 by 400 pixels image with the current time, but you can
			// use this to visualize just about anything.
			var image = new Bitmap(400,400);
			using(var g = Graphics.FromImage(image)) {
				// fill the background
				g.FillRectangle(Brushes.Blue, 0, 0, image.Width, image.Height);

				// draw the current time
				g.DrawString(DateTime.Now.ToString(), new Font("Verdana",20F),Brushes.Orange, 10,10);

				// draw a dot based on the DebugPoint variable
				g.FillRectangle(Brushes.Red, debugPoint.X,debugPoint.Y,5,5);
			}
			return image;
		}

		// During development, it's very usefull to be able to cause certain events
		// to occur in your serverside code. If you create a public method with no
		// arguments and add a [DebugAction] attribute like we've down below, a button
		// will be added to the development server. 
		// Whenever you click the button, your code will run.
		[DebugAction("Play", DebugAction.Icon.Play)]
		public void PlayNow() {
			Console.WriteLine("The play button was clicked!");
		}

		// If you use the [DebugAction] attribute on a method with
		// two int arguments, the action will be triggered via the
		// debug view when you click the debug view on a running game.
		[DebugAction("Set Debug Point", DebugAction.Icon.Green)]
		public void SetDebugPoint (int x, int y)
		{
			debugPoint = new Point (x, y);
		}

	}
		[RoomType("MenuSERVER")]
		public class GameCode1 : Game<Player>
		{
			// This method is called when an instance of your the game is created
			public override void GameStarted()
			{
				// anything you write to the Console will show up in the 
				// output window of the development server
				Console.WriteLine("Game is started: " + RoomId);

				// This is how you setup a timer
				AddTimer(delegate
					{
						// code here will code every 100th millisecond (ten times a second)
					}, 100);

				// Debug Example:
				// Sometimes, it can be very usefull to have a graphical representation
				// of the state of your game.
				// An easy way to accomplish this is to setup a timer to update the
				// debug view every 250th second (4 times a second).
				AddTimer(delegate
					{
						// This will cause the GenerateDebugImage() method to be called
						// so you can draw a grapical version of the game state.
						RefreshDebugView();
					}, 250);
			}

			// This method is called when the last player leaves the room, and it's closed down.
			public override void GameClosed()
			{
				Console.WriteLine("RoomId: " + RoomId);
			}

			// This method is called whenever a player joins the game
			public override void UserJoined(Player player)
			{
				
				player.Send("hello");
			}

			// This method is called when a player leaves the game
			public override void UserLeft(Player player)
			{
				
			}

			// This method is called when a player sends a message into the server code
			public override void GotMessage(Player player, Message message)
			{
				PayVault vault = player.PayVault;vault.Refresh (null);
				switch (message.Type)
				{

				// This is how you would set a players name when they send in their name in a 
				// "MyNameIs" message
				case "MyNameIs":
					player.Name = message.GetString(0);
					break;
				case "HandlePlayer":
					Broadcast("Menu", message.GetString(0));
					break;
				case "letssee":
					vault.Refresh (null);
					if (vault.Has (message.GetString(0))) {
						player.Send("ihaveit", "lol");
					}
					break;
			case "completeScratch":
				vault.Refresh (null);
				vault.Give(new BuyItemInfo[] { new BuyItemInfo(message.GetString(0)), }, () => Console.WriteLine(message.GetString(0)));
		
				//vault.Give (message.GetString(0)); 
					player.Send("alert1", "You won a "+message.GetString(0));


					//(params BuyItemInfo[] items)

				break;
			case "DR":

				PlayerIO.BigDB.LoadOrCreate("Rewards",message.GetString(1), delegate(DatabaseObject db555)
					{
						
						if (db555.Contains("time"))
						{
							db555.Set("time", message.GetInt(0));
							db555.Save();
							player.Send("alert1", "check2");
							if(db555.GetInt("time")> db555.GetInt("timet")-1){
								//
//								var names = new List<string> { "image1.png", "image2.png", "image3.png", "image4.png", "image5.png" };
//
//								int index = random.Next(names.Count);
//								var name = names[index];
//								names.RemoveAt(index);
//								return name;



								string[] slot = { "redhat", "blackhat", "brownhat", "hoodhat", "crazyscihat", "snaphat", "chickhat", "monkhat", "hockeyhat", "greenpunk", "gifthat", "generalhat", "astronuthat", "chemistryhat", "kitchenhat", "wizardhat", "winterhat", "robberhat", "somberohat", "piratehat", "narutohat", "russiahat", "ninjaturtlehat", "imbatmanhat", "luishat" };
								Random random = new Random();
								int d1 = random.Next(0, slot.Length);
								var nhame = slot[d1];
								player.Send("DailyScratch", nhame);
								player.Send("alert1", "check1");
							db555.Set("timet",db555.GetInt("time")+1);
							db555.Save();
//							db555.Set("id", player.ConnectUserId);
//							db555.Set("timetest",message.GetString(0));
								//							db555.Save();
							}
							else 

							{player.Send("alert1", "check3");}

						}
						else
						{
							player.Send("alert1", "check4");
							db555.Set("time", message.GetInt(0));
							db555.Set("timet",message.GetInt(0)+1);
							db555.Save();


						}

					}
				);


				break;
				}
			}

		}
	}

