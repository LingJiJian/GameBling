/**Created by the LayaAirIDE,do not modify.*/
package ui.G_NIUNIU {
	import laya.ui.*;
	import laya.display.*; 

	public class G_NIUNIUUI extends View {
		public var btn_back:Button;
		public var btn_pos:Button;
		public var btn_bet1:Button;
		public var btn_bet2:Button;
		public var btn_bet3:Button;
		public var btn_bet4:Button;
		public var btn_bet5:Button;
		public var btn_history:Button;
		public var btn_pool:Button;
		public var p_area1:Box;
		public var p_area2:Box;
		public var p_area3:Box;
		public var p_area4:Box;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1280,"height":720},"child":[{"type":"Button","props":{"y":23,"x":20,"var":"btn_back","skin":"comp/button.png","label":"返回"}},{"type":"Button","props":{"y":95,"x":135,"width":75,"var":"btn_pos","skin":"comp/button.png","label":"上庄","height":33}},{"type":"Button","props":{"y":613,"x":374,"var":"btn_bet1","skin":"comp/button.png","label":"10"}},{"type":"Button","props":{"y":613,"x":468,"var":"btn_bet2","skin":"comp/button.png","label":"100"}},{"type":"Button","props":{"y":613,"x":561,"var":"btn_bet3","skin":"comp/button.png","label":"1000"}},{"type":"Button","props":{"y":613,"x":655,"var":"btn_bet4","skin":"comp/button.png","label":"5000"}},{"type":"Button","props":{"y":613,"x":748,"var":"btn_bet5","skin":"comp/button.png","label":"10000"}},{"type":"Button","props":{"y":596,"x":921,"width":86,"var":"btn_history","skin":"comp/button.png","label":"走势","height":33}},{"type":"Button","props":{"y":105,"x":848,"width":99,"var":"btn_pool","skin":"comp/button.png","labelSize":20,"label":"奖池","height":37}},{"type":"Label","props":{"y":539,"x":381,"width":444,"text":"正在下注","height":30,"fontSize":30,"color":"#000000","align":"center"}},{"type":"Box","props":{"y":281,"x":308,"width":50,"var":"p_area1","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":281,"x":482,"width":50,"var":"p_area2","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":281,"x":656,"width":50,"var":"p_area3","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":281,"x":830,"width":50,"var":"p_area4","pivotY":25,"pivotX":25,"height":50}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}