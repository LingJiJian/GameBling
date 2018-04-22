/**Created by the LayaAirIDE,do not modify.*/
package ui.Mainui {
	import laya.ui.*;
	import laya.display.*; 

	public class MainCreateRoomUI extends Dialog {
		public var btn_close:Button;
		public var btn_create:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":1280,"height":720},"child":[{"type":"Image","props":{"y":0,"x":0,"width":1280,"skin":"comp/bg.png","sizeGrid":"36,14,16,11","height":720}},{"type":"Button","props":{"y":3,"x":1247,"var":"btn_close","skin":"comp/btn_close.png"}},{"type":"Button","props":{"y":672,"x":1149,"width":111,"var":"btn_create","skin":"comp/button.png","label":"创建房间","height":34}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}