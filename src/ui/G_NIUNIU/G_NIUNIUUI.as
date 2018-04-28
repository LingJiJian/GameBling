/**Created by the LayaAirIDE,do not modify.*/
package ui.G_NIUNIU {
	import laya.ui.*;
	import laya.display.*; 

	public class G_NIUNIUUI extends View {
		public var btn_back:Button;
		public var btn_pos:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1280,"height":720},"child":[{"type":"Button","props":{"y":37,"x":1165,"var":"btn_back","skin":"comp/button.png","label":"返回"}},{"type":"Button","props":{"y":95,"x":135,"width":75,"var":"btn_pos","skin":"comp/button.png","label":"上庄","height":33}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}