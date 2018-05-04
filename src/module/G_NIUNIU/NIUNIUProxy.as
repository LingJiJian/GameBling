package module.G_NIUNIU
{
	import module.Common.ProxyBase;
	import module.Common.Network;
	import module.Common.MsgIds;
	import module.Common.UIManager;
	import module.Common.Util;

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
		}

		// public function reqNiuNiuUpdate(param:Object):void 
		// {
		// 	Network.GetInstance().send("NiuNiu",{msgid:MsgIds.NiuNiu_Update,param:param});
		// }

		public function rspNiuNiuUpdate(param:Object):void
		{
			Util.dump(param);
		}

		// public function reqNiuNiuSyncGame(param:Object):void 
		// {
		// 	Network.GetInstance().send("NiuNiu",{msgid:MsgIds.NiuNiu_SyncGame,param:param});
		// }

		public function rspNiuNiuSyncGame(param:Object):void
		{
			Util.dump(param);
		}

		public function reqNiuNiuBet(param:Object):void
		{
			Network.GetInstance().send("NiuNiu",{msgid:MsgIds.NiuNiu_Bet,param:param});
		}

		public function rspNiuNiuBet(param:Object):void
		{
			Util.dump(param);
		}
	}

}