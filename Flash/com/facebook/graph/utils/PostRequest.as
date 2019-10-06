package com.facebook.graph.utils
{
    import flash.utils.*;

    public class PostRequest extends Object
    {
        public var boundary:String = "-----";
        protected var postData:ByteArray;

        public function PostRequest()
        {
            this.createPostData();
            return;
        }// end function

        public function createPostData() : void
        {
            this.postData = new ByteArray();
            this.postData.endian = Endian.BIG_ENDIAN;
            return;
        }// end function

        public function writePostData(param1:String, param2:String) : void
        {
            var _loc_3:* = null;
            this.writeBoundary();
            this.writeLineBreak();
            _loc_3 = "Content-Disposition: form-data; name=\"" + param1 + "\"";
            var _loc_4:* = _loc_3.length;
            var _loc_5:* = 0;
            while (_loc_5 < _loc_4)
            {
                
                this.postData.writeByte(_loc_3.charCodeAt(_loc_5));
                _loc_5 = _loc_5 + 1;
            }
            this.writeLineBreak();
            this.writeLineBreak();
            this.postData.writeUTFBytes(param2);
            this.writeLineBreak();
            return;
        }// end function

        public function writeFileData(param1:String, param2:ByteArray, param3:String) : void
        {
            var _loc_4:* = null;
            var _loc_5:* = 0;
            var _loc_6:* = 0;
            this.writeBoundary();
            this.writeLineBreak();
            _loc_4 = "Content-Disposition: form-data; name=\"" + param1 + "\"; filename=\"" + param1 + "\";";
            _loc_5 = _loc_4.length;
            _loc_6 = 0;
            while (_loc_6 < _loc_5)
            {
                
                this.postData.writeByte(_loc_4.charCodeAt(_loc_6));
                _loc_6 = _loc_6 + 1;
            }
            this.postData.writeUTFBytes(param1);
            this.writeQuotationMark();
            this.writeLineBreak();
            _loc_4 = param3 || "application/octet-stream";
            _loc_5 = _loc_4.length;
            _loc_6 = 0;
            while (_loc_6 < _loc_5)
            {
                
                this.postData.writeByte(_loc_4.charCodeAt(_loc_6));
                _loc_6 = _loc_6 + 1;
            }
            this.writeLineBreak();
            this.writeLineBreak();
            param2.position = 0;
            this.postData.writeBytes(param2, 0, param2.length);
            this.writeLineBreak();
            return;
        }// end function

        public function getPostData() : ByteArray
        {
            this.postData.position = 0;
            return this.postData;
        }// end function

        public function close() : void
        {
            this.writeBoundary();
            this.writeDoubleDash();
            return;
        }// end function

        protected function writeLineBreak() : void
        {
            this.postData.writeShort(3338);
            return;
        }// end function

        protected function writeQuotationMark() : void
        {
            this.postData.writeByte(34);
            return;
        }// end function

        protected function writeDoubleDash() : void
        {
            this.postData.writeShort(11565);
            return;
        }// end function

        protected function writeBoundary() : void
        {
            this.writeDoubleDash();
            var _loc_1:* = this.boundary.length;
            var _loc_2:* = 0;
            while (_loc_2 < _loc_1)
            {
                
                this.postData.writeByte(this.boundary.charCodeAt(_loc_2));
                _loc_2 = _loc_2 + 1;
            }
            return;
        }// end function

    }
}
