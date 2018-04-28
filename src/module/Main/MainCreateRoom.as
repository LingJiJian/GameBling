package module.Main
{
	import ui.Mainui.MainCreateRoomUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import module.Common.UIManager;
	import module.Main.MainProxy;
	import module.Common.GameConfig;


	public class MainCreateRoom extends MainCreateRoomUI implements IUIBase {
		public function MainCreateRoom(){
			
		}

		public function onOpen(param:Object):void{

			this.btn_close.on(Event.CLICK,this,onBtnClose);
			this.btn_create.on(Event.CLICK,this,onBtnCreate);
		}

		public function onClose():void{

			this.btn_close.off(Event.CLICK,this,onBtnClose);
			this.btn_create.off(Event.CLICK,this,onBtnCreate);
		}

		public function onBtnClose(e:Event):void{

			UIManager.GetInstance().hideView("MainCreateRoom");
		}

		public function onBtnCreate(e:Event):void{
			
			var data:Object = {};
			data.gameid = 'NiuNiu';
			MainProxy.GetInstance().reqCreateRoom(data);
		}
	}

}