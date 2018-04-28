package module.Main
{
	import ui.Mainui.MainJoinRoomUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import module.Common.UIManager;
	import module.Main.MainProxy;

	public class MainJoinRoom extends MainJoinRoomUI implements IUIBase {

		public function MainJoinRoom(){
			
		}

		public function onOpen(param:Object):void{

			this.btn_close.on(Event.CLICK,this,onBtnClose);
			this.btn_join.on(Event.CLICK,this,onBtnJoin);
		}

		public function onClose():void{
			this.btn_close.off(Event.CLICK,this,onBtnClose);
			this.btn_join.off(Event.CLICK,this,onBtnJoin);
		}

		public function onBtnJoin(e:Event):void
		{
			MainProxy.GetInstance().reqJoinRoom({'roomid':parseInt(this.input_text.text,10),'gameid':'NiuNiu'});
		}

		public function onBtnClose(e:Event):void
		{
			UIManager.GetInstance().hideView("MainJoinRoom");
		}
	}

}