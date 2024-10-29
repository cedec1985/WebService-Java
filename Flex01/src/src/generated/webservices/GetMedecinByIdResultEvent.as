/**
 * GetMedecinByIdResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package generated.webservices
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetMedecinByIdResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetMedecinById_RESULT:String="GetMedecinById_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetMedecinByIdResultEvent()
		{
			super(GetMedecinById_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:GetMedecinByIdResponse;
		public function get result():GetMedecinByIdResponse
		{
			return _result;
		}

		public function set result(value:GetMedecinByIdResponse):void
		{
			_result = value;
		}

		public function get headers():Object
		{
			return _headers;
		}

		public function set headers(value:Object):void
		{
			_headers = value;
		}
	}
}