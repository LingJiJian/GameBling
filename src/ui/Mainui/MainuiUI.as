/**Created by the LayaAirIDE,do not modify.*/
package ui.Mainui {
	import laya.ui.*;
	import laya.display.*; 

	public class MainuiUI extends View {
		public var lab_nickname:Label;
		public var lab_id:Label;
		public var btn_sign:Button;
		public var btn_create:Button;
		public var btn_join:Button;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1280,"height":720},"child":[{"type":"Label","props":{"y":8,"x":98,"var":"lab_nickname","text":"nickname","fontSize":24,"color":"#ffffff","align":"center"}},{"type":"Label","props":{"y":42,"x":98,"var":"lab_id","text":"ID:1000","fontSize":24,"color":"#ffffff","align":"center"}},{"type":"Button","props":{"y":129,"x":54,"var":"btn_sign","skin":"comp/button.png","label":"签到"}},{"type":"Button","props":{"y":270,"x":338,"width":176,"var":"btn_create","skin":"comp/button.png","sizeGrid":"5,5,5,5","label":"创建房间","height":166}},{"type":"Button","props":{"y":663,"x":544,"width":119,"var":"btn_join","skin":"comp/button.png","sizeGrid":"5,5,5,5","label":"加入房间","height":33}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}