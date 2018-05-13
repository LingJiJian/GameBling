/**Created by the LayaAirIDE,do not modify.*/
package ui.Comm {
	import laya.ui.*;
	import laya.display.*; 
	import laya.display.Text;

	public class AlertUI extends Dialog {
		public var lab_text:Text;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Dialog","props":{"width":1280,"height":720},"child":[{"type":"Image","props":{"y":288,"x":483,"width":312,"skin":"comp/bg.png","sizeGrid":"33,20,13,12","height":70}},{"type":"Text","props":{"y":323,"x":495,"width":288,"var":"lab_text","text":"提示","height":26,"fontSize":25,"color":"#000000","align":"center"}}]};
		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			createView(uiView);

		}

	}
}