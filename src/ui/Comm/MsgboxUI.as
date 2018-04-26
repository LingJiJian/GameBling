/**Created by the LayaAirIDE,do not modify.*/
package ui.Comm {
	import laya.ui.*;
	import laya.display.*; 

	public class MsgboxUI extends Dialog {
		public var btn_close:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":1280,"height":720},"child":[{"type":"Image","props":{"y":221,"x":440,"width":416,"skin":"comp/bg.png","sizeGrid":"36,17,17,15","height":253}},{"type":"Button","props":{"y":224,"x":824,"var":"btn_close","skin":"comp/btn_close.png"}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}