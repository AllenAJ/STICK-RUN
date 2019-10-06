package com.facebook.graph.net
{
    import com.adobe.images.*;
    import com.adobe.serialization.json.*;
    import com.facebook.graph.core.*;
    import com.facebook.graph.data.*;
    import com.facebook.graph.utils.*;
    import flash.display.*;
    import flash.net.*;
    import flash.utils.*;

    public class FacebookBatchRequest extends AbstractFacebookRequest
    {
        protected var _params:Object;
        protected var _relativeURL:String;
        protected var _fileData:Object;
        protected var _accessToken:String;
        protected var _batch:Batch;

        public function FacebookBatchRequest(param1:Batch, param2:Function = null)
        {
            this._batch = param1;
            _callback = param2;
            return;
        }// end function

        public function call(param1:String) : void
        {
            var _loc_8:* = null;
            var _loc_9:* = null;
            var _loc_10:* = null;
            var _loc_11:* = null;
            var _loc_12:* = null;
            this._accessToken = param1;
            urlRequest = new URLRequest(FacebookURLDefaults.GRAPH_URL);
            urlRequest.method = URLRequestMethod.POST;
            var _loc_2:* = [];
            var _loc_3:* = [];
            var _loc_4:* = false;
            var _loc_5:* = this._batch.requests;
            var _loc_6:* = _loc_5.length;
            var _loc_7:* = 0;
            while (_loc_7 < _loc_6)
            {
                
                _loc_8 = _loc_5[_loc_7];
                _loc_9 = this.extractFileData(_loc_8.params);
                _loc_10 = {method:_loc_8.requestMethod, relative_url:_loc_8.relativeURL};
                if (_loc_8.params)
                {
                    if (_loc_8.params["contentType"] != undefined)
                    {
                        _loc_10.contentType = _loc_8.params["contentType"];
                    }
                    _loc_11 = this.objectToURLVariables(_loc_8.params).toString();
                    if (_loc_8.requestMethod == URLRequestMethod.GET || _loc_8.requestMethod.toUpperCase() == "DELETE")
                    {
                        _loc_10.relative_url = _loc_10.relative_url + ("?" + _loc_11);
                    }
                    else
                    {
                        _loc_10.body = _loc_11;
                    }
                }
                _loc_2.push(_loc_10);
                if (_loc_9)
                {
                    _loc_3.push(_loc_9);
                    _loc_10.attached_files = _loc_8.params.fileName == null ? ("file" + _loc_7) : (_loc_8.params.fileName);
                    _loc_4 = true;
                }
                else
                {
                    _loc_3.push(null);
                }
                _loc_7 = _loc_7 + 1;
            }
            if (!_loc_4)
            {
                _loc_12 = new URLVariables();
                _loc_12.access_token = param1;
                _loc_12.batch = JSON.encode(_loc_2);
                urlRequest.data = _loc_12;
                loadURLLoader();
            }
            else
            {
                this.sendPostRequest(_loc_2, _loc_3);
            }
            return;
        }// end function

        protected function sendPostRequest(param1:Array, param2:Array) : void
        {
            var _loc_6:* = null;
            var _loc_7:* = null;
            var _loc_8:* = null;
            var _loc_3:* = new PostRequest();
            _loc_3.writePostData("access_token", this._accessToken);
            _loc_3.writePostData("batch", JSON.encode(param1));
            var _loc_4:* = param1.length;
            var _loc_5:* = 0;
            while (_loc_5 < _loc_4)
            {
                
                _loc_6 = param1[_loc_5];
                _loc_7 = param2[_loc_5];
                if (_loc_7)
                {
                    if (_loc_7 is Bitmap)
                    {
                        _loc_7 = (_loc_7 as Bitmap).bitmapData;
                    }
                    if (_loc_7 is ByteArray)
                    {
                        _loc_3.writeFileData(_loc_6.attached_files, _loc_7 as ByteArray, _loc_6.contentType);
                    }
                    else if (_loc_7 is BitmapData)
                    {
                        _loc_8 = PNGEncoder.encode(_loc_7 as BitmapData);
                        _loc_3.writeFileData(_loc_6.attached_files, _loc_8, "image/png");
                    }
                }
                _loc_5 = _loc_5 + 1;
            }
            _loc_3.close();
            urlRequest.contentType = "multipart/form-data; boundary=" + _loc_3.boundary;
            urlRequest.data = _loc_3.getPostData();
            loadURLLoader();
            return;
        }// end function

        override protected function handleDataReady() : void
        {
            var _loc_4:* = null;
            var _loc_1:* = _data as Array;
            var _loc_2:* = _loc_1.length;
            var _loc_3:* = 0;
            while (_loc_3 < _loc_2)
            {
                
                _loc_4 = JSON.decode(_data[_loc_3].body);
                _data[_loc_3].body = _loc_4;
                if ((this._batch.requests[_loc_3] as BatchItem).callback != null)
                {
                    (this._batch.requests[_loc_3] as BatchItem).callback(_data[_loc_3]);
                }
                _loc_3 = _loc_3 + 1;
            }
            return;
        }// end function

    }
}
