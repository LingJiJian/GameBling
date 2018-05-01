package module.Common
{

	import laya.debug.tools.JsonTool;

	public class Util{

		public static function dump(obj:Object):void
		{
			
			trace(JsonTool.getJsonString(obj));
		}
	}

}