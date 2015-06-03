package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import com.nexters.*;
	import com.nexters.benchmark;
	
	/**
	 * ...
	 * @author Dmitry Malugin
	 */
	
	[SWF(width="700",height="500", backgroundColor="#FFFFFF",frameRate="30")]
	public class Main extends Sprite
	{
		
		private var _text:TextField;
		
		private var _set:Set = new Set();
		private var _map:Map = new Map();
		private var _iterator:Iterator = new Iterator();
		
		
		private var _objectForTests:Object;
		
		
		public function Main()
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			makeOutput();
			makeBenchMarks();
		}
		
		private function makeOutput():void
		{
			_text = new TextField();
			_text.width = 700;
			_text.height = 500;
			addChild(_text);
			_text.text = "Set benchmarks:\n\n";
			//trace(_text.text);
		}
		
		private function makeBenchMarks():void
		{
			_text.appendText("create set with 100 000 objects: " + benchmark(createSet) + "\n");
			//_text.appendText("size of the created set: " + _set.size + "\n");
			_objectForTests = { id: 100001, someText: "txt2" };
			_set.add(_objectForTests);
			_text.appendText("test object in set found for: " + benchmark(testSetContains) + "\n");
			_text.appendText("test object in set removed for: " + benchmark(testSetRemove) + "\n");
			_text.appendText("set size was gotten for: " + benchmark(testSetSize) + "\n\n");
			_text.appendText("Map benchmarks:\n\n");
			_text.appendText("create map with 100 000 key-value pairs: " + benchmark(createMap) + "\n");
			_map.put("somekey", _objectForTests);
			_text.appendText("test object in map found for: " + benchmark(testMapContains) + "\n");
			_text.appendText("test object in map removed for: " + benchmark(testMapRemove) + "\n");
			_text.appendText("map size was gotten for: " + benchmark(testMapSize) + "\n\n");
			_text.appendText("Iterator benchmarks:\n\n");
			_text.appendText("create iterator with 100 000 objects: " + benchmark(createIterator) + "\n");
			_text.appendText("loop over iterator with 100 000 objects: " + benchmark(loopIterator) + "\n");
			
		}
		
		private function createSet():void
		{
			for (var i:int = 0; i < 100000; i++)
			{
				_set.add( { id: i, someText: "txt" } );
			}
		}
		
		private function testSetContains():void
		{
			_text.appendText("is set contains test object: " + _set.contains(_objectForTests) + "\n");
		}
		
		private function testSetRemove():void
		{
			_text.appendText("is set removed test object: " + _set.remove(_objectForTests) + "\n");
		}
		
		private function testSetSize():void
		{
			_text.appendText("set size: " + _set.size + "\n");
		}
		
		private function createMap():void
		{
			for (var i:int = 0; i < 100000; i++)
			{
				_map.put( i, { id: i, someText: "txt" } );
			}
		}
		
		private function testMapContains():void
		{
			_text.appendText("is map contains test object: " + _map.contains("somekey") + "\n");
		}
		
		private function testMapRemove():void
		{
			_text.appendText("is map removed test object: " + _map.remove("somekey") + "\n");
		}
		
		private function testMapSize():void
		{
			_text.appendText("map size: " + _map.size + "\n");
		}
		
		private function createIterator():void
		{
			for (var i:int = 0; i < 100000; i++)
			{
				_iterator.add({ id: i, someText: "txt" } );
			}
		}
		
		private function loopIterator():void
		{
			_iterator.reset();
			while (_iterator.hasNext())
			{
				_iterator.getNext();
			}
		}
	
	}

}