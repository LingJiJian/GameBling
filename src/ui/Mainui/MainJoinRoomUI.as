/**Created by the LayaAirIDE,do not modify.*/
package ui.Mainui {
	import laya.ui.*;
	import laya.display.*; 

	public class MainJoinRoomUI extends Dialog {
		public var btn_close:Button;
		public var btn_1:Button;
		public var btn_2:Button;
		public var btn_3:Button;
		public var btn_4:Button;
		public var btn_5:Button;
		public var btn_6:Button;
		public var btn_7:Button;
		public var btn_8:Button;
		public var btn_9:Button;
		public var btn_clean:Button;
		public var btn_0:Button;
		public var btn_delete:Button;
		public var btn_join:Button;
		public var input_text:TextInput;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":1280,"height":720},"child":[{"type":"Image","props":{"y":172,"x":410,"width":482,"skin":"comp/bg.png","sizeGrid":"36,26,15,17","height":335}},{"type":"Button","props":{"y":176,"x":858,"var":"btn_close","skin":"comp/btn_close.png"}},{"type":"Button","props":{"y":301,"x":469,"var":"btn_1","skin":"comp/button.png","label":"1"}},{"type":"Button","props":{"y":300,"x":588,"var":"btn_2","skin":"comp/button.png","label":"2"}},{"type":"Button","props":{"y":301,"x":735,"var":"btn_3","skin":"comp/button.png","label":"3"}},{"type":"Button","props":{"y":343,"x":468,"var":"btn_4","skin":"comp/button.png","label":"4"}},{"type":"Button","props":{"y":341,"x":588,"var":"btn_5","skin":"comp/button.png","label":"5"}},{"type":"Button","props":{"y":343,"x":733,"var":"btn_6","skin":"comp/button.png","label":"6"}},{"type":"Button","props":{"y":382,"x":469,"var":"btn_7","skin":"comp/button.png","label":"7"}},{"type":"Button","props":{"y":380,"x":589,"var":"btn_8","skin":"comp/button.png","label":"8"}},{"type":"Button","props":{"y":382,"x":734,"var":"btn_9","skin":"comp/button.png","label":"9"}},{"type":"Button","props":{"y":422,"x":469,"var":"btn_clean","skin":"comp/button.png","label":"重输"}},{"type":"Button","props":{"y":420,"x":589,"var":"btn_0","skin":"comp/button.png","label":"0"}},{"type":"Button","props":{"y":422,"x":734,"var":"btn_delete","skin":"comp/button.png","label":"删除"}},{"type":"Label","props":{"y":174,"x":606,"text":"加入房间","fontSize":22}},{"type":"Button","props":{"y":457,"x":593,"var":"btn_join","skin":"comp/button.png","label":"加入"}},{"type":"TextInput","props":{"y":229,"x":539,"width":222,"var":"input_text","text":"0","height":30,"fontSize":25,"align":"center"}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}