package com.nexters 
{
	/**
	 * ...
	 * @author Dmitry Malugin
	 */
	
	 
	public class Set implements ISet
	{
		private var _keys:Map;
		
		
		/**
		 * Initialize the Set.
		 *
		 */
		public function Set() 
		{
			_keys = new Map();
		}
		
		/**
		 * Adds key value pair to the map
		 *
		 * @param key unique value in a set
		 * @return Boolean true if operation is successful,
		 * false if key already exists in a set
		 */
		public function add(key:*):Boolean
		{
			return _keys.put(key, "t");
		}
		
		/**
		 * Removes key from the set
		 *
		 * @param key unique value in a set
		 * @return Boolean - true if key existed and has been removed, false otherwise
		 */
		public function remove(key:*):Boolean
		{
			return _keys.remove(key);
		}
		
		/**
		 * Cleans set
		 *
		 */
		public function clean():void
		{
			_keys = new Map();
		}
		
		/**
		 * Gets all keys in a set as Iterator
		 *
		 * @return IIterator containing all keys
		 */
		public function get iterator():IIterator
		{
			return _keys.keys;
		}
		
			/**
		 * Returns length of the set.
		 *
		 * @return int length of the set.
		 */
		public 	function get size():int
		{
			return _keys.size;
		}
		
		/**
		 * Returns true if key exists in set, false otherwise
		 *
		 * @return Boolean
		 */
		public function contains(key:*):Boolean
		{
			return _keys.contains(key);
		}
		
		
		
	}

}