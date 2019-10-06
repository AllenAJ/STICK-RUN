/**
 * Scrollbar
 * ---------------------
 * VERSION: 2.0
 * DATE: 5/04/2011
 * AS3
 * UPDATES AND DOCUMENTATION AT: http://www.FreeActionScript.com
 **/
package com.freeactionscript
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	
	public class Scrollbar extends Sprite
	{
		// scrollbar assets
		private var _content:MovieClip;
		private var _contentMask:MovieClip;
		private var _slider:MovieClip;
		private var _track:MovieClip;
		
		// vars
		private var _scrollSpeed:Number = .5; // seconds to movie to new position
		private var _scrollWheelSpeed:int = 10; // pixels per tick
		private var _root:Stage;
		
		/**
		 * Initialize method
		 * 
		 * @param	$content		Main content container
		 * @param	$contentMask	Content mask. Masking is set dynamically. Do not set mask on the timeline.
		 * @param	$track			The track of the scrollbar
		 * @param	$slider			The slider (dragger)
		 * @param	$scrollSpeed	The speed at which the content movies
		 */
		public function init($content:MovieClip, $contentMask:MovieClip, $track:MovieClip, $slider:MovieClip, $scrollSpeed:Number = .5):void 
		{
			// save passed objects and variables
			_content = $content;
			_contentMask = $contentMask;
			_slider = $slider;
			_track = $track;
			_scrollSpeed = $scrollSpeed;
			
			// give content a mask
			_content.mask = _contentMask;
			
			// save a reference to the stage
			_root = _slider.parent.stage;	
			
			// hide scrollbar assets for now
			_slider.visible = false;
			_track.visible = false;
			
			// enable scrollbar interactivity
			enable();
		}
		
		/**
		 * Enable Scrollbar interaction
		 */
		public function enable():void 
		{
			// make dragger a button
			_slider.buttonMode = true;
			
			// add event listeners
			_slider.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
			_root.addEventListener(MouseEvent.MOUSE_WHEEL, onMouseWheelHandler);
			_root.stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUpHandler);
			
			// check if scrollbar is needed
			verifyHeight();
		}
		
		/**
		 * Disable Scrollbar interaction
		 */
		public function disable():void 
		{
			// make dragger not a button
			_slider.buttonMode = false;
			
			// remove event listeners
			_slider.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseDownHandler);
			_root.removeEventListener(MouseEvent.MOUSE_WHEEL, onMouseWheelHandler);
			_root.removeEventListener(MouseEvent.MOUSE_UP, onMouseUpHandler);
		}
		
		/**
		 * On mouse wheel handler
		 * @param	$event	Takes MouseEvent argument
		 */
		private function onMouseWheelHandler($event:MouseEvent):void
		{
			// define parameters
			var scrollDistance:int = $event.delta;
			var minY:int = _track.y;
			var maxY:int = _track.height + _track.y - _slider.height;
			
			// check if there's room to scroll
			if ((scrollDistance > 0 && _slider.y <= maxY) ||
				(scrollDistance < 0 && _slider.y >= minY))
			{
				// move dragger
				_slider.y = _slider.y - (scrollDistance * _scrollWheelSpeed);
				
				// make sure we don't come out of our boundries
				if (_slider.y < minY)
				{
					_slider.y = minY;
				}
				else if (_slider.y > maxY)
				{
					_slider.y = maxY;
				}
				
				// move content
				updateContentPosition();
			}
		}
		
		/**
		 * On mouse down handler
		 * @param	$event	Takes MouseEvent argument
		 */
		private function onMouseDownHandler($event:MouseEvent):void
		{
			var newRect:Rectangle = new Rectangle(_track.x, _track.y,
												  0, _track.height - _slider.height);
			_slider.startDrag(false, newRect);
			_root.addEventListener(Event.ENTER_FRAME, updateContentPosition);
		}
		
		/**
		 * On mouse up handler
		 * @param	$event	Takes MouseEvent argument
		 */
		private function onMouseUpHandler($event:MouseEvent):void
		{
			_slider.stopDrag();
			
			if (_root != null)
			{
				_root.removeEventListener(Event.ENTER_FRAME, updateContentPosition);
			}
		}
		
		/**
		 * Update content position
		 * @param	$event	Takes optional Event argument
		 */
		private function updateContentPosition($event:Event = null):void
		{
			var _scrollPercent:Number =  100 / (_track.height - _slider.height)  * ( _slider.y - _track.y);
			var newContentY:Number = _contentMask.y + (_contentMask.height - _content.height) / 100 * _scrollPercent;
			TweenLite.to(_content, _scrollSpeed, {y:newContentY, ease:Cubic.easeOut});
		}
		
		/**
		 * Position Slider based on where the content is.
		 * Use this function if content is being moved by anything outside the scrollbar class
		 */
		public function updateSliderPosition():void
		{
			var contentPercent:Number = Math.abs((_content.y - _contentMask.y) / (_content.height - _contentMask.height) * 100);
			
			var newDraggerY:int = (contentPercent / 100 * (_track.height - _slider.height)) + _track.y;
			
			_slider.y = newDraggerY;
		}
		
		/**
		 * Check if scrollbar is necessary
		 */
		public function verifyHeight():void
		{
			if ( _contentMask.height >= _content.height )
			{
				_slider.visible = false;
				_track.visible = false;
			}
			else
			{
				_slider.visible = true;
				_track.visible = true;
			}
		}
		
		/**
		 * Garbage collection method
		 */
		public function destroy():void
		{
			// check if dragger is being dragged
			if (_root.hasEventListener(Event.ENTER_FRAME))
			{
				_slider.stopDrag();
				_root.removeEventListener(Event.ENTER_FRAME, updateContentPosition)
			}
			
			// disable interaction
			disable();
		}

	}
}