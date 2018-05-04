package module.Debug
{
	import module.Common.Network;
	import module.Common.MsgIds;

	public class DebugProxy{

		private static var _instance:DebugProxy;
		public static function GetInstance():DebugProxy {
			if(_instance == null){
				_instance = new DebugProxy();
			}
			return _instance;
		}

		public function DebugProxy(){
			
		}

		public function reqSvrDebug(param:Object):void 
		{
			Network.GetInstance().send("Debug",{msgid:MsgIds.Debug_Svr,param:param});
		}

		public function rspSvrDebug(param:Object):void
		{

		}
	}
}