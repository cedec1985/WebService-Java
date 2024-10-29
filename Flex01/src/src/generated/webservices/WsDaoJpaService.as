/**
 * WsDaoJpaServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:WsDaoJpaService= new WsDaoJpaService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetAllClientsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getAllClients(mygetAllClients);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="generated.webservices.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:WsDaoJpaService id="myService">
  *   <srv:getAllClients_request_var>
  *		<srv:GetAllClients_request getAllClients=myValue/>
  *   </srv:getAllClients_request_var>
  * </srv:WsDaoJpaService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getAllClients_send()" />
  */
package generated.webservices
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getAllClients completes with success
     * and returns some data
     * @eventType GetAllClientsResultEvent
     */
    [Event(name="GetAllClients_result", type="generated.webservices.GetAllClientsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAllMedecins completes with success
     * and returns some data
     * @eventType GetAllMedecinsResultEvent
     */
    [Event(name="GetAllMedecins_result", type="generated.webservices.GetAllMedecinsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAllCreneaux completes with success
     * and returns some data
     * @eventType GetAllCreneauxResultEvent
     */
    [Event(name="GetAllCreneaux_result", type="generated.webservices.GetAllCreneauxResultEvent")]
    
    /**
     * Dispatches when a call to the operation getRvMedecinJour completes with success
     * and returns some data
     * @eventType GetRvMedecinJourResultEvent
     */
    [Event(name="GetRvMedecinJour_result", type="generated.webservices.GetRvMedecinJourResultEvent")]
    
    /**
     * Dispatches when a call to the operation ajouterRv completes with success
     * and returns some data
     * @eventType AjouterRvResultEvent
     */
    [Event(name="AjouterRv_result", type="generated.webservices.AjouterRvResultEvent")]
    
    /**
     * Dispatches when a call to the operation supprimerRv completes with success
     * and returns some data
     * @eventType SupprimerRvResultEvent
     */
    [Event(name="SupprimerRv_result", type="generated.webservices.SupprimerRvResultEvent")]
    
    /**
     * Dispatches when a call to the operation getClientById completes with success
     * and returns some data
     * @eventType GetClientByIdResultEvent
     */
    [Event(name="GetClientById_result", type="generated.webservices.GetClientByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation getMedecinById completes with success
     * and returns some data
     * @eventType GetMedecinByIdResultEvent
     */
    [Event(name="GetMedecinById_result", type="generated.webservices.GetMedecinByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation getRvById completes with success
     * and returns some data
     * @eventType GetRvByIdResultEvent
     */
    [Event(name="GetRvById_result", type="generated.webservices.GetRvByIdResultEvent")]
    
    /**
     * Dispatches when a call to the operation getCreneauById completes with success
     * and returns some data
     * @eventType GetCreneauByIdResultEvent
     */
    [Event(name="GetCreneauById_result", type="generated.webservices.GetCreneauByIdResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class WsDaoJpaService extends EventDispatcher implements IWsDaoJpaService
	{
    	private var _baseService:BaseWsDaoJpaService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function WsDaoJpaService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseWsDaoJpaService(destination,rootURL);
        }
        
		//stub functions for the getAllClients operation
          

        /**
         * @see IWsDaoJpaService#getAllClients()
         */
        public function getAllClients(getAllClients:GetAllClients):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllClients(getAllClients);
            _internal_token.addEventListener("result",_getAllClients_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getAllClients_send()
		 */    
        public function getAllClients_send():AsyncToken
        {
        	return getAllClients(_getAllClients_request.getAllClients);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllClients_request:GetAllClients_request;
		/**
		 * @see IWsDaoJpaService#getAllClients_request_var
		 */
		[Bindable]
		public function get getAllClients_request_var():GetAllClients_request
		{
			return _getAllClients_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllClients_request_var(request:GetAllClients_request):void
		{
			_getAllClients_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllClients_lastResult:GetAllClientsResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getAllClients_lastResult
		 */	  
		public function get getAllClients_lastResult():GetAllClientsResponse
		{
			return _getAllClients_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllClients_lastResult(lastResult:GetAllClientsResponse):void
		{
			_getAllClients_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetAllClients()
		 */
		public function addgetAllClientsEventListener(listener:Function):void
		{
			addEventListener(GetAllClientsResultEvent.GetAllClients_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllClients_populate_results(event:ResultEvent):void
		{
			var e:GetAllClientsResultEvent = new GetAllClientsResultEvent();
		            e.result = event.result as GetAllClientsResponse;
		                       e.headers = event.headers;
		             getAllClients_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getAllMedecins operation
          

        /**
         * @see IWsDaoJpaService#getAllMedecins()
         */
        public function getAllMedecins(getAllMedecins:GetAllMedecins):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllMedecins(getAllMedecins);
            _internal_token.addEventListener("result",_getAllMedecins_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getAllMedecins_send()
		 */    
        public function getAllMedecins_send():AsyncToken
        {
        	return getAllMedecins(_getAllMedecins_request.getAllMedecins);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllMedecins_request:GetAllMedecins_request;
		/**
		 * @see IWsDaoJpaService#getAllMedecins_request_var
		 */
		[Bindable]
		public function get getAllMedecins_request_var():GetAllMedecins_request
		{
			return _getAllMedecins_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllMedecins_request_var(request:GetAllMedecins_request):void
		{
			_getAllMedecins_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllMedecins_lastResult:GetAllMedecinsResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getAllMedecins_lastResult
		 */	  
		public function get getAllMedecins_lastResult():GetAllMedecinsResponse
		{
			return _getAllMedecins_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllMedecins_lastResult(lastResult:GetAllMedecinsResponse):void
		{
			_getAllMedecins_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetAllMedecins()
		 */
		public function addgetAllMedecinsEventListener(listener:Function):void
		{
			addEventListener(GetAllMedecinsResultEvent.GetAllMedecins_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllMedecins_populate_results(event:ResultEvent):void
		{
			var e:GetAllMedecinsResultEvent = new GetAllMedecinsResultEvent();
		            e.result = event.result as GetAllMedecinsResponse;
		                       e.headers = event.headers;
		             getAllMedecins_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getAllCreneaux operation
          

        /**
         * @see IWsDaoJpaService#getAllCreneaux()
         */
        public function getAllCreneaux(getAllCreneaux:GetAllCreneaux):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllCreneaux(getAllCreneaux);
            _internal_token.addEventListener("result",_getAllCreneaux_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getAllCreneaux_send()
		 */    
        public function getAllCreneaux_send():AsyncToken
        {
        	return getAllCreneaux(_getAllCreneaux_request.getAllCreneaux);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllCreneaux_request:GetAllCreneaux_request;
		/**
		 * @see IWsDaoJpaService#getAllCreneaux_request_var
		 */
		[Bindable]
		public function get getAllCreneaux_request_var():GetAllCreneaux_request
		{
			return _getAllCreneaux_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllCreneaux_request_var(request:GetAllCreneaux_request):void
		{
			_getAllCreneaux_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllCreneaux_lastResult:GetAllCreneauxResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getAllCreneaux_lastResult
		 */	  
		public function get getAllCreneaux_lastResult():GetAllCreneauxResponse
		{
			return _getAllCreneaux_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllCreneaux_lastResult(lastResult:GetAllCreneauxResponse):void
		{
			_getAllCreneaux_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetAllCreneaux()
		 */
		public function addgetAllCreneauxEventListener(listener:Function):void
		{
			addEventListener(GetAllCreneauxResultEvent.GetAllCreneaux_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllCreneaux_populate_results(event:ResultEvent):void
		{
			var e:GetAllCreneauxResultEvent = new GetAllCreneauxResultEvent();
		            e.result = event.result as GetAllCreneauxResponse;
		                       e.headers = event.headers;
		             getAllCreneaux_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getRvMedecinJour operation
          

        /**
         * @see IWsDaoJpaService#getRvMedecinJour()
         */
        public function getRvMedecinJour(getRvMedecinJour:GetRvMedecinJour):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getRvMedecinJour(getRvMedecinJour);
            _internal_token.addEventListener("result",_getRvMedecinJour_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getRvMedecinJour_send()
		 */    
        public function getRvMedecinJour_send():AsyncToken
        {
        	return getRvMedecinJour(_getRvMedecinJour_request.getRvMedecinJour);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getRvMedecinJour_request:GetRvMedecinJour_request;
		/**
		 * @see IWsDaoJpaService#getRvMedecinJour_request_var
		 */
		[Bindable]
		public function get getRvMedecinJour_request_var():GetRvMedecinJour_request
		{
			return _getRvMedecinJour_request;
		}
		
		/**
		 * @private
		 */
		public function set getRvMedecinJour_request_var(request:GetRvMedecinJour_request):void
		{
			_getRvMedecinJour_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getRvMedecinJour_lastResult:GetRvMedecinJourResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getRvMedecinJour_lastResult
		 */	  
		public function get getRvMedecinJour_lastResult():GetRvMedecinJourResponse
		{
			return _getRvMedecinJour_lastResult;
		}
		/**
		 * @private
		 */
		public function set getRvMedecinJour_lastResult(lastResult:GetRvMedecinJourResponse):void
		{
			_getRvMedecinJour_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetRvMedecinJour()
		 */
		public function addgetRvMedecinJourEventListener(listener:Function):void
		{
			addEventListener(GetRvMedecinJourResultEvent.GetRvMedecinJour_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getRvMedecinJour_populate_results(event:ResultEvent):void
		{
			var e:GetRvMedecinJourResultEvent = new GetRvMedecinJourResultEvent();
		            e.result = event.result as GetRvMedecinJourResponse;
		                       e.headers = event.headers;
		             getRvMedecinJour_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the ajouterRv operation
          

        /**
         * @see IWsDaoJpaService#ajouterRv()
         */
        public function ajouterRv(ajouterRv:AjouterRv):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.ajouterRv(ajouterRv);
            _internal_token.addEventListener("result",_ajouterRv_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#ajouterRv_send()
		 */    
        public function ajouterRv_send():AsyncToken
        {
        	return ajouterRv(_ajouterRv_request.ajouterRv);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _ajouterRv_request:AjouterRv_request;
		/**
		 * @see IWsDaoJpaService#ajouterRv_request_var
		 */
		[Bindable]
		public function get ajouterRv_request_var():AjouterRv_request
		{
			return _ajouterRv_request;
		}
		
		/**
		 * @private
		 */
		public function set ajouterRv_request_var(request:AjouterRv_request):void
		{
			_ajouterRv_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _ajouterRv_lastResult:AjouterRvResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#ajouterRv_lastResult
		 */	  
		public function get ajouterRv_lastResult():AjouterRvResponse
		{
			return _ajouterRv_lastResult;
		}
		/**
		 * @private
		 */
		public function set ajouterRv_lastResult(lastResult:AjouterRvResponse):void
		{
			_ajouterRv_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addajouterRv()
		 */
		public function addajouterRvEventListener(listener:Function):void
		{
			addEventListener(AjouterRvResultEvent.AjouterRv_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _ajouterRv_populate_results(event:ResultEvent):void
		{
			var e:AjouterRvResultEvent = new AjouterRvResultEvent();
		            e.result = event.result as AjouterRvResponse;
		                       e.headers = event.headers;
		             ajouterRv_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the supprimerRv operation
          

        /**
         * @see IWsDaoJpaService#supprimerRv()
         */
        public function supprimerRv(supprimerRv:SupprimerRv):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.supprimerRv(supprimerRv);
            _internal_token.addEventListener("result",_supprimerRv_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#supprimerRv_send()
		 */    
        public function supprimerRv_send():AsyncToken
        {
        	return supprimerRv(_supprimerRv_request.supprimerRv);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _supprimerRv_request:SupprimerRv_request;
		/**
		 * @see IWsDaoJpaService#supprimerRv_request_var
		 */
		[Bindable]
		public function get supprimerRv_request_var():SupprimerRv_request
		{
			return _supprimerRv_request;
		}
		
		/**
		 * @private
		 */
		public function set supprimerRv_request_var(request:SupprimerRv_request):void
		{
			_supprimerRv_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _supprimerRv_lastResult:SupprimerRvResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#supprimerRv_lastResult
		 */	  
		public function get supprimerRv_lastResult():SupprimerRvResponse
		{
			return _supprimerRv_lastResult;
		}
		/**
		 * @private
		 */
		public function set supprimerRv_lastResult(lastResult:SupprimerRvResponse):void
		{
			_supprimerRv_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addsupprimerRv()
		 */
		public function addsupprimerRvEventListener(listener:Function):void
		{
			addEventListener(SupprimerRvResultEvent.SupprimerRv_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _supprimerRv_populate_results(event:ResultEvent):void
		{
			var e:SupprimerRvResultEvent = new SupprimerRvResultEvent();
		            e.result = event.result as SupprimerRvResponse;
		                       e.headers = event.headers;
		             supprimerRv_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getClientById operation
          

        /**
         * @see IWsDaoJpaService#getClientById()
         */
        public function getClientById(getClientById:GetClientById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getClientById(getClientById);
            _internal_token.addEventListener("result",_getClientById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getClientById_send()
		 */    
        public function getClientById_send():AsyncToken
        {
        	return getClientById(_getClientById_request.getClientById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getClientById_request:GetClientById_request;
		/**
		 * @see IWsDaoJpaService#getClientById_request_var
		 */
		[Bindable]
		public function get getClientById_request_var():GetClientById_request
		{
			return _getClientById_request;
		}
		
		/**
		 * @private
		 */
		public function set getClientById_request_var(request:GetClientById_request):void
		{
			_getClientById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getClientById_lastResult:GetClientByIdResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getClientById_lastResult
		 */	  
		public function get getClientById_lastResult():GetClientByIdResponse
		{
			return _getClientById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getClientById_lastResult(lastResult:GetClientByIdResponse):void
		{
			_getClientById_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetClientById()
		 */
		public function addgetClientByIdEventListener(listener:Function):void
		{
			addEventListener(GetClientByIdResultEvent.GetClientById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getClientById_populate_results(event:ResultEvent):void
		{
			var e:GetClientByIdResultEvent = new GetClientByIdResultEvent();
		            e.result = event.result as GetClientByIdResponse;
		                       e.headers = event.headers;
		             getClientById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getMedecinById operation
          

        /**
         * @see IWsDaoJpaService#getMedecinById()
         */
        public function getMedecinById(getMedecinById:GetMedecinById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getMedecinById(getMedecinById);
            _internal_token.addEventListener("result",_getMedecinById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getMedecinById_send()
		 */    
        public function getMedecinById_send():AsyncToken
        {
        	return getMedecinById(_getMedecinById_request.getMedecinById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getMedecinById_request:GetMedecinById_request;
		/**
		 * @see IWsDaoJpaService#getMedecinById_request_var
		 */
		[Bindable]
		public function get getMedecinById_request_var():GetMedecinById_request
		{
			return _getMedecinById_request;
		}
		
		/**
		 * @private
		 */
		public function set getMedecinById_request_var(request:GetMedecinById_request):void
		{
			_getMedecinById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getMedecinById_lastResult:GetMedecinByIdResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getMedecinById_lastResult
		 */	  
		public function get getMedecinById_lastResult():GetMedecinByIdResponse
		{
			return _getMedecinById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getMedecinById_lastResult(lastResult:GetMedecinByIdResponse):void
		{
			_getMedecinById_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetMedecinById()
		 */
		public function addgetMedecinByIdEventListener(listener:Function):void
		{
			addEventListener(GetMedecinByIdResultEvent.GetMedecinById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getMedecinById_populate_results(event:ResultEvent):void
		{
			var e:GetMedecinByIdResultEvent = new GetMedecinByIdResultEvent();
		            e.result = event.result as GetMedecinByIdResponse;
		                       e.headers = event.headers;
		             getMedecinById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getRvById operation
          

        /**
         * @see IWsDaoJpaService#getRvById()
         */
        public function getRvById(getRvById:GetRvById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getRvById(getRvById);
            _internal_token.addEventListener("result",_getRvById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getRvById_send()
		 */    
        public function getRvById_send():AsyncToken
        {
        	return getRvById(_getRvById_request.getRvById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getRvById_request:GetRvById_request;
		/**
		 * @see IWsDaoJpaService#getRvById_request_var
		 */
		[Bindable]
		public function get getRvById_request_var():GetRvById_request
		{
			return _getRvById_request;
		}
		
		/**
		 * @private
		 */
		public function set getRvById_request_var(request:GetRvById_request):void
		{
			_getRvById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getRvById_lastResult:GetRvByIdResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getRvById_lastResult
		 */	  
		public function get getRvById_lastResult():GetRvByIdResponse
		{
			return _getRvById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getRvById_lastResult(lastResult:GetRvByIdResponse):void
		{
			_getRvById_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetRvById()
		 */
		public function addgetRvByIdEventListener(listener:Function):void
		{
			addEventListener(GetRvByIdResultEvent.GetRvById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getRvById_populate_results(event:ResultEvent):void
		{
			var e:GetRvByIdResultEvent = new GetRvByIdResultEvent();
		            e.result = event.result as GetRvByIdResponse;
		                       e.headers = event.headers;
		             getRvById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getCreneauById operation
          

        /**
         * @see IWsDaoJpaService#getCreneauById()
         */
        public function getCreneauById(getCreneauById:GetCreneauById):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCreneauById(getCreneauById);
            _internal_token.addEventListener("result",_getCreneauById_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IWsDaoJpaService#getCreneauById_send()
		 */    
        public function getCreneauById_send():AsyncToken
        {
        	return getCreneauById(_getCreneauById_request.getCreneauById);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getCreneauById_request:GetCreneauById_request;
		/**
		 * @see IWsDaoJpaService#getCreneauById_request_var
		 */
		[Bindable]
		public function get getCreneauById_request_var():GetCreneauById_request
		{
			return _getCreneauById_request;
		}
		
		/**
		 * @private
		 */
		public function set getCreneauById_request_var(request:GetCreneauById_request):void
		{
			_getCreneauById_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getCreneauById_lastResult:GetCreneauByIdResponse;
		[Bindable]
		/**
		 * @see IWsDaoJpaService#getCreneauById_lastResult
		 */	  
		public function get getCreneauById_lastResult():GetCreneauByIdResponse
		{
			return _getCreneauById_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCreneauById_lastResult(lastResult:GetCreneauByIdResponse):void
		{
			_getCreneauById_lastResult = lastResult;
		}
		
		/**
		 * @see IWsDaoJpaService#addgetCreneauById()
		 */
		public function addgetCreneauByIdEventListener(listener:Function):void
		{
			addEventListener(GetCreneauByIdResultEvent.GetCreneauById_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getCreneauById_populate_results(event:ResultEvent):void
		{
			var e:GetCreneauByIdResultEvent = new GetCreneauByIdResultEvent();
		            e.result = event.result as GetCreneauByIdResponse;
		                       e.headers = event.headers;
		             getCreneauById_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IWsDaoJpaService#getWebService()
		 */
		public function getWebService():BaseWsDaoJpaService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addWsDaoJpaServiceFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
