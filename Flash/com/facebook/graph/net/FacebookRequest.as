package com.facebook.graph.net
{
    import flash.events.*;
    import flash.net.*;

    public class FacebookRequest extends AbstractFacebookRequest
    {
        protected var fileReference:FileReference;

        public function FacebookRequest() : void
        {
            return;
        }// end function

        public function call(param1:String, param2:String = "GET", param3:Function = null, param4 = null) : void
        {
            _url = param1;
            _requestMethod = param2;
            _callback = param3;
            var _loc_5:* = param1;
            urlRequest = new URLRequest(_loc_5);
            urlRequest.method = _requestMethod;
            if (param4 == null)
            {
                loadURLLoader();
                return;
            }
            var _loc_6:* = extractFileData(param4);
            if (extractFileData(param4) == null)
            {
                urlRequest.data = objectToURLVariables(param4);
                loadURLLoader();
                return;
            }
            if (_loc_6 is FileReference)
            {
                urlRequest.data = objectToURLVariables(param4);
                urlRequest.method = URLRequestMethod.POST;
                this.fileReference = _loc_6 as FileReference;
                this.fileReference.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, this.handleFileReferenceData, false, 0, true);
                this.fileReference.addEventListener(IOErrorEvent.IO_ERROR, this.handelFileReferenceError, false, 0, false);
                this.fileReference.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.handelFileReferenceError, false, 0, false);
                this.fileReference.upload(urlRequest);
                return;
            }
            urlRequest.data = createUploadFileRequest(_loc_6, param4).getPostData();
            urlRequest.method = URLRequestMethod.POST;
            loadURLLoader();
            return;
        }// end function

        override public function close() : void
        {
            super.close();
            if (this.fileReference != null)
            {
                this.fileReference.removeEventListener(DataEvent.UPLOAD_COMPLETE_DATA, this.handleFileReferenceData);
                this.fileReference.removeEventListener(IOErrorEvent.IO_ERROR, this.handelFileReferenceError);
                this.fileReference.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, this.handelFileReferenceError);
                try
                {
                    this.fileReference.cancel();
                }
                catch (e)
                {
                }
                this.fileReference = null;
            }
            return;
        }// end function

        protected function handleFileReferenceData(event:DataEvent) : void
        {
            handleDataLoad(event.data);
            return;
        }// end function

        protected function handelFileReferenceError(event:ErrorEvent) : void
        {
            _success = false;
            _data = event;
            dispatchComplete();
            return;
        }// end function

    }
}
