/**
 * GetAllMedecinsResponse.as
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

	public class GetAllMedecinsResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetAllMedecinsResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addMedecinAt(item:Medecin,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addMedecin(item:Medecin):void 
		{
			addItem(item);
		} 

		public function getMedecinAt(index:int):Medecin 
		{
			return getItemAt(index) as Medecin;
		}

		public function getMedecinIndex(item:Medecin):int 
		{
			return getItemIndex(item);
		}

		public function setMedecinAt(item:Medecin,index:int):void 
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
