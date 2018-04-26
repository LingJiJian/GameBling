package module.G_NIUNIU
{
	import ui.G_NIUNIU.G_NIUNIUUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import module.Common.UIManager;

	public class NIUNIUView extends G_NIUNIUUI implements IUIBase {
		public function NIUNIUView(){

		}

		public function onOpen():void{
			this.btn_back.on(Event.CLICK,this,onBtnBack);
		}
		public function onClose():void{
			this.btn_back.off(Event.CLICK,this,onBtnBack);
		}

		public function onBtnBack(e:Event):void
		{
			UIManager.GetInstance().closeAll();
			UIManager.GetInstance().showView("MainView");
		}
	}

}