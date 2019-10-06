package com.facebook.graph.data
{
    import com.facebook.graph.core.*;

    public class Batch extends Object
    {
        protected var _requests:Array;

        public function Batch()
        {
            this._requests = [];
            return;
        }// end function

        public function get requests() : Array
        {
            return this._requests;
        }// end function

        public function add(param1:String, param2:Function = null, param3 = null, param4:String = "GET") : void
        {
            if (this._requests.length == FacebookLimits.BATCH_REQUESTS)
            {
                throw new Error("Facebook limits you to " + FacebookLimits.BATCH_REQUESTS + " requests in a single batch.");
            }
            this._requests.push(new BatchItem(param1, param2, param3, param4));
            return;
        }// end function

    }
}
