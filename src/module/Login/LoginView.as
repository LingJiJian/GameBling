package module.Login
{
	import ui.Login.LoginViewUI
	import laya.events.Event;
	import module.Common.Network;
	import module.Common.IUIBase;
	import module.Common.MsgIds;

	public class LoginView extends LoginViewUI implements IUIBase
	{
		public function LoginView() 
		{
			
		}
		
		private function onBtnLogin(e:Event):void{
			Network.GetInstance().send("Login",{msgid:MsgIds.Login_Login,account:this.input_account.text});
		}

		public function onOpen(param:Object):void{
			this.btn_login.on(Event.CLICK,this,onBtnLogin);
		}

		public function onClose():void{
			this.btn_login.off(Event.CLICK,this,onBtnLogin);
		}
	}

}