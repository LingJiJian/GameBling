package module.Main
{
	import module.Common.MsgIds;
	import module.Common.ProxyBase;
	import module.Common.Network;

	public class MainProxy extends ProxyBase{

		private static var _instance:MainProxy;
		public static function GetInstance():MainProxy {
			if(_instance == null){
				_instance = new MainProxy();
			}
			return _instance;
		}

		public function MainProxy(){

		}

		public function reqCreateRoom(param:Object):void
		{
			Network.GetInstance().send("Login",{msgid:MsgIds.Main_CreateRoom,param:param});
		}

		public function rspCreateRoom(obj:Object):void
		{
			
		}
	}

}