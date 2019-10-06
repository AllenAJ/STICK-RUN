package com.facebook.graph.data
{
    import com.adobe.serialization.json.*;

    public class FQLMultiQuery extends Object
    {
        public var queries:Object;

        public function FQLMultiQuery()
        {
            this.queries = {};
            return;
        }// end function

        public function add(param1:String, param2:String, param3:Object = null) : void
        {
            var _loc_4:* = null;
            if (this.queries.hasOwnProperty(param2))
            {
                throw new Error("Query name already exists, there cannot be duplicate names");
            }
            for (_loc_4 in param3)
            {
                
                param1 = param1.replace(new RegExp("\\{" + _loc_4 + "\\}", "g"), _loc_6[_loc_4]);
            }
            this.queries[param2] = param1;
            return;
        }// end function

        public function toString() : String
        {
            return JSON.encode(this.queries);
        }// end function

    }
}
