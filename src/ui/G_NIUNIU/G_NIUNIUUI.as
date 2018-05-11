/**Created by the LayaAirIDE,do not modify.*/
package ui.G_NIUNIU {
	import laya.ui.*;
	import laya.display.*; 
	import module.Common.view.PlayerHead;
	import laya.display.Text;

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
		public var icon1:PlayerHead;
		public var icon2:PlayerHead;
		public var icon3:PlayerHead;
		public var icon4:PlayerHead;
		public var icon5:PlayerHead;
		public var icon6:PlayerHead;
		public var icon7:PlayerHead;
		public var icon8:PlayerHead;
		public var icon9:PlayerHead;
		public var p_area1:Box;
		public var p_area2:Box;
		public var p_area3:Box;
		public var p_area4:Box;
		public var p_card:Box;
		public var lab_roomid:Text;
		public var p_area0:Box;
		public var p_deal:Box;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1280,"height":720},"child":[{"type":"Button","props":{"y":29,"x":16,"var":"btn_back","skin":"comp/button.png","labelSize":24,"label":"返回","height":30}},{"type":"Button","props":{"y":60,"x":735,"width":88,"var":"btn_pos","skin":"comp/button.png","labelSize":24,"label":"上庄","height":39}},{"type":"Button","props":{"y":614,"x":360,"var":"btn_bet1","skin":"comp/btn_green.png","label":"10"}},{"type":"Button","props":{"y":613,"x":468,"var":"btn_bet2","skin":"comp/btn_green.png","label":"100"}},{"type":"Button","props":{"y":613,"x":561,"var":"btn_bet3","skin":"comp/btn_green.png","label":"1000"}},{"type":"Button","props":{"y":614,"x":663,"var":"btn_bet4","skin":"comp/btn_green.png","label":"5000"}},{"type":"Button","props":{"y":614,"x":764,"var":"btn_bet5","skin":"comp/btn_green.png","label":"10000"}},{"type":"Button","props":{"y":608,"x":899,"width":113,"var":"btn_history","skin":"comp/button.png","labelSize":24,"label":"走势","height":45}},{"type":"Button","props":{"y":105,"x":848,"width":99,"var":"btn_pool","skin":"comp/button.png","labelSize":24,"label":"奖池","height":37}},{"type":"Label","props":{"y":576,"x":349,"width":444,"text":"正在下注","height":30,"fontSize":30,"color":"#000000","align":"center"}},{"type":"Image","props":{"y":60,"x":317,"skin":"comp/banker.png"}},{"type":"Image","props":{"y":55,"x":392,"var":"icon1","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headgril.png","name":"icon"}}]},{"type":"Image","props":{"y":221,"x":113,"var":"icon2","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":314,"x":113,"var":"icon3","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":407,"x":113,"var":"icon4","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":500,"x":113,"var":"icon5","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":221,"x":1074,"var":"icon6","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":410,"x":1074,"var":"icon7","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":316,"x":1074,"var":"icon8","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":505,"x":1074,"var":"icon9","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":247,"x":223,"width":192,"skin":"comp/bg_alert.png","sizeGrid":"12,14,13,11","height":177},"child":[{"type":"Box","props":{"y":92,"x":94,"width":50,"var":"p_area1","pivotY":25,"pivotX":25,"height":50}}]},{"type":"Image","props":{"y":247,"x":421,"width":192,"skin":"comp/bg_alert.png","sizeGrid":"12,14,13,11","height":177},"child":[{"type":"Box","props":{"y":92,"x":93,"width":50,"var":"p_area2","pivotY":25,"pivotX":25,"height":50}}]},{"type":"Image","props":{"y":247,"x":620,"width":192,"skin":"comp/bg_alert.png","sizeGrid":"12,14,13,11","height":177},"child":[{"type":"Box","props":{"y":92,"x":91,"width":50,"var":"p_area3","pivotY":25,"pivotX":25,"height":50}}]},{"type":"Image","props":{"y":245,"x":818,"width":192,"skin":"comp/bg_alert.png","sizeGrid":"12,14,13,11","height":177},"child":[{"type":"Box","props":{"y":65,"x":68,"width":50,"var":"p_area4","height":50}}]},{"type":"Box","props":{"y":482,"x":252,"width":50,"var":"p_card","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":482,"x":449,"width":50,"pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":482,"x":646,"width":50,"pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":482,"x":843,"width":50,"pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":82,"x":517,"width":50,"pivotY":25,"pivotX":25,"height":50}},{"type":"Text","props":{"y":26,"x":108,"width":192,"var":"lab_roomid","text":"房间ID:","height":34,"fontSize":25,"color":"#000000"}},{"type":"Box","props":{"y":641,"x":1114,"width":50,"var":"p_area0","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":1,"x":624,"width":50,"var":"p_deal","pivotY":25,"pivotX":25,"height":50}}]};
		override protected function createChildren():void {
			View.regComponent("module.Common.view.PlayerHead",PlayerHead);
			View.regComponent("Text",Text);
			super.createChildren();
			createView(uiView);

		}

	}
}