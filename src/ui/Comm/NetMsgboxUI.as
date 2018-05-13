/**Created by the LayaAirIDE,do not modify.*/
package ui.Comm {
	import laya.ui.*;
	import laya.display.*; 

	public class NetMsgboxUI extends Dialog {
		public var btn_conn:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":1280,"height":720},"child":[{"type":"Image","props":{"y":174,"x":445,"width":509,"skin":"comp/bg.png","sizeGrid":"31,19,22,13","height":269}},{"type":"Button","props":{"y":342,"x":664,"width":75,"var":"btn_conn","skin":"comp/button.png","labelSize":22,"label":"重连","height":37}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}