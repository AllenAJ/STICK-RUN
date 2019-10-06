package com.facebook.graph.core
{
    import com.facebook.graph.data.*;
    import com.facebook.graph.net.*;
    import com.facebook.graph.utils.*;
    import flash.net.*;
    import flash.utils.*;

    public class AbstractFacebook extends Object
    {
        protected var session:FacebookSession;
        protected var authResponse:FacebookAuthResponse;
        protected var oauth2:Boolean;
        protected var openRequests:Dictionary;
        protected var resultHash:Dictionary;
        protected var locale:String;
        protected var parserHash:Dictionary;

        public function AbstractFacebook() : void
        {
            this.openRequests = new Dictionary();
            this.resultHash = new Dictionary(true);
            this.parserHash = new Dictionary();
            return;
        }// end function

        protected function get accessToken() : String
        {
            if (this.oauth2 && this.authResponse != null || this.session != null)
            {
                return this.oauth2 ? (this.authResponse.accessToken) : (this.session.accessToken);
            }
            else
            {
                return null;
            }
        }// end function

        protected function api(param1:String, param2:Function = null, param3 = null, param4:String = "GET") : void
        {
            param1 = param1.indexOf("/") != 0 ? ("/" + param1) : (param1);
            if (this.accessToken)
            {
                if (param3 == null)
                {
                    param3 = {};
                }
                if (param3.access_token == null)
                {
                    param3.access_token = this.accessToken;
                }
            }
            var _loc_5:* = new FacebookRequest();
            if (this.locale)
            {
                param3.locale = this.locale;
            }
            this.openRequests[_loc_5] = param2;
            _loc_5.call(FacebookURLDefaults.GRAPH_URL + param1, param4, this.handleRequestLoad, param3);
            return;
        }// end function

        protected function uploadVideo(param1:String, param2:Function = null, param3 = null) : void
        {
            param1 = param1.indexOf("/") != 0 ? ("/" + param1) : (param1);
            if (this.accessToken)
            {
                if (param3 == null)
                {
                    param3 = {};
                }
                if (param3.access_token == null)
                {
                    param3.access_token = this.accessToken;
                }
            }
            var _loc_4:* = new FacebookRequest();
            if (this.locale)
            {
                param3.locale = this.locale;
            }
            this.openRequests[_loc_4] = param2;
            _loc_4.call(FacebookURLDefaults.VIDEO_URL + param1, "POST", this.handleRequestLoad, param3);
            return;
        }// end function

        protected function pagingCall(param1:String, param2:Function) : FacebookRequest
        {
            var _loc_3:* = new FacebookRequest();
            this.openRequests[_loc_3] = param2;
            _loc_3.callURL(this.handleRequestLoad, param1, this.locale);
            return _loc_3;
        }// end function

        protected function getRawResult(param1:Object) : Object
        {
            return this.resultHash[param1];
        }// end function

        protected function nextPage(param1:Object, param2:Function = null) : FacebookRequest
        {
            var _loc_3:* = null;
            var _loc_4:* = this.getRawResult(param1);
            if (this.getRawResult(param1) && _loc_4.paging && _loc_4.paging.next)
            {
                _loc_3 = this.pagingCall(_loc_4.paging.next, param2);
            }
            else if (param2 != null)
            {
                this.param2(null, "no page");
            }
            return _loc_3;
        }// end function

        protected function previousPage(param1:Object, param2:Function = null) : FacebookRequest
        {
            var _loc_3:* = null;
            var _loc_4:* = this.getRawResult(param1);
            if (this.getRawResult(param1) && _loc_4.paging && _loc_4.paging.previous)
            {
                _loc_3 = this.pagingCall(_loc_4.paging.previous, param2);
            }
            else if (param2 != null)
            {
                this.param2(null, "no page");
            }
            return _loc_3;
        }// end function

        protected function handleRequestLoad(param1:FacebookRequest) : void
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_2:* = this.openRequests[param1];
            if (_loc_2 === null)
            {
                delete this.openRequests[param1];
            }
            if (param1.success)
            {
                _loc_3 = "data" in param1.data ? (param1.data.data) : (param1.data);
                this.resultHash[_loc_3] = param1.data;
                if (_loc_3.hasOwnProperty("error_code"))
                {
                    this._loc_2(null, _loc_3);
                }
                else
                {
                    if (this.parserHash[param1] is IResultParser)
                    {
                        _loc_4 = this.parserHash[param1] as IResultParser;
                        _loc_3 = _loc_4.parse(_loc_3);
                        this.parserHash[param1] = null;
                        delete this.parserHash[param1];
                    }
                    this._loc_2(_loc_3, null);
                }
            }
            else
            {
                this._loc_2(null, param1.data);
            }
            delete this.openRequests[param1];
            return;
        }// end function

        protected function callRestAPI(param1:String, param2:Function = null, param3 = null, param4:String = "GET") : void
        {
            var _loc_6:* = null;
            if (param3 == null)
            {
                param3 = {};
            }
            param3.format = "json";
            if (this.accessToken)
            {
                param3.access_token = this.accessToken;
            }
            if (this.locale)
            {
                param3.locale = this.locale;
            }
            var _loc_5:* = new FacebookRequest();
            this.openRequests[_loc_5] = param2;
            if (this.parserHash[param3["queries"]] is IResultParser)
            {
                _loc_6 = this.parserHash[param3["queries"]] as IResultParser;
                this.parserHash[param3["queries"]] = null;
                delete this.parserHash[param3["queries"]];
                this.parserHash[_loc_5] = _loc_6;
            }
            _loc_5.call(FacebookURLDefaults.API_URL + "/method/" + param1, param4, this.handleRequestLoad, param3);
            return;
        }// end function

        protected function fqlQuery(param1:String, param2:Function = null, param3:Object = null) : void
        {
            var _loc_4:* = null;
            for (_loc_4 in param3)
            {
                
                param1 = param1.replace(new RegExp("\\{" + _loc_4 + "\\}", "g"), _loc_6[_loc_4]);
            }
            this.callRestAPI("fql.query", param2, {query:param1});
            return;
        }// end function

        protected function fqlMultiQuery(param1:FQLMultiQuery, param2:Function = null, param3:IResultParser = null) : void
        {
            this.parserHash[param1.toString()] = param3 != null ? (param3) : (new FQLMultiQueryParser());
            this.callRestAPI("fql.multiquery", param2, {queries:param1.toString()});
            return;
        }// end function

        protected function batchRequest(param1:Batch, param2:Function = null) : void
        {
            var _loc_3:* = null;
            if (this.accessToken)
            {
                _loc_3 = new FacebookBatchRequest(param1, param2);
                this.resultHash[_loc_3] = true;
                _loc_3.call(this.accessToken);
            }
            return;
        }// end function

        protected function deleteObject(param1:String, param2:Function = null) : void
        {
            var _loc_3:* = {method:"delete"};
            this.api(param1, param2, _loc_3, URLRequestMethod.POST);
            return;
        }// end function

        protected function getImageUrl(param1:String, param2:String = null) : String
        {
            return FacebookURLDefaults.GRAPH_URL + "/" + param1 + "/picture" + (param2 != null ? ("?type=" + param2) : (""));
        }// end function

    }
}
