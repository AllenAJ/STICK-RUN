package com.facebook.graph.data
{

    public class BatchItem extends Object
    {
        public var relativeURL:String;
        public var callback:Function;
        public var params:Object;
        public var requestMethod:String;

        public function BatchItem(param1:String, param2:Function = null, param3 = null, param4:String = "GET")
        {
            this.relativeURL = param1;
            this.callback = param2;
            this.params = param3;
            this.requestMethod = param4;
            return;
        }// end function

    }
}
