package module.Main
{
	import module.Common.MsgIds;
	import module.Common.ProxyBase;
	import module.Common.Network;
	import module.Common.UIManager;
	import module.Common.Util;
	import module.Common.MyDispatcher;
	import module.Common.EventIds;

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
			Network.GetInstance().send("Lobby",{msgid:MsgIds.Main_CreateRoom,param:param});
		}

		public function rspCreateRoom(param:Object):void
		{
			UIManager.GetInstance().closeAll();
			UIManager.GetInstance().showView(param['data']['gameid']+"View",param);
		}

		public function reqJoinRoom(param:Object):void
		{
			Network.GetInstance().send("Lobby",{msgid:MsgIds.Main_JoinRoom,param:param});
		}

		public function rspJoinRoom(param:Object):void
		{
			UIManager.GetInstance().closeAll();
			UIManager.GetInstance().showView(param['data']['gameid']+"View",param);
		}

		public function reqLeaveRoom(param:Object):void
		{
			Network.GetInstance().send("Lobby",{msgid:MsgIds.Main_LeaveRoom,param:param}); 
		}

		public function rspLeaveRoom(param:Object):void
		{
			MyDispatcher.Emit(EventIds.Main_LeaveRoom,param.data);
		}

		public function rspPersionJoin(param:Object):void
		{
			MyDispatcher.Emit(EventIds.Main_PersionJoin,param.data);
		}
	}

}