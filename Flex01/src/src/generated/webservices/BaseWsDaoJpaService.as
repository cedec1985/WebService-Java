/**
 * BaseWsDaoJpaServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package generated.webservices
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import mx.controls.treeClasses.DefaultDataDescriptor;
	import mx.utils.ObjectUtil;
	import mx.utils.ObjectProxy;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.MessageResponder;
	import mx.messaging.messages.SOAPMessage;
	import mx.messaging.messages.ErrorMessage;
   	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	import mx.rpc.soap.types.*;
	import mx.collections.ArrayCollection;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseWsDaoJpaService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseWsDaoJpaServiceService:WSDLService;
		private var BaseWsDaoJpaServicePortType:WSDLPortType;
		private var BaseWsDaoJpaServiceBinding:WSDLBinding;
		private var BaseWsDaoJpaServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseWsDaoJpaServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseWsDaoJpaService(destination:String=null, rootURL:String=null)
		{
			super(destination, rootURL);
			if(destination == null)
			{
				//no destination available; must set it to go directly to the target
				this.useProxy = false;
			}
			else
			{
				//specific destination requested; must set proxying to true
				this.useProxy = true;
			}
			
			if(rootURL != null)
			{
				this.endpointURI = rootURL;
			} 
			else 
			{
				this.endpointURI = null;
			}
			internal_schema = new BaseWsDaoJpaServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseWsDaoJpaServiceService = new WSDLService("BaseWsDaoJpaServiceService");
			BaseWsDaoJpaServicePort = new WSDLPort("BaseWsDaoJpaServicePort",BaseWsDaoJpaServiceService);
        	BaseWsDaoJpaServiceBinding = new WSDLBinding("BaseWsDaoJpaServiceBinding");
	        BaseWsDaoJpaServicePortType = new WSDLPortType("BaseWsDaoJpaServicePortType");
       		BaseWsDaoJpaServiceBinding.portType = BaseWsDaoJpaServicePortType;
       		BaseWsDaoJpaServicePort.binding = BaseWsDaoJpaServiceBinding;
       		BaseWsDaoJpaServiceService.addPort(BaseWsDaoJpaServicePort);
       		BaseWsDaoJpaServicePort.endpointURI = "http://localhost:8080/serveur-webservice-ejb-dao-jpa-hibernate/WsDaoJpaService";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseWsDaoJpaServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getAllClients:WSDLOperation = new WSDLOperation("getAllClients");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getAllClients");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getAllClients"),null,new QName("http://ws.rdvmedecins/","getAllClients")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getAllClientsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getAllClientsResponse"),null,new QName("http://ws.rdvmedecins/","getAllClientsResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getAllClients.inputMessage = requestMessage;
	        getAllClients.outputMessage = responseMessage;
            getAllClients.schemaManager = this.schemaMgr;
            getAllClients.soapAction = "\"\"";
            getAllClients.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getAllClients);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getAllMedecins:WSDLOperation = new WSDLOperation("getAllMedecins");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getAllMedecins");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getAllMedecins"),null,new QName("http://ws.rdvmedecins/","getAllMedecins")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getAllMedecinsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getAllMedecinsResponse"),null,new QName("http://ws.rdvmedecins/","getAllMedecinsResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getAllMedecins.inputMessage = requestMessage;
	        getAllMedecins.outputMessage = responseMessage;
            getAllMedecins.schemaManager = this.schemaMgr;
            getAllMedecins.soapAction = "\"\"";
            getAllMedecins.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getAllMedecins);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getAllCreneaux:WSDLOperation = new WSDLOperation("getAllCreneaux");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getAllCreneaux");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getAllCreneaux"),null,new QName("http://ws.rdvmedecins/","getAllCreneaux")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getAllCreneauxResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getAllCreneauxResponse"),null,new QName("http://ws.rdvmedecins/","getAllCreneauxResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getAllCreneaux.inputMessage = requestMessage;
	        getAllCreneaux.outputMessage = responseMessage;
            getAllCreneaux.schemaManager = this.schemaMgr;
            getAllCreneaux.soapAction = "\"\"";
            getAllCreneaux.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getAllCreneaux);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getRvMedecinJour:WSDLOperation = new WSDLOperation("getRvMedecinJour");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getRvMedecinJour");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getRvMedecinJour"),null,new QName("http://ws.rdvmedecins/","getRvMedecinJour")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getRvMedecinJourResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getRvMedecinJourResponse"),null,new QName("http://ws.rdvmedecins/","getRvMedecinJourResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getRvMedecinJour.inputMessage = requestMessage;
	        getRvMedecinJour.outputMessage = responseMessage;
            getRvMedecinJour.schemaManager = this.schemaMgr;
            getRvMedecinJour.soapAction = "\"\"";
            getRvMedecinJour.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getRvMedecinJour);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var ajouterRv:WSDLOperation = new WSDLOperation("ajouterRv");
				//input message for the operation
    	        requestMessage = new WSDLMessage("ajouterRv");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","ajouterRv"),null,new QName("http://ws.rdvmedecins/","ajouterRv")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("ajouterRvResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","ajouterRvResponse"),null,new QName("http://ws.rdvmedecins/","ajouterRvResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				ajouterRv.inputMessage = requestMessage;
	        ajouterRv.outputMessage = responseMessage;
            ajouterRv.schemaManager = this.schemaMgr;
            ajouterRv.soapAction = "\"\"";
            ajouterRv.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(ajouterRv);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var supprimerRv:WSDLOperation = new WSDLOperation("supprimerRv");
				//input message for the operation
    	        requestMessage = new WSDLMessage("supprimerRv");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","supprimerRv"),null,new QName("http://ws.rdvmedecins/","supprimerRv")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("supprimerRvResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","supprimerRvResponse"),null,new QName("http://ws.rdvmedecins/","supprimerRvResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				supprimerRv.inputMessage = requestMessage;
	        supprimerRv.outputMessage = responseMessage;
            supprimerRv.schemaManager = this.schemaMgr;
            supprimerRv.soapAction = "\"\"";
            supprimerRv.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(supprimerRv);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getClientById:WSDLOperation = new WSDLOperation("getClientById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getClientById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getClientById"),null,new QName("http://ws.rdvmedecins/","getClientById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getClientByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getClientByIdResponse"),null,new QName("http://ws.rdvmedecins/","getClientByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getClientById.inputMessage = requestMessage;
	        getClientById.outputMessage = responseMessage;
            getClientById.schemaManager = this.schemaMgr;
            getClientById.soapAction = "\"\"";
            getClientById.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getClientById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getMedecinById:WSDLOperation = new WSDLOperation("getMedecinById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getMedecinById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getMedecinById"),null,new QName("http://ws.rdvmedecins/","getMedecinById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getMedecinByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getMedecinByIdResponse"),null,new QName("http://ws.rdvmedecins/","getMedecinByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getMedecinById.inputMessage = requestMessage;
	        getMedecinById.outputMessage = responseMessage;
            getMedecinById.schemaManager = this.schemaMgr;
            getMedecinById.soapAction = "\"\"";
            getMedecinById.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getMedecinById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getRvById:WSDLOperation = new WSDLOperation("getRvById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getRvById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getRvById"),null,new QName("http://ws.rdvmedecins/","getRvById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getRvByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getRvByIdResponse"),null,new QName("http://ws.rdvmedecins/","getRvByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getRvById.inputMessage = requestMessage;
	        getRvById.outputMessage = responseMessage;
            getRvById.schemaManager = this.schemaMgr;
            getRvById.soapAction = "\"\"";
            getRvById.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getRvById);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getCreneauById:WSDLOperation = new WSDLOperation("getCreneauById");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getCreneauById");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getCreneauById"),null,new QName("http://ws.rdvmedecins/","getCreneauById")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getCreneauByIdResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://ws.rdvmedecins/","getCreneauByIdResponse"),null,new QName("http://ws.rdvmedecins/","getCreneauByIdResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://ws.rdvmedecins/";
                responseMessage.encoding.useStyle="literal";				
				getCreneauById.inputMessage = requestMessage;
	        getCreneauById.outputMessage = responseMessage;
            getCreneauById.schemaManager = this.schemaMgr;
            getCreneauById.soapAction = "\"\"";
            getCreneauById.style = "document";
            BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.addOperation(getCreneauById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getClientById"),generated.webservices.GetClientById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getCreneauById"),generated.webservices.GetCreneauById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getClientByIdResponse"),generated.webservices.GetClientByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","supprimerRvResponse"),generated.webservices.SupprimerRvResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","ajouterRvResponse"),generated.webservices.AjouterRvResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","personne"),generated.webservices.Personne);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getRvById"),generated.webservices.GetRvById);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getAllMedecins"),generated.webservices.GetAllMedecins);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getMedecinByIdResponse"),generated.webservices.GetMedecinByIdResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://ws.rdvmedecins/","getRvMedecinJourResponse"),generated.webservices.GetRvMedecinJourResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://ws.rdvmedecins/","getAllClientsResponse"),generated.webservices.GetAllClientsResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://ws.rdvmedecins/","getAllCreneauxResponse"),generated.webservices.GetAllCreneauxResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","supprimerRv"),generated.webservices.SupprimerRv);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","rv"),generated.webservices.Rv);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getRvByIdResponse"),generated.webservices.GetRvByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","ajouterRv"),generated.webservices.AjouterRv);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getAllCreneaux"),generated.webservices.GetAllCreneaux);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","client"),generated.webservices.Client);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","creneau"),generated.webservices.Creneau);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getAllClients"),generated.webservices.GetAllClients);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://ws.rdvmedecins/","getAllMedecinsResponse"),generated.webservices.GetAllMedecinsResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getCreneauByIdResponse"),generated.webservices.GetCreneauByIdResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","medecin"),generated.webservices.Medecin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getRvMedecinJour"),generated.webservices.GetRvMedecinJour);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://ws.rdvmedecins/","getMedecinById"),generated.webservices.GetMedecinById);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getAllClients
		 * @return Asynchronous token
		 */
		public function getAllClients(getAllClients:GetAllClients):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getAllClients"] = getAllClients;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getAllClients");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getAllMedecins
		 * @return Asynchronous token
		 */
		public function getAllMedecins(getAllMedecins:GetAllMedecins):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getAllMedecins"] = getAllMedecins;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getAllMedecins");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getAllCreneaux
		 * @return Asynchronous token
		 */
		public function getAllCreneaux(getAllCreneaux:GetAllCreneaux):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getAllCreneaux"] = getAllCreneaux;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getAllCreneaux");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getRvMedecinJour
		 * @return Asynchronous token
		 */
		public function getRvMedecinJour(getRvMedecinJour:GetRvMedecinJour):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getRvMedecinJour"] = getRvMedecinJour;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getRvMedecinJour");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param ajouterRv
		 * @return Asynchronous token
		 */
		public function ajouterRv(ajouterRv:AjouterRv):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["ajouterRv"] = ajouterRv;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("ajouterRv");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param supprimerRv
		 * @return Asynchronous token
		 */
		public function supprimerRv(supprimerRv:SupprimerRv):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["supprimerRv"] = supprimerRv;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("supprimerRv");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getClientById
		 * @return Asynchronous token
		 */
		public function getClientById(getClientById:GetClientById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getClientById"] = getClientById;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getClientById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getMedecinById
		 * @return Asynchronous token
		 */
		public function getMedecinById(getMedecinById:GetMedecinById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getMedecinById"] = getMedecinById;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getMedecinById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getRvById
		 * @return Asynchronous token
		 */
		public function getRvById(getRvById:GetRvById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getRvById"] = getRvById;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getRvById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param getCreneauById
		 * @return Asynchronous token
		 */
		public function getCreneauById(getCreneauById:GetCreneauById):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["getCreneauById"] = getCreneauById;
	            currentOperation = BaseWsDaoJpaServiceService.getPort("BaseWsDaoJpaServicePort").binding.portType.getOperation("getCreneauById");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
        {
	    	var enc:SOAPEncoder = new SOAPEncoder();
	        var soap:Object = new Object;
	        var message:SOAPMessage = new SOAPMessage();
	        enc.wsdlOperation = operation;
	        soap = enc.encodeRequest(args,headers);
	        message.setSOAPAction(operation.soapAction);
	        message.body = soap.toString();
	        message.url=endpointURI;
            var inv:AsyncRequest = new AsyncRequest();
            inv.destination = super.destination;
            //we need this to handle multiple asynchronous calls 
            var wrappedData:Object = new Object();
            wrappedData.operation = currentOperation;
            wrappedData.returnToken = token;
            if(!this.useProxy)
            {
            	var dcs:ChannelSet = new ChannelSet();	
	        	dcs.addChannel(new DirectHTTPChannel("direct_http_channel"));
            	inv.channelSet = dcs;
            }                
            var processRes:AsyncResponder = new AsyncResponder(processResult,faultResult,wrappedData);
            inv.invoke(message,processRes);
		}
        
        /**
         * Internal event handler to process a successful operation call from the server
         * The result is decoded using the schema and operation settings and then the events get passed on to the actual facade that the user employs in the application 
         * @private
         */
		private function processResult(result:Object,wrappedData:Object):void
           {
           		var headers:Object;
           		var token:AsyncToken = wrappedData.returnToken;
                var currentOperation:WSDLOperation = wrappedData.operation;
                var decoder:SOAPDecoder = new SOAPDecoder();
                decoder.resultFormat = "object";
                decoder.headerFormat = "object";
                decoder.multiplePartsFormat = "object";
                decoder.ignoreWhitespace = true;
                decoder.makeObjectsBindable=false;
                decoder.wsdlOperation = currentOperation;
                decoder.schemaManager = currentOperation.schemaManager;
                var body:Object = result.message.body;
                var stringResult:String = String(body);
                if(stringResult == null  || stringResult == "")
                	return;
                var soapResult:SOAPResult = decoder.decodeResponse(result.message.body);
                if(soapResult.isFault)
                {
	                var faults:Array = soapResult.result as Array;
	                for each (var soapFault:Fault in faults)
	                {
		                var soapFaultEvent:FaultEvent = FaultEvent.createEvent(soapFault,token,null);
		                token.dispatchEvent(soapFaultEvent);
	                }
                } else {
	                result = soapResult.result;
	                headers = soapResult.headers;
	                var event:ResultEvent = ResultEvent.createEvent(result,token,null);
	                event.headers = headers;
	                token.dispatchEvent(event);
                }
           }
           	/**
           	 * Handles the cases when there are errors calling the operation on the server
           	 * This is not the case for SOAP faults, which is handled by the SOAP decoder in the result handler
           	 * but more critical errors, like network outage or the impossibility to connect to the server
           	 * The fault is dispatched upwards to the facade so that the user can do something meaningful 
           	 * @private
           	 */
			private function faultResult(error:MessageFaultEvent,token:Object):void
			{
				//when there is a network error the token is actually the wrappedData object from above	
				if(!(token is AsyncToken))
					token = token.returnToken;
				token.dispatchEvent(new FaultEvent(FaultEvent.FAULT,true,true,new Fault(error.faultCode,error.faultString,error.faultDetail)));
			}
		}
	}

	import mx.rpc.AsyncToken;
	import mx.rpc.AsyncResponder;
	import mx.rpc.wsdl.WSDLBinding;
                
    /**
     * Internal class to handle multiple operation call scheduling
     * It allows us to pass data about the operation being encoded / decoded to and from the SOAP encoder / decoder units. 
     * @private
     */
    class PendingCall
    {
		public var args:*;
		public var headers:Array;
		public var token:AsyncToken;
		
		public function PendingCall(args:Object, headers:Array=null)
		{
			this.args = args;
			this.headers = headers;
			this.token = new AsyncToken(null);
		}
	}