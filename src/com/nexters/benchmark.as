package com.nexters
{
	/**
	 * ...
	 * @author Dmitry Malugin
	 */
	
	public function benchmark(func:Function):String
	{
		var startTime:Date = new Date();
		
		func();
		
		var endTime:Date = new Date();
		var result:Number = endTime.time - startTime.time;
		//trace("result: " + result);
		return result + " ms";
		
	}

}