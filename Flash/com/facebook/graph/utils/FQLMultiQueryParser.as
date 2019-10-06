package com.facebook.graph.utils
{
    import com.facebook.graph.utils.*;

    public class FQLMultiQueryParser extends Object implements IResultParser
    {

        public function FQLMultiQueryParser()
        {
            return;
        }// end function

        public function parse(param1:Object) : Object
        {
            var _loc_3:* = null;
            var _loc_2:* = {};
            for (_loc_3 in param1)
            {
                
                _loc_2[_loc_5[_loc_3].name] = _loc_5[_loc_3].fql_result_set;
            }
            return _loc_2;
        }// end function

    }
}
