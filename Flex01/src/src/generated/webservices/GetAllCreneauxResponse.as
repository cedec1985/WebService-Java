/**
 * GetAllCreneauxResponse.as
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

	public class GetAllCreneauxResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetAllCreneauxResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addCreneauAt(item:Creneau,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addCreneau(item:Creneau):void 
		{
			addItem(item);
		} 

		public function getCreneauAt(index:int):Creneau 
		{
			return getItemAt(index) as Creneau;
		}

		public function getCreneauIndex(item:Creneau):int 
		{
			return getItemIndex(item);
		}

		public function setCreneauAt(item:Creneau,index:int):void 
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