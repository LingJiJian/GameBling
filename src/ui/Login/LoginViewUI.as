/**Created by the LayaAirIDE,do not modify.*/
package ui.Login {
	import laya.ui.*;
	import laya.display.*; 

	public class LoginViewUI extends View {
		public var btn_login:Button;
		public var input_account:TextInput;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1280,"height":720},"child":[{"type":"HBox","props":{"width":300,"height":200,"centerY":0,"centerX":0,"anchorY":0.5,"anchorX":0.5},"child":[{"type":"Button","props":{"y":189,"var":"btn_login","skin":"comp/button.png","name":"btn_login","label":"登陆","centerX":0}},{"type":"TextInput","props":{"y":139,"var":"input_account","prompt":"请输入账号","pivotY":0.5,"pivotX":0.5,"name":"input_accountw","centerX":0,"bgColor":"#c0c0c0","align":"center"}}]}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}