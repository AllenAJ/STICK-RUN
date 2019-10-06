package com.facebook.graph.data
{

    public class FacebookAuthResponse extends Object
    {
        public var uid:String;
        public var expireDate:Date;
        public var accessToken:String;
        public var signedRequest:String;

        public function FacebookAuthResponse()
        {
            return;
        }// end function

        public function fromJSON(param1:Object) : void
        {
            if (param1 != null)
            {
                this.expireDate = new Date();
                this.expireDate.setTime(this.expireDate.time + param1.expiresIn * 1000);
                this.accessToken = param1.access_token || param1.accessToken;
                this.signedRequest = param1.signedRequest;
                this.uid = param1.userID;
            }
            return;
        }// end function

        public function toString() : String
        {
            return "[userId:" + this.uid + "]";
        }// end function

    }
}
