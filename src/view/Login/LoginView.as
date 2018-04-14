/**Created by the LayaAirIDE*/
package view.Login
{
	import ui.Login.LoginViewUI
	import laya.events.Event;

	public class LoginView extends LoginViewUI
	{
		public function LoginView() 
		{
			this.btn_login.on(Event.CLICK,this,onBtnLogin);
		}
		
		private function onBtnLogin(e:Event):void{

			trace("登陆:");
		}
	}

}