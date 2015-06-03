package com.nexters
{
	import flash.utils.Dictionary;
	
	/**
	 * ...
	 * @author Dmitry Malugin
	 */
	
	
	public class Map implements IMap
	{
		private var _length:int;
		private var _content:Dictionary;
		
		
		/**
		 * Initialize the Map.
		 *
		 */
		public function Map()
		{
			_length = 0;
			_content = new Dictionary();
		}
		
		/**
		 * Adds key value pair to the map
		 *
		 * @param key unique value, identifier  for a next parameter
		 * @param value
		 * @return Boolean true if operation is successful,
		 * false if key already exists
		 */
		public function put(key:*, value:*):Boolean
		{
			if (key == null)
			{
				throw new ArgumentError("cannot put a value with undefined or null key!");
				return undefined;
			}
			else
			{
				var exist:Boolean = contains(key);
				if (!exist)
				{
					_length++;
					_content[key] = value;
					return true;
				}
				else
				{
					return false;
				}
				
			}
		}
		
		/**
		 * Removes key value pair from the map
		 *
		 * @param key unique value, identifier  for a next parameter
		 * @return Boolean - true if key existed and has been removed, false otherwise
		 */
		public function remove(key:*):Boolean
		{
			var exist:Boolean = contains(key);
			if (!exist)
			{
				return false;
			}
			delete _content[key];
			_length--;
			return true;
		}
		
		
		/**
		 * Cleans map and sets it's length to zero
		 *
		 */
		public function clean():void
		{
			_length = 0;
			_content = new Dictionary();
		}
		
		/**
		 * Gets value by ti's key
		 *
		 * @param key unique value
		 * @return Object, value for this key
		 */
		public function get(key:*):*
		{
			var value:* = _content[key];
			if (value !== undefined)
			{
				return value;
			}
			return null;
		}
		
		/**
		 * Gets all keys as Iterator
		 *
		 * @return IIterator containing all keys
		 */
		public function get keys():IIterator
		{
			var temp:Array = new Array(_length);
			var index:int = 0;
			for (var i:*in _content)
			{
				temp[index] = i;
				index++;
			}
			return new Iterator(temp) as IIterator;
		}
		
		/**
		 * Gets all values as Iterator
		 *
		 * @return Iterator containing all values
		 */
		public function get values():IIterator
		{
			var temp:Array = new Array(_length);
			var index:int = 0;
			for each (var i:*in _content)
			{
				temp[index] = _content[i];
				index++;
			}
			return new Iterator(temp) as IIterator;
		}
		
		/**
		 * Returns length of the map.
		 *
		 * @return int length of the map.
		 */
		public function get size():int
		{
			var n:int = 0;
			for (var i:*in _content)
			{
				n++;
			}
			return n;
		}
		
		/**
		 * Returns true if key exists in map, false otherwise
		 *
		 * @return Boolean
		 */
		public function contains(key:*):Boolean
		{
			if (_content[key])
			{
				return true;
			}
			return false;
		}
	
	}

}