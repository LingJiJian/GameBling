/**Created by the LayaAirIDE,do not modify.*/
package ui.Mainui {
	import laya.ui.*;
	import laya.display.*; 
	import module.Common.view.PlayerHead;

	public class MainuiUI extends View {
		public var lab_nickname:Label;
		public var lab_id:Label;
		public var btn_sign:Button;
		public var btn_create:Button;
		public var btn_join:Button;
		public var head:PlayerHead;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":1280,"height":720},"child":[{"type":"Label","props":{"y":8,"x":98,"var":"lab_nickname","text":"nickname","fontSize":24,"color":"#ffffff","align":"center"}},{"type":"Label","props":{"y":42,"x":98,"var":"lab_id","text":"ID:1000","fontSize":24,"color":"#ffffff","align":"center"}},{"type":"Button","props":{"y":183,"x":43,"var":"btn_sign","skin":"comp/button.png","label":"签到"}},{"type":"Button","props":{"y":270,"x":338,"width":176,"var":"btn_create","skin":"comp/button.png","sizeGrid":"5,5,5,5","label":"创建房间","height":166}},{"type":"Button","props":{"y":510,"x":366,"width":119,"var":"btn_join","skin":"comp/button.png","sizeGrid":"5,5,5,5","label":"加入房间","height":33}},{"type":"Image","props":{"y":9,"x":21,"var":"head","skin":"comp/user.png","runtime":"module.Common.view.PlayerHead"},"child":[{"type":"Image","props":{"y":1,"x":1,"skin":"comp/headboy.png","name":"icon"}}]}]};
		override protected function createChildren():void {
			View.regComponent("module.Common.view.PlayerHead",PlayerHead);
			super.createChildren();
			createView(uiView);

		}

	}
}