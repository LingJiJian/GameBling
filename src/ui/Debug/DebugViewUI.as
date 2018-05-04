/**Created by the LayaAirIDE,do not modify.*/
package ui.Debug {
	import laya.ui.*;
	import laya.display.*; 
	import module.Debug.DebugItem;

	public class DebugViewUI extends Dialog {
		public var btn_close:Button;
		public var list_debug:List;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":1280,"height":720},"child":[{"type":"Image","props":{"y":80,"x":163,"width":984,"skin":"comp/bg.png","sizeGrid":"36,8,8,9","height":574}},{"type":"Button","props":{"y":82,"x":1116,"var":"btn_close","skin":"comp/btn_close.png"}},{"type":"List","props":{"y":117,"x":183,"width":187,"var":"list_debug","repeatY":8,"repeatX":1,"height":263},"child":[{"type":"Box","props":{"y":0,"x":-1,"width":188,"runtime":"module.Debug.DebugItem","renderType":"render","name":"cell","height":34},"child":[{"type":"TextInput","props":{"y":2,"x":1,"width":100,"text":"TextInput","skin":"comp/textinput.png","name":"input_field","height":30}},{"type":"Button","props":{"y":2,"x":105,"width":80,"skin":"comp/button.png","name":"btn_click","label":"注入代码","height":30}}]}]}]};
		override protected function createChildren():void {
			View.regComponent("module.Debug.DebugItem",DebugItem);
			super.createChildren();
			createView(uiView);

		}

	}
}