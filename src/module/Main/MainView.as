package module.Main
{
	import ui.Mainui.MainuiUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import laya.ui.DialogManager;
	import module.Common.UIManager;

	public class MainView extends MainuiUI implements IUIBase {
		public function MainView(){

		}

		public function onOpen():void{
			this.btn_create.on(Event.CLICK,this,onBtnCreate);
			this.btn_join.on(Event.CLICK,this,onBtnJoin);
		}

		public function onClose():void{
			this.btn_create.off(Event.CLICK,this,onBtnCreate);
			this.btn_join.off(Event.CLICK,this,onBtnJoin);
		}

		public function onBtnCreate(e:Event):void{
			UIManager.GetInstance().showView("MainCreateRoom");
		}

		public function onBtnJoin(e:Event):void{
			UIManager.GetInstance().showView("MainJoinRoom");
		}
	}

}