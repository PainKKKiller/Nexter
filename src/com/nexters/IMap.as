package com.nexters
{
	
	public interface IMap
	{
		function put(key:*, value:*):Boolean;
		function remove(key:*):Boolean;
		function clean():void;
		function get(key:*):*;
		function get keys():IIterator;
		function get values():IIterator;
		function get size():int;
		function contains(key:*):Boolean;
	
	}

}