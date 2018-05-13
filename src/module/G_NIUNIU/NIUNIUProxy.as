package module.G_NIUNIU
{
	import module.Common.ProxyBase;
	import module.Common.Network;
	import module.Common.MsgIds;
	import module.Common.UIManager;
	import module.Common.Util;
	import laya.events.EventDispatcher;
	import module.Common.MyDispatcher;
	import module.Common.EventIds;

	public class NIUNIUProxy extends ProxyBase {
		
		private static var _instance:NIUNIUProxy;
		public static function GetInstance():NIUNIUProxy {
			if(_instance == null){
				_instance = new NIUNIUProxy();
			}
			return _instance;
		}
		
		public function NIUNIUProxy(){
			
		}

		public function reqNiuNiuSetPos(param:Object):void 
		{
			Network.GetInstance().send("NiuNiu",{msgid:MsgIds.NiuNiu_SetPos,param:param});
		}

		public function rspNiuNiuSetPos(param:Object):void
		{
			UIManager.GetInstance().showView("Alert",{text:"上庄成功"});
			MyDispatcher.Emit(EventIds.NiuNiu_SetPos,param);
		}

		// public function reqNiuNiuUpdate(param:Object):void 
		// {
		// 	Network.GetInstance().send("NiuNiu",{msgid:MsgIds.NiuNiu_Update,param:param});
		// }

		public function rspNiuNiuUpdate(param:Object):void
		{
			// Util.dump(param);
			MyDispatcher.Emit(EventIds.NiuNiu_Update,param);
		}

		// public function reqNiuNiuSyncGame(param:Object):void 
		// {
		// 	Network.GetInstance().send("NiuNiu",{msgid:MsgIds.NiuNiu_SyncGame,param:param});
		// }

		public function rspNiuNiuSyncGame(param:Object):void
		{
			// Util.dump(param);
			MyDispatcher.Emit(EventIds.NiuNiu_SyncGame,param);
			// MyDispatcher.Emit()
		}

		public function reqNiuNiuBet(betidx:int,betnum:int):void
		{
			Network.GetInstance().send("NiuNiu",{msgid:MsgIds.NiuNiu_Bet,param:{betidx:betidx,betnum:betnum}});
		}

		public function rspNiuNiuBet(param:Object):void
		{
			// Util.dump(param);
			MyDispatcher.Emit(EventIds.NiuNiu_Bet,param);
		}
	}

}