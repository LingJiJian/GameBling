package module.G_NIUNIU
{
	import ui.G_NIUNIU.G_NIUNIUUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import module.Common.UIManager;
	import module.G_NIUNIU.NIUNIUProxy;

	public class NiuNiuView extends G_NIUNIUUI implements IUIBase {
		public function NiuNiuView(){
			
		}

		public function onOpen(param:Object):void{
			this.btn_back.on(Event.CLICK,this,onBtnBack);
			this.btn_pos.on(Event.CLICK,this,onBtnPos);
		}
		public function onClose():void{
			this.btn_back.off(Event.CLICK,this,onBtnBack);
			this.btn_pos.off(Event.CLICK,this,onBtnPos);
		}

		public function onBtnPos(e:Event):void
		{
			NIUNIUProxy.GetInstance().reqNiuNiuSetPos({'pos':'banker','target_seatidx':1});
		}

		public function onBtnBack(e:Event):void
		{
			NIUNIUProxy.GetInstance().reqNiuNiuLeave();
		}
	}

}