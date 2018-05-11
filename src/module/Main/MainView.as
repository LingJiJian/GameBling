package module.Main
{
	import ui.Mainui.MainuiUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import laya.ui.DialogManager;
	import module.Common.UIManager;
	import module.Role.RoleMgr;

	public class MainView extends MainuiUI implements IUIBase {
		public function MainView(){

		}

		public function onOpen(param:Object):void{
			this.btn_create.on(Event.CLICK,this,onBtnCreate);
			this.btn_join.on(Event.CLICK,this,onBtnJoin);

			this.lab_id.text = 'ID:' + RoleMgr.GetInstance().role.id;
			this.lab_nickname.text = RoleMgr.GetInstance().role.nickname;
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