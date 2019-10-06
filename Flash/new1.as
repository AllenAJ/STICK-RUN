package 
{

	import flash.display.MovieClip;
	import flash.display.*;
	import flash.events.*;
	import flash.external.*;
	import flash.media.*;
	import flash.net.*;
	import flash.system.*;
	import flash.text.*;
	import flash.ui.*;
	import flash.utils.*;
	trace("MOVEMENT WORKS")
	import com.greensock.*;
	import com.freeactionscript.*;
	import com.greensock.*;
	import com.greensock.easing.*;
	dynamic public class new1 extends MovieClip
	{
		var leftKeyDown:Boolean = false;
		var upKeyDown:Boolean = false;
		var rightKeyDown:Boolean = false;
		var downKeyDown:Boolean = false;
		var counter = 0;
		var mainSpeed:Number = 7;
		var score = 0;
		var showcount = 0;
		public function new1()
		{trace("MOVEMENT WORKS")

			{
				gameove.return_btn.addEventListener(MouseEvent.CLICK, returnbtn);
				function returnbtn(event:Event):void
				{
					score = 0;
					output.text = score;
					TweenLite.killTweensOf(mcMain, false);
					TweenLite.killTweensOf(enemyaj, false);
					upKeyDown = true;
					mainJumping = true;
					mcMain.removeEventListener(Event.ENTER_FRAME,moveChar);
					trace("lets go back nab");
					gotoAndStop(2);
				}
				trace("haha");
				mcMain.addEventListener(Event.ENTER_FRAME, moveChar);
				function moveChar(event:Event):void
				{
					if (leftKeyDown)
					{
						mcMain.x -=  mainSpeed;
						speedchecker.x -=  mainSpeed - 8;
						bg.x -=  mainSpeed - 8;
					}
					if (rightKeyDown)
					{
						mcMain.x +=  mainSpeed;trace("MOVEMENT WORKS")

						speedchecker.x +=  mainSpeed - 8;
						bg.x +=  mainSpeed - 8;
					}
					if (upKeyDown || mainJumping)
					{
						mainJump();


					}//trace("MOVEMENT WORKS")

				}
				var myboolean:Boolean = false;

				stage.addEventListener(KeyboardEvent.KEY_DOWN, checkKeysDown);
				function checkKeysDown(event:KeyboardEvent):void
				{
					if (event.keyCode == 37 || event.keyCode == 65)
					{
						leftKeyDown = true;
					}
					if (event.keyCode == 38 || event.keyCode == 87)
					{
						upKeyDown = true;
					}
					if (event.keyCode == 39 || event.keyCode == 68)
					{
						rightKeyDown = true;
					}
					if (event.keyCode == 40 || event.keyCode == 83)
					{
						downKeyDown = true;
					}
				}
				//this listener will listen for keys being released
				stage.addEventListener(KeyboardEvent.KEY_UP, checkKeysUp);
				function checkKeysUp(event:KeyboardEvent):void
				{
					//making the booleans false based on the keycode
					if (event.keyCode == 37 || event.keyCode == 65)
					{
						leftKeyDown = false;
					}
					if (event.keyCode == 38 || event.keyCode == 87)
					{
						upKeyDown = false;
					}
					if (event.keyCode == 39 || event.keyCode == 68)
					{
						rightKeyDown = false;
					}
					if (event.keyCode == 40 || event.keyCode == 83)
					{
						downKeyDown = false;
					}
				}
				var mainJumping:Boolean = false;
				var jumpSpeedLimit:int = 13;
				var jumpSpeed:Number = jumpSpeedLimit;



				function mainJump():void
				{
					//trace(mainJumping);
					if (! mainJumping)
					{
						mainJumping = true;
						trace(mainJumping);
						jumpSpeed = jumpSpeedLimit * -1;
						mcMain.y +=  jumpSpeed;
					}
					else
					{

						if (jumpSpeed < 0)
						{
							jumpSpeed *=  1 - jumpSpeedLimit / 90;
							if (jumpSpeed > -jumpSpeedLimit/5)
							{
								jumpSpeed *=  -1;
							}
						}
						if (jumpSpeed > 0 && jumpSpeed <= jumpSpeedLimit)
						{
							jumpSpeed *=  1 + jumpSpeedLimit / 50;
						}
						mcMain.y +=  jumpSpeed;

						if (mcMain.y >= stage.stageHeight - mcMain.height)
						{
							mainJumping = false;
							mcMain.y = stage.stageHeight - mcMain.height;
						}
					}

				}
				bg.addEventListener(Event.ENTER_FRAME, scoreCollision);
				addEventListener(Event.ENTER_FRAME, enemytypes123);
				function enemytypes123(e: Event)
				{
					TweenLite.to(enemyaj, 90, {x:-10000, y:337});
					// TweenLite.to(bird, 100, {x:-10000, y:360});
					if (score >= 250+Math.floor(Math.random()*160))
					{
						box.gotoAndStop(2);
						TweenLite.to(enemyaj, 50, {x:-10000, y:337});
					}
					//else
					if (score==500+Math.floor(Math.random()*160))
					{
						box.gotoAndStop(3);
						//.. trace("Enemy2")
					}

					//else
					if (score==750+Math.floor(Math.random()*160))
					{
						box.gotoAndStop(4);
						//box.enemy.gotoAndPlay(3);
						//  trace("Enemy4")
					}
					else if (score==950+Math.floor(Math.random()*160))
					{
						box.gotoAndStop(5);
					}// trace("Enemy5")
					//box.enemy.gotoAndPlay(3);
				}
			};
			addEventListener(Event.ENTER_FRAME, bug1fix);
			function bug1fix(e: Event)
			{
				if (score==5)
				{
					mainJump();
					// upKeyDown = true;
				}
				else
				{
					upKeyDown = false;
				}

			}

			function scoreCollision(e: Event)
			{
				if (bg.hitTestObject(mcMain))
				{

					score = score + 1;
					scores.text = score;
				}


				if (score>= 0)
				{
					score == 999999;
					output.text = "Score: " + score;
					gameove.output.text = "Score: " + score;
					gameove.xpoutput.text = "Xp: " + score / 2 + 3;
					//userme.xp =  userme.xp + 0.1;
					//userme.Name =  fbname;
					//userme.save();

				}

				if (score== 1000||score== 1500||score== 2000||score== 2100||score== 2200)
				{
					killer.gotoAndPlay(2);
				}
				if (mcMain.hitTestObject(base))
				{
					mcMain.y = mcMain.y - 0.9;
				}

				if (mcMain.hitTestObject(base1))
				{
					mcMain.x = mcMain.x + 10;
				}
				/*if (speedchecker.hitTestObject(basehot)) {
				          speedchecker.x = speedchecker.x+ 1;
				    }
				if (speedchecker.hitTestObject(basecool)) {
				          speedchecker.x = speedchecker.x- 1;
				    }*/
				if (enemyaj.hitTestObject(base1))
				{
					enemyaj.x = 575;
				}
				if (mcMain.hitTestObject(base2))
				{
					mcMain.x = mcMain.x - 10;

				}
				if (mcMain.hitTestObject(base12))
				{
					mcMain.x = mcMain.x + 10;

				}
				if (enemyaj.randomenemy.top2.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy1.top2.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy2.top2.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy3.top2.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy4.top2.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy5.top2.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy6.top2.hitTestObject(mcMain.deadbro) || killer.hitTestObject(mcMain.deadbro))
				{
					for (var counter = 0; counter<12; counter++)
					{
						//mainJumping = true;
						trace(mainJumping);

						jumpSpeedLimit = 13;
						var boom = new Boom();
						boom.x = mcMain.x + 20;
						boom.y = mcMain.y;
						mcMain.x = -1000;
						mcMain.visible = false;
						addChild(boom);
						gameove.x = 1;
						gameove.y = -0.10;

					}
				}
				if (enemyaj.randomenemy.coincollect.hitTestObject(mcMain) || enemyaj.randomenemy1.coincollect.hitTestObject(mcMain) || enemyaj.randomenemy2.coincollect.hitTestObject(mcMain) || enemyaj.randomenemy3.coincollect.hitTestObject(mcMain) || enemyaj.randomenemy4.coincollect.hitTestObject(mcMain) || enemyaj.randomenemy5.coincollect.hitTestObject(mcMain) || enemyaj.randomenemy6.coincollect.hitTestObject(mcMain))
				{
					//clients.payVault.credit(1, "Collected", null,  addCoinsFail);
					var nabcoin = 0;
					nabcoin=nabcoin+1
					;
				}
				//clients.payVault.credit(thecoins, "reward", null,  addCoinsFail);
				if (enemyaj.randomenemy.top22.hitTestObject(mcMain) || enemyaj.randomenemy1.top22.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy2.top22.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy3.top22.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy4.top22.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy5.top22.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy6.top22.hitTestObject(mcMain.deadbro))
				{
					for (var counter1 = 0; counter<12; counter++)
					{
						mainJumping = true;
						jumpSpeedLimit = 13;

						var boom1 = new Boom();
						boom.x = mcMain.x + 20;
						boom.y = mcMain.y;
						mcMain.x = -1000;

						mcMain.visible = false;
						addChild(boom);
						gameove.x = 1;
						gameove.y = -0.10;

					}
				}
				if (enemyaj.randomenemy.top222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy1.top222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy2.top222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy3.top222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy4.top222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy5.top222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy6.top222.hitTestObject(mcMain.deadbro))
				{
					for (var counter2 = 0; counter<12; counter++)
					{
						mainJumping = true;
						jumpSpeedLimit = 13;

						var boom2 = new Boom();
						boom.x = mcMain.x + 20;
						boom.y = mcMain.y;
						mcMain.x = -1000;

						mcMain.visible = false;
						addChild(boom);
						gameove.x = 1;
						gameove.y = -0.10;

					}
				}
				if (enemyaj.randomenemy.top2222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy1.top2222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy2.top2222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy3.top2222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy4.top2222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy5.top2222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy6.top2222.hitTestObject(mcMain.deadbro))
				{
					for (var counter3 = 0; counter<12; counter++)
					{
						mainJumping = true;
						jumpSpeedLimit = 13;

						var boom3 = new Boom();
						boom.x = mcMain.x + 20;
						boom.y = mcMain.y;
						mcMain.x = -1000;

						mcMain.visible = false;
						addChild(boom);

						gameove.x = 1;
						gameove.y = -0.10;

					}
				}
				if (enemyaj.randomenemy.top22222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy1.top22222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy2.top22222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy3.top22222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy4.top22222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy5.top22222.hitTestObject(mcMain.deadbro) || enemyaj.randomenemy6.top22222.hitTestObject(mcMain.deadbro))
				{
					for (var counter4 = 0; counter<12; counter++)
					{
						mainJumping = true;
						jumpSpeedLimit = 13;

						var boom4 = new Boom();
						boom.x = mcMain.x + 20;
						boom.y = mcMain.y;
						mcMain.x = -1000;

						mcMain.visible = false;
						addChild(boom);
						gameove.x = 1;
						gameove.y = -0.10;

					}
				}



				if (mcMain.jumpbro.hitTestObject(enemyaj.randomenemy.top1) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy1.top1) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy2.top1) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy3.top1) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy4.top1) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy5.top1) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy6.top1))
				{

					TweenLite.to(mcMain,0.50, { y:200});
					//mainJump();




				}
				if (mcMain.jumpbro.hitTestObject(enemyaj.randomenemy.top123) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy1.top123) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy2.top123) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy3.top123) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy4.top123) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy5.top123) || mcMain.jumpbro.hitTestObject(enemyaj.randomenemy6.top123))
				{

					TweenLite.to(mcMain,0.50, { y:200});
					// mainJump();



				}

				box.addEventListener(Event.ENTER_FRAME, testCollision);

				function testCollision(e: Event)
				{

					if (box.hitTestObject(mcMain))
					{
						mcMain.y = mcMain.y + 10000;
						mcMain.visible = false;
						removeEventListener(Event.ENTER_FRAME, scoreCollision);
					}
				}

			}
		}
	}

};