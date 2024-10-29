
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package generated.webservices{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IWsDaoJpaService
    {
    	//Stub functions for the getAllClients operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAllClients
    	 * @return An AsyncToken
    	 */
    	function getAllClients(getAllClients:GetAllClients):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllClients_send():AsyncToken;
        
        /**
         * The getAllClients operation lastResult property
         */
        function get getAllClients_lastResult():GetAllClientsResponse;
		/**
		 * @private
		 */
        function set getAllClients_lastResult(lastResult:GetAllClientsResponse):void;
       /**
        * Add a listener for the getAllClients operation successful result event
        * @param The listener function
        */
       function addgetAllClientsEventListener(listener:Function):void;
       
       
        /**
         * The getAllClients operation request wrapper
         */
        function get getAllClients_request_var():GetAllClients_request;
        
        /**
         * @private
         */
        function set getAllClients_request_var(request:GetAllClients_request):void;
                   
    	//Stub functions for the getAllMedecins operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAllMedecins
    	 * @return An AsyncToken
    	 */
    	function getAllMedecins(getAllMedecins:GetAllMedecins):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllMedecins_send():AsyncToken;
        
        /**
         * The getAllMedecins operation lastResult property
         */
        function get getAllMedecins_lastResult():GetAllMedecinsResponse;
		/**
		 * @private
		 */
        function set getAllMedecins_lastResult(lastResult:GetAllMedecinsResponse):void;
       /**
        * Add a listener for the getAllMedecins operation successful result event
        * @param The listener function
        */
       function addgetAllMedecinsEventListener(listener:Function):void;
       
       
        /**
         * The getAllMedecins operation request wrapper
         */
        function get getAllMedecins_request_var():GetAllMedecins_request;
        
        /**
         * @private
         */
        function set getAllMedecins_request_var(request:GetAllMedecins_request):void;
                   
    	//Stub functions for the getAllCreneaux operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAllCreneaux
    	 * @param arg0
    	 * @return An AsyncToken
    	 */
    	function getAllCreneaux(getAllCreneaux:GetAllCreneaux):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllCreneaux_send():AsyncToken;
        
        /**
         * The getAllCreneaux operation lastResult property
         */
        function get getAllCreneaux_lastResult():GetAllCreneauxResponse;
		/**
		 * @private
		 */
        function set getAllCreneaux_lastResult(lastResult:GetAllCreneauxResponse):void;
       /**
        * Add a listener for the getAllCreneaux operation successful result event
        * @param The listener function
        */
       function addgetAllCreneauxEventListener(listener:Function):void;
       
       
        /**
         * The getAllCreneaux operation request wrapper
         */
        function get getAllCreneaux_request_var():GetAllCreneaux_request;
        
        /**
         * @private
         */
        function set getAllCreneaux_request_var(request:GetAllCreneaux_request):void;
                   
    	//Stub functions for the getRvMedecinJour operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getRvMedecinJour
    	 * @param arg0
    	 * @param arg1
    	 * @return An AsyncToken
    	 */
    	function getRvMedecinJour(getRvMedecinJour:GetRvMedecinJour):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getRvMedecinJour_send():AsyncToken;
        
        /**
         * The getRvMedecinJour operation lastResult property
         */
        function get getRvMedecinJour_lastResult():GetRvMedecinJourResponse;
		/**
		 * @private
		 */
        function set getRvMedecinJour_lastResult(lastResult:GetRvMedecinJourResponse):void;
       /**
        * Add a listener for the getRvMedecinJour operation successful result event
        * @param The listener function
        */
       function addgetRvMedecinJourEventListener(listener:Function):void;
       
       
        /**
         * The getRvMedecinJour operation request wrapper
         */
        function get getRvMedecinJour_request_var():GetRvMedecinJour_request;
        
        /**
         * @private
         */
        function set getRvMedecinJour_request_var(request:GetRvMedecinJour_request):void;
                   
    	//Stub functions for the ajouterRv operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param arg0
    	 * @param arg1
    	 * @param arg2
    	 * @param ajouterRv
    	 * @return An AsyncToken
    	 */
    	function ajouterRv(ajouterRv:AjouterRv):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function ajouterRv_send():AsyncToken;
        
        /**
         * The ajouterRv operation lastResult property
         */
        function get ajouterRv_lastResult():AjouterRvResponse;
		/**
		 * @private
		 */
        function set ajouterRv_lastResult(lastResult:AjouterRvResponse):void;
       /**
        * Add a listener for the ajouterRv operation successful result event
        * @param The listener function
        */
       function addajouterRvEventListener(listener:Function):void;
       
       
        /**
         * The ajouterRv operation request wrapper
         */
        function get ajouterRv_request_var():AjouterRv_request;
        
        /**
         * @private
         */
        function set ajouterRv_request_var(request:AjouterRv_request):void;
                   
    	//Stub functions for the supprimerRv operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param supprimerRv
    	 * @param arg0
    	 * @return An AsyncToken
    	 */
    	function supprimerRv(supprimerRv:SupprimerRv):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function supprimerRv_send():AsyncToken;
        
        /**
         * The supprimerRv operation lastResult property
         */
        function get supprimerRv_lastResult():SupprimerRvResponse;
		/**
		 * @private
		 */
        function set supprimerRv_lastResult(lastResult:SupprimerRvResponse):void;
       /**
        * Add a listener for the supprimerRv operation successful result event
        * @param The listener function
        */
       function addsupprimerRvEventListener(listener:Function):void;
       
       
        /**
         * The supprimerRv operation request wrapper
         */
        function get supprimerRv_request_var():SupprimerRv_request;
        
        /**
         * @private
         */
        function set supprimerRv_request_var(request:SupprimerRv_request):void;
                   
    	//Stub functions for the getClientById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getClientById
    	 * @param arg0
    	 * @return An AsyncToken
    	 */
    	function getClientById(getClientById:GetClientById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getClientById_send():AsyncToken;
        
        /**
         * The getClientById operation lastResult property
         */
        function get getClientById_lastResult():GetClientByIdResponse;
		/**
		 * @private
		 */
        function set getClientById_lastResult(lastResult:GetClientByIdResponse):void;
       /**
        * Add a listener for the getClientById operation successful result event
        * @param The listener function
        */
       function addgetClientByIdEventListener(listener:Function):void;
       
       
        /**
         * The getClientById operation request wrapper
         */
        function get getClientById_request_var():GetClientById_request;
        
        /**
         * @private
         */
        function set getClientById_request_var(request:GetClientById_request):void;
                   
    	//Stub functions for the getMedecinById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param arg0
    	 * @param getMedecinById
    	 * @return An AsyncToken
    	 */
    	function getMedecinById(getMedecinById:GetMedecinById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getMedecinById_send():AsyncToken;
        
        /**
         * The getMedecinById operation lastResult property
         */
        function get getMedecinById_lastResult():GetMedecinByIdResponse;
		/**
		 * @private
		 */
        function set getMedecinById_lastResult(lastResult:GetMedecinByIdResponse):void;
       /**
        * Add a listener for the getMedecinById operation successful result event
        * @param The listener function
        */
       function addgetMedecinByIdEventListener(listener:Function):void;
       
       
        /**
         * The getMedecinById operation request wrapper
         */
        function get getMedecinById_request_var():GetMedecinById_request;
        
        /**
         * @private
         */
        function set getMedecinById_request_var(request:GetMedecinById_request):void;
                   
    	//Stub functions for the getRvById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getRvById
    	 * @param arg0
    	 * @return An AsyncToken
    	 */
    	function getRvById(getRvById:GetRvById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getRvById_send():AsyncToken;
        
        /**
         * The getRvById operation lastResult property
         */
        function get getRvById_lastResult():GetRvByIdResponse;
		/**
		 * @private
		 */
        function set getRvById_lastResult(lastResult:GetRvByIdResponse):void;
       /**
        * Add a listener for the getRvById operation successful result event
        * @param The listener function
        */
       function addgetRvByIdEventListener(listener:Function):void;
       
       
        /**
         * The getRvById operation request wrapper
         */
        function get getRvById_request_var():GetRvById_request;
        
        /**
         * @private
         */
        function set getRvById_request_var(request:GetRvById_request):void;
                   
    	//Stub functions for the getCreneauById operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param arg0
    	 * @param getCreneauById
    	 * @return An AsyncToken
    	 */
    	function getCreneauById(getCreneauById:GetCreneauById):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCreneauById_send():AsyncToken;
        
        /**
         * The getCreneauById operation lastResult property
         */
        function get getCreneauById_lastResult():GetCreneauByIdResponse;
		/**
		 * @private
		 */
        function set getCreneauById_lastResult(lastResult:GetCreneauByIdResponse):void;
       /**
        * Add a listener for the getCreneauById operation successful result event
        * @param The listener function
        */
       function addgetCreneauByIdEventListener(listener:Function):void;
       
       
        /**
         * The getCreneauById operation request wrapper
         */
        function get getCreneauById_request_var():GetCreneauById_request;
        
        /**
         * @private
         */
        function set getCreneauById_request_var(request:GetCreneauById_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseWsDaoJpaService;
	}
}