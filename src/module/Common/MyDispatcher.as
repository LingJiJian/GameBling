package module.Common
{

	import laya.events.EventDispatcher;

	public class MyDispatcher extends EventDispatcher {

		public static var eventDispatcher:EventDispatcher = new EventDispatcher();

		public static function Emit(eventName:String,argv:*=null):void
		{
			MyDispatcher.eventDispatcher.event(eventName,argv);
		}

		public static function AddNotice(eventName:String,caller:*,listener:Function,arg:Array=null):void
		{
			MyDispatcher.eventDispatcher.on(eventName,caller,listener,(arg==null)?null:arg);
		}

		public static function RemoveNotice(eventName:String,caller:*,listener:Function):void
		{
			MyDispatcher.eventDispatcher.off(eventName,caller,listener);
		}
	}

}