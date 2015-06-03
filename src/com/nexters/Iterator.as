package com.nexters
{
	
	/**
	 * ...
	 * @author Dmitry Malugin
	 */
	
	public class Iterator implements IIterator
	{
		private var _collection:Array;
		private var _cursor:int;
		
		/**
		 * Initialize the Iterator and maintain a link to it's Collection.
		 *
		 * @param collection to which this Iterator belongs.
		 */
		public function Iterator(collection:Array = null)
		{
			if (collection)
				this._collection = collection;
			else
				_collection = new Array();
			this._cursor = 0;
		}
		
		/**
		 * Resets cursor of the Iterator to start position
		 *
		 */
		public function reset():void
		{
			this._cursor = 0;
		}
		
		/**
		 * Return the next item in the iteration and increment the cursor. Returns null if the
		 * iteration has no more items.
		 *
		 * @return * the next item in the Iteration.
		 */
		public function getNext():*
		{
			if (this.hasNext())
				return (this._collection[this._cursor++]);
			else
				return null;
		}
		
		/**
		 * Returns true if the iteration has more items.
		 *
		 * @return Boolean true if iteration has more items.
		 */
		public function hasNext():Boolean
		{
			return (this._cursor < this._collection.length);
		}
		
		/**
		 * Adds item to collection
		 *
		 * @param item to be added to collection
		 */
		public function add(item:*):void
		{
			_collection.push(item);
			_collection.s
		}
		
		
		/**
		 * Returns length of the iterator.
		 *
		 * @return int length of the iterator.
		 */
		public function get size():int
		{
			return _collection.length;
		}
	
	}

}