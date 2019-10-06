package com.facebook.graph.net
{
    import com.adobe.images.*;
    import com.adobe.serialization.json.*;
    import com.facebook.graph.utils.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.utils.*;

    public class AbstractFacebookRequest extends Object
    {
        protected var urlLoader:URLLoader;
        protected var urlRequest:URLRequest;
        protected var _rawResult:String;
        protected var _data:Object;
        protected var _success:Boolean;
        protected var _url:String;
        protected var _requestMethod:String;
        protected var _callback:Function;

        public function AbstractFacebookRequest() : void
        {
            return;
        }// end function

        public function get rawResult() : String
        {
            return this._rawResult;
        }// end function

        public function get success() : Boolean
        {
            return this._success;
        }// end function

        public function get data() : Object
        {
            return this._data;
        }// end function

        public function callURL(param1:Function, param2:String = "", param3:String = null) : void
        {
            var _loc_4:* = null;
            this._callback = param1;
            this.urlRequest = new URLRequest(param2.length ? (param2) : (this._url));
            if (param3)
            {
                _loc_4 = new URLVariables();
                _loc_4.locale = param3;
                this.urlRequest.data = _loc_4;
            }
            this.loadURLLoader();
            return;
        }// end function

        public function set successCallback(param1:Function) : void
        {
            this._callback = param1;
            return;
        }// end function

        protected function isValueFile(param1:Object) : Boolean
        {
            return param1 is FileReference || param1 is Bitmap || param1 is BitmapData || param1 is ByteArray;
        }// end function

        protected function objectToURLVariables(param1:Object) : URLVariables
        {
            var _loc_3:* = null;
            var _loc_2:* = new URLVariables();
            if (param1 == null)
            {
                return _loc_2;
            }
            for (_loc_3 in param1)
            {
                
                _loc_2[_loc_3] = _loc_5[_loc_3];
            }
            return _loc_2;
        }// end function

        public function close() : void
        {
            if (this.urlLoader != null)
            {
                this.urlLoader.removeEventListener(Event.COMPLETE, this.handleURLLoaderComplete);
                this.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR, this.handleURLLoaderIOError);
                this.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, this.handleURLLoaderSecurityError);
                try
                {
                    this.urlLoader.close();
                }
                catch (e)
                {
                }
                this.urlLoader = null;
            }
            return;
        }// end function

        protected function loadURLLoader() : void
        {
            this.urlLoader = new URLLoader();
            this.urlLoader.addEventListener(Event.COMPLETE, this.handleURLLoaderComplete, false, 0, false);
            this.urlLoader.addEventListener(IOErrorEvent.IO_ERROR, this.handleURLLoaderIOError, false, 0, true);
            this.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.handleURLLoaderSecurityError, false, 0, true);
            this.urlLoader.load(this.urlRequest);
            return;
        }// end function

        protected function handleURLLoaderComplete(event:Event) : void
        {
            this.handleDataLoad(this.urlLoader.data);
            return;
        }// end function

        protected function handleDataLoad(param1:Object, param2:Boolean = true) : void
        {
            var result:* = param1;
            var dispatchCompleteEvent:* = param2;
            this._rawResult = result as String;
            this._success = true;
            try
            {
                this._data = JSON.decode(this._rawResult);
            }
            catch (e)
            {
                _data = _rawResult;
                _success = false;
            }
            this.handleDataReady();
            if (dispatchCompleteEvent)
            {
                this.dispatchComplete();
            }
            return;
        }// end function

        protected function handleDataReady() : void
        {
            return;
        }// end function

        protected function dispatchComplete() : void
        {
            if (this._callback != null)
            {
                this._callback(this);
            }
            this.close();
            return;
        }// end function

        protected function handleURLLoaderIOError(event:IOErrorEvent) : void
        {
            var event:* = event;
            this._success = false;
            this._rawResult = (event.target as URLLoader).data;
            if (this._rawResult != "")
            {
                try
                {
                    this._data = JSON.decode(this._rawResult);
                }
                catch (e)
                {
                    _data = {type:"Exception", message:_rawResult};
                }
            }
            else
            {
                this._data = event;
            }
            this.dispatchComplete();
            return;
        }// end function

        protected function handleURLLoaderSecurityError(event:SecurityErrorEvent) : void
        {
            var event:* = event;
            this._success = false;
            this._rawResult = (event.target as URLLoader).data;
            try
            {
                this._data = JSON.decode((event.target as URLLoader).data);
            }
            catch (e)
            {
                _data = event;
            }
            this.dispatchComplete();
            return;
        }// end function

        protected function extractFileData(param1:Object) : Object
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            if (param1 == null)
            {
                return null;
            }
            if (this.isValueFile(param1))
            {
                _loc_2 = param1;
            }
            else if (param1 != null)
            {
                for (_loc_3 in param1)
                {
                    
                    if (this.isValueFile(_loc_2[_loc_3]))
                    {
                        _loc_2 = _loc_2[_loc_3];
                        delete _loc_5[_loc_3];
                        break;
                    }
                }
            }
            return _loc_2;
        }// end function

        protected function createUploadFileRequest(param1:Object, param2:Object = null) : PostRequest
        {
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_3:* = new PostRequest();
            if (param2)
            {
                for (_loc_4 in param2)
                {
                    
                    _loc_3.writePostData(_loc_4, _loc_7[_loc_4]);
                }
            }
            if (param1 is Bitmap)
            {
                param1 = (param1 as Bitmap).bitmapData;
            }
            if (param1 is ByteArray)
            {
                _loc_3.writeFileData(_loc_7.fileName, param1 as ByteArray, _loc_7.contentType);
            }
            else if (param1 is BitmapData)
            {
                _loc_5 = PNGEncoder.encode(param1 as BitmapData);
                _loc_3.writeFileData(_loc_7.fileName, _loc_5, "image/png");
            }
            _loc_3.close();
            this.urlRequest.contentType = "multipart/form-data; boundary=" + _loc_3.boundary;
            return _loc_3;
        }// end function

        public function toString() : String
        {
            return this.urlRequest.url + (this.urlRequest.data == null ? ("") : ("?" + unescape(this.urlRequest.data.toString())));
        }// end function

    }
}
