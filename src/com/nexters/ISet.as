package com.nexters
{
	
	public interface ISet
	{
		function add(key:*):Boolean;
		function remove(key:*):Boolean;
		function clean():void;
		function get iterator():IIterator;
		function get size():int;
		function contains(key:*):Boolean;
	
	}

}