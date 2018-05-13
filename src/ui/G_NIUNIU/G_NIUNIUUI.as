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
		public var p_card2:Box;
		public var p_card3:Box;
		public var p_card4:Box;
		public var p_card5:Box;
		public var p_card1:Box;
		public var lab_roomid:Text;
		public var p_betother:Box;
		public var p_deal:Box;
		public var lab_nickname:Text;
		public var lab_id:Text;
		public var p_area1:Clip;
		public var p_area2:Clip;
		public var p_area3:Clip;
		public var p_area4:Clip;
		public var img_niu1:Image;
		public var img_niu2:Image;
		public var img_niu3:Image;
		public var img_niu4:Image;
		public var img_niu5:Image;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1280,"height":720},"child":[{"type":"Button","props":{"y":29,"x":16,"var":"btn_back","skin":"comp/button.png","labelSize":24,"label":"返回","height":30}},{"type":"Button","props":{"y":60,"x":735,"width":88,"var":"btn_pos","skin":"comp/button.png","labelSize":24,"label":"上庄","height":39}},{"type":"Button","props":{"y":614,"x":360,"var":"btn_bet1","skin":"comp/btn_green.png","label":"10"}},{"type":"Button","props":{"y":613,"x":468,"var":"btn_bet2","skin":"comp/btn_green.png","label":"100"}},{"type":"Button","props":{"y":613,"x":561,"var":"btn_bet3","skin":"comp/btn_green.png","label":"1000"}},{"type":"Button","props":{"y":614,"x":663,"var":"btn_bet4","skin":"comp/btn_green.png","label":"5000"}},{"type":"Button","props":{"y":614,"x":764,"var":"btn_bet5","skin":"comp/btn_green.png","label":"10000"}},{"type":"Button","props":{"y":608,"x":899,"width":113,"var":"btn_history","skin":"comp/button.png","labelSize":24,"label":"走势","height":45}},{"type":"Button","props":{"y":105,"x":848,"width":99,"var":"btn_pool","skin":"comp/button.png","labelSize":24,"label":"奖池","height":37}},{"type":"Label","props":{"y":576,"x":349,"width":444,"text":"正在下注","height":30,"fontSize":30,"color":"#000000","align":"center"}},{"type":"Image","props":{"y":60,"x":317,"skin":"comp/banker.png"}},{"type":"Image","props":{"y":88,"x":425,"var":"icon1","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead","pivotY":33,"pivotX":33},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headgril.png","name":"icon"}}]},{"type":"Image","props":{"y":254,"x":146,"var":"icon2","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead","pivotY":33,"pivotX":33},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":347,"x":146,"var":"icon3","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead","pivotY":33,"pivotX":33},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":440,"x":146,"var":"icon4","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead","pivotY":33,"pivotX":33},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":533,"x":146,"var":"icon5","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead","pivotY":33,"pivotX":33},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":221,"x":1074,"var":"icon6","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":410,"x":1074,"var":"icon7","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":316,"x":1074,"var":"icon8","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Image","props":{"y":505,"x":1074,"var":"icon9","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]},{"type":"Box","props":{"y":478,"x":281,"width":50,"var":"p_card2","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":478,"x":478,"width":50,"var":"p_card3","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":478,"x":675,"width":50,"var":"p_card4","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":478,"x":872,"width":50,"var":"p_card5","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":82,"x":517,"width":50,"var":"p_card1","pivotY":25,"pivotX":25,"height":50}},{"type":"Text","props":{"y":26,"x":127,"width":192,"var":"lab_roomid","text":"房间ID:","height":34,"fontSize":25,"color":"#ffffff"}},{"type":"Box","props":{"y":641,"x":1114,"width":50,"var":"p_betother","pivotY":25,"pivotX":25,"height":50}},{"type":"Box","props":{"y":1,"x":624,"width":50,"var":"p_deal","pivotY":25,"pivotX":25,"height":50}},{"type":"Text","props":{"y":602,"x":129,"var":"lab_nickname","text":"nickname","fontSize":24,"color":"#ffffff"}},{"type":"Text","props":{"y":631,"x":127,"var":"lab_id","text":"ID:1000","fontSize":24,"color":"#ffffff"}},{"type":"Clip","props":{"y":349,"x":314,"width":193,"var":"p_area1","skin":"comp/clip_betselect.png","sizeGrid":"10,10,10,10","pivotY":90,"pivotX":98,"index":1,"height":176,"clipY":52,"clipX":54,"clipWidth":54,"clipHeight":52}},{"type":"Clip","props":{"y":349,"x":513,"width":193,"var":"p_area2","skin":"comp/clip_betselect.png","sizeGrid":"10,10,10,10","pivotY":90,"pivotX":98,"index":1,"height":176,"clipY":52,"clipX":54,"clipWidth":54,"clipHeight":52}},{"type":"Clip","props":{"y":349,"x":712,"width":193,"var":"p_area3","skin":"comp/clip_betselect.png","sizeGrid":"10,10,10,10","pivotY":90,"pivotX":98,"index":1,"height":176,"clipY":52,"clipX":54,"clipWidth":54,"clipHeight":52}},{"type":"Clip","props":{"y":349,"x":911,"width":193,"var":"p_area4","skin":"comp/clip_betselect.png","sizeGrid":"10,10,10,10","pivotY":90,"pivotX":98,"index":1,"height":176,"clipY":52,"clipX":54,"clipWidth":54,"clipHeight":52}},{"type":"Image","props":{"y":133,"x":575,"visible":false,"var":"img_niu1","skin":"poker/niu0.png"}},{"type":"Image","props":{"y":526,"x":255,"visible":false,"var":"img_niu2","skin":"poker/niu0.png"}},{"type":"Image","props":{"y":526,"x":454,"visible":false,"var":"img_niu3","skin":"poker/niu0.png"}},{"type":"Image","props":{"y":526,"x":652,"visible":false,"var":"img_niu4","skin":"poker/niu0.png"}},{"type":"Image","props":{"y":526,"x":851,"visible":false,"var":"img_niu5","skin":"poker/niu0.png"}}]};
		override protected function createChildren():void {
			View.regComponent("module.Common.view.PlayerHead",PlayerHead);
			View.regComponent("Text",Text);
			super.createChildren();
			createView(uiView);

		}

	}
}