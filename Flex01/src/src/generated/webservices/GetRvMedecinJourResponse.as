/**
 * GetRvMedecinJourResponse.as
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

	public class GetRvMedecinJourResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetRvMedecinJourResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addRvAt(item:Rv,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addRv(item:Rv):void 
		{
			addItem(item);
		} 

		public function getRvAt(index:int):Rv 
		{
			return getItemAt(index) as Rv;
		}

		public function getRvIndex(item:Rv):int 
		{
			return getItemIndex(item);
		}

		public function setRvAt(item:Rv,index:int):void 
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
