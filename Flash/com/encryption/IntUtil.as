package com.encryption
{

    public class IntUtil extends Object
    {
        private static var hexChars:String = "0123456789abcdef";

        public function IntUtil()
        {
            return;
        }// end function

        public static function rol(param1:int, param2:int) : int
        {
            return param1 << param2 | param1 >>> 32 - param2;
        }// end function

        public static function ror(param1:int, param2:int) : uint
        {
            var _loc_3:* = 32 - param2;
            return param1 << _loc_3 | param1 >>> 32 - _loc_3;
        }// end function

        public static function toHex(param1:int, param2:Boolean = false) : String
        {
            var _loc_3:* = 0;
            var _loc_4:* = 0;
            var _loc_5:* = "";
            if (param2)
            {
                _loc_3 = 0;
                while (_loc_3 < 4)
                {
                    
                    _loc_5 = _loc_5 + (hexChars.charAt(param1 >> (3 - _loc_3) * 8 + 4 & 15) + hexChars.charAt(param1 >> (3 - _loc_3) * 8 & 15));
                    _loc_3 = _loc_3 + 1;
                }
            }
            else
            {
                _loc_4 = 0;
                while (_loc_4 < 4)
                {
                    
                    _loc_5 = _loc_5 + (hexChars.charAt(param1 >> _loc_4 * 8 + 4 & 15) + hexChars.charAt(param1 >> _loc_4 * 8 & 15));
                    _loc_4 = _loc_4 + 1;
                }
            }
            return _loc_5;
        }// end function

    }
}
