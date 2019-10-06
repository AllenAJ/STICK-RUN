package com.facebook.graph
{
    import com.adobe.serialization.json.*;
    import com.facebook.graph.core.*;
    import com.facebook.graph.data.*;
    import com.facebook.graph.net.*;
    import com.facebook.graph.utils.*;
    import flash.external.*;
    import flash.net.*;
    import flash.utils.*;

    public class Facebook extends AbstractFacebook
    {
        protected var jsCallbacks:Object;
        protected var openUICalls:Dictionary;
        protected var jsBridge:FacebookJSBridge;
        protected var applicationId:String;
        protected var _initCallback:Function;
        protected var _loginCallback:Function;
        protected var _logoutCallback:Function;
        static var _instance:Facebook;
        static var _canInit:Boolean = false;

        public function Facebook()
        {
            if (_canInit == false)
            {
                throw new Error("Facebook is an singleton and cannot be instantiated.");
            }
            this.jsBridge = new FacebookJSBridge();
            this.jsCallbacks = {};
            this.openUICalls = new Dictionary();
            return;
        }// end function

        protected function init(param1:String, param2:Function = null, param3:Object = null, param4:String = null) : void
        {
            ExternalInterface.addCallback("handleJsEvent", this.handleJSEvent);
            ExternalInterface.addCallback("authResponseChange", this.handleAuthResponseChange);
            ExternalInterface.addCallback("logout", this.handleLogout);
            ExternalInterface.addCallback("uiResponse", this.handleUI);
            this._initCallback = param2;
            this.applicationId = param1;
            this.oauth2 = true;
            if (param3 == null)
            {
                param3 = {};
            }
            param3.appId = param1;
            param3.oauth = true;
            ExternalInterface.call("FBAS.init", JSON.encode(param3));
            if (param4 != null)
            {
                authResponse = new FacebookAuthResponse();
                authResponse.accessToken = param4;
            }
            if (param3.status !== false)
            {
                this.getLoginStatus();
            }
            else if (this._initCallback != null)
            {
                this._initCallback(authResponse, null);
                this._initCallback = null;
            }
            return;
        }// end function

        protected function getLoginStatus() : void
        {
            ExternalInterface.call("FBAS.getLoginStatus");
            return;
        }// end function

        protected function callJS(param1:String, param2:Object) : void
        {
            ExternalInterface.call(param1, param2);
            return;
        }// end function

        protected function setCanvasSize(param1:Number, param2:Number) : void
        {
            ExternalInterface.call("FBAS.setCanvasSize", param1, param2);
            return;
        }// end function

        protected function setCanvasAutoResize(param1:Boolean = true, param2:uint = 100) : void
        {
            ExternalInterface.call("FBAS.setCanvasAutoResize", param1, param2);
            return;
        }// end function

        protected function login(param1:Function, param2:Object = null) : void
        {
            this._loginCallback = param1;
            ExternalInterface.call("FBAS.login", JSON.encode(param2));
            return;
        }// end function

        protected function logout(param1:Function) : void
        {
            this._logoutCallback = param1;
            ExternalInterface.call("FBAS.logout");
            return;
        }// end function

        protected function getAuthResponse() : FacebookAuthResponse
        {
            var authResponseObj:Object;
            var result:* = ExternalInterface.call("FBAS.getAuthResponse");
            try
            {
                authResponseObj = JSON.decode(result);
            }
            catch (e)
            {
                return null;
            }
            var a:* = new FacebookAuthResponse();
            a.fromJSON(authResponseObj);
            this.authResponse = a;
            return authResponse;
        }// end function

        protected function ui(param1:String, param2:Object, param3:Function = null, param4:String = null) : void
        {
            param2.method = param1;
            if (param3 != null)
            {
                this.openUICalls[param1] = param3;
            }
            if (param4)
            {
                param2.display = param4;
            }
            ExternalInterface.call("FBAS.ui", JSON.encode(param2));
            return;
        }// end function

        protected function addJSEventListener(param1:String, param2:Function) : void
        {
            if (this.jsCallbacks[param1] == null)
            {
                this.jsCallbacks[param1] = new Dictionary();
                ExternalInterface.call("FBAS.addEventListener", param1);
            }
            this.jsCallbacks[param1][param2] = null;
            return;
        }// end function

        protected function removeJSEventListener(param1:String, param2:Function) : void
        {
            if (this.jsCallbacks[param1] == null)
            {
                return;
            }
            delete this.jsCallbacks[param1][param2];
            return;
        }// end function

        protected function hasJSEventListener(param1:String, param2:Function) : Boolean
        {
            if (this.jsCallbacks[param1] == null || this.jsCallbacks[param1][param2] !== null)
            {
                return false;
            }
            return true;
        }// end function

        protected function handleUI(param1:String, param2:String) : void
        {
            var _loc_3:* = param1 ? (JSON.decode(param1)) : (null);
            var _loc_4:* = this.openUICalls[param2];
            if (this.openUICalls[param2] === null)
            {
                delete this.openUICalls[param2];
            }
            else
            {
                this._loc_4(_loc_3);
                delete this.openUICalls[param2];
            }
            return;
        }// end function

        protected function handleLogout() : void
        {
            authResponse = null;
            if (this._logoutCallback != null)
            {
                this._logoutCallback(true);
                this._logoutCallback = null;
            }
            return;
        }// end function

        protected function handleJSEvent(param1:String, param2:String = null) : void
        {
            var decodedResult:Object;
            var func:Object;
            var event:* = param1;
            var result:* = param2;
            if (this.jsCallbacks[event] != null)
            {
                try
                {
                    decodedResult = JSON.decode(result);
                }
                catch (e:JSONParseError)
                {
                }
                var _loc_4:* = 0;
                var _loc_5:* = this.jsCallbacks[event];
                while (_loc_5 in _loc_4)
                {
                    
                    func = _loc_5[_loc_4];
                    this.func as Function(decodedResult);
                    delete _loc_5[func];
                }
            }
            return;
        }// end function

        protected function handleAuthResponseChange(param1:String) : void
        {
            var resultObj:Object;
            var result:* = param1;
            var success:Boolean;
            if (result != null)
            {
                try
                {
                    resultObj = JSON.decode(result);
                }
                catch (e:JSONParseError)
                {
                    success;
                }
            }
            else
            {
                success;
            }
            if (success)
            {
                if (authResponse == null)
                {
                    authResponse = new FacebookAuthResponse();
                    authResponse.fromJSON(resultObj);
                }
                else
                {
                    authResponse.fromJSON(resultObj);
                }
            }
            if (this._initCallback != null)
            {
                this._initCallback(authResponse, null);
                this._initCallback = null;
            }
            if (this._loginCallback != null)
            {
                this._loginCallback(authResponse, null);
                this._loginCallback = null;
            }
            return;
        }// end function

        public static function init(param1:String, param2:Function = null, param3:Object = null, param4:String = null) : void
        {
            getInstance().init(param1, param2, param3, param4);
            return;
        }// end function

        public static function set locale(param1:String) : void
        {
            getInstance().locale = param1;
            return;
        }// end function

        public static function login(param1:Function, param2:Object = null) : void
        {
            getInstance().login(param1, param2);
            return;
        }// end function

        public static function mobileLogin(param1:String, param2:String = "touch", param3:Array = null) : void
        {
            var _loc_4:* = new URLVariables();
            _loc_4.client_id = getInstance().applicationId;
            _loc_4.redirect_uri = param1;
            _loc_4.display = param2;
            if (param3 != null)
            {
                _loc_4.scope = param3.join(",");
            }
            var _loc_5:* = new URLRequest(FacebookURLDefaults.AUTH_URL);
            _loc_5.method = URLRequestMethod.GET;
            _loc_5.data = _loc_4;
            navigateToURL(_loc_5, "_self");
            return;
        }// end function

        public static function mobileLogout(param1:String) : void
        {
            getInstance().authResponse = null;
            var _loc_2:* = new URLVariables();
            _loc_2.confirm = 1;
            _loc_2.next = param1;
            var _loc_3:* = new URLRequest("http://m.facebook.com/logout.php");
            _loc_3.method = URLRequestMethod.GET;
            _loc_3.data = _loc_2;
            navigateToURL(_loc_3, "_self");
            return;
        }// end function

        public static function logout(param1:Function) : void
        {
            getInstance().logout(param1);
            return;
        }// end function

        public static function ui(param1:String, param2:Object, param3:Function = null, param4:String = null) : void
        {
            getInstance().ui(param1, param2, param3, param4);
            return;
        }// end function

        public static function api(param1:String, param2:Function = null, param3 = null, param4:String = "GET") : void
        {
            getInstance().api(param1, param2, param3, param4);
            return;
        }// end function

        public static function getRawResult(param1:Object) : Object
        {
            return getInstance().getRawResult(param1);
        }// end function

        public static function hasNext(param1:Object) : Boolean
        {
            var _loc_2:* = getInstance().getRawResult(param1);
            if (!_loc_2.paging)
            {
                return false;
            }
            return _loc_2.paging.next != null;
        }// end function

        public static function hasPrevious(param1:Object) : Boolean
        {
            var _loc_2:* = getInstance().getRawResult(param1);
            if (!_loc_2.paging)
            {
                return false;
            }
            return _loc_2.paging.previous != null;
        }// end function

        public static function nextPage(param1:Object, param2:Function) : FacebookRequest
        {
            return getInstance().nextPage(param1, param2);
        }// end function

        public static function previousPage(param1:Object, param2:Function) : FacebookRequest
        {
            return getInstance().previousPage(param1, param2);
        }// end function

        public static function postData(param1:String, param2:Function = null, param3:Object = null) : void
        {
            api(param1, param2, param3, URLRequestMethod.POST);
            return;
        }// end function

        public static function uploadVideo(param1:String, param2:Function = null, param3 = null) : void
        {
            getInstance().uploadVideo(param1, param2, param3);
            return;
        }// end function

        public static function fqlQuery(param1:String, param2:Function = null, param3:Object = null) : void
        {
            getInstance().fqlQuery(param1, param2, param3);
            return;
        }// end function

        public static function fqlMultiQuery(param1:FQLMultiQuery, param2:Function = null, param3:IResultParser = null) : void
        {
            getInstance().fqlMultiQuery(param1, param2, param3);
            return;
        }// end function

        public static function batchRequest(param1:Batch, param2:Function = null) : void
        {
            getInstance().batchRequest(param1, param2);
            return;
        }// end function

        public static function callRestAPI(param1:String, param2:Function, param3 = null, param4:String = "GET") : void
        {
            getInstance().callRestAPI(param1, param2, param3, param4);
            return;
        }// end function

        public static function getImageUrl(param1:String, param2:String = null) : String
        {
            return getInstance().getImageUrl(param1, param2);
        }// end function

        public static function deleteObject(param1:String, param2:Function = null) : void
        {
            getInstance().deleteObject(param1, param2);
            return;
        }// end function

        public static function addJSEventListener(param1:String, param2:Function) : void
        {
            getInstance().addJSEventListener(param1, param2);
            return;
        }// end function

        public static function removeJSEventListener(param1:String, param2:Function) : void
        {
            getInstance().removeJSEventListener(param1, param2);
            return;
        }// end function

        public static function hasJSEventListener(param1:String, param2:Function) : Boolean
        {
            return getInstance().hasJSEventListener(param1, param2);
        }// end function

        public static function setCanvasAutoResize(param1:Boolean = true, param2:uint = 100) : void
        {
            getInstance().setCanvasAutoResize(param1, param2);
            return;
        }// end function

        public static function setCanvasSize(param1:Number, param2:Number) : void
        {
            getInstance().setCanvasSize(param1, param2);
            return;
        }// end function

        public static function callJS(param1:String, param2:Object) : void
        {
            getInstance().callJS(param1, param2);
            return;
        }// end function

        public static function getAuthResponse() : FacebookAuthResponse
        {
            return getInstance().getAuthResponse();
        }// end function

        public static function getLoginStatus() : void
        {
            getInstance().getLoginStatus();
            return;
        }// end function

        static function getInstance() : Facebook
        {
            if (_instance == null)
            {
                _canInit = true;
                _instance = new Facebook;
                _canInit = false;
            }
            return _instance;
        }// end function

    }
}
