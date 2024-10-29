/**
 * GetAllClientsResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package generated.webservices
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetAllClientsResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetAllClientsResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addClientAt(item:Client,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addClient(item:Client):void 
		{
			addItem(item);
		} 

		public function getClientAt(index:int):Client 
		{
			return getItemAt(index) as Client;
		}

		public function getClientIndex(item:Client):int 
		{
			return getItemIndex(item);
		}

		public function setClientAt(item:Client,index:int):void 
		{
			setItemAt(item,index);
		}

		public function asIList():IList 
		{
			return this as IList;
		}
        
		public function asICollectionView():ICollectionView 
		{
			return this as ICollectionView;
		}
	}
}
