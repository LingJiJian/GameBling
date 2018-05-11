package module.Login
{
	import module.Common.Network;
	import module.Common.MsgIds;
	import module.Common.UIManager;
	import module.Common.ProxyBase;
	import module.Money.MoneyMgr;
	import module.Role.RoleMgr;
	import module.Common.MyDispatcher;

	public class LoginProxy extends ProxyBase {

		private static var _instance:LoginProxy;
		public static function GetInstance():LoginProxy {
			if(_instance == null){
				_instance = new LoginProxy();
			}
			return _instance;
		}

		public function LoginProxy()
		{
		}

		public function reqLogin(account:String):void {
			Network.GetInstance().send("Login",{msgid:MsgIds.Login_Login,account:account});
		}
		
		public function rspLogin(msg:Object):void{

			MoneyMgr.GetInstance().setAssetsData(msg.money);
			RoleMgr.GetInstance().setBaseData(msg.account);

			UIManager.GetInstance().closeAll();
			UIManager.GetInstance().showView("MainView");
		}
	}

}