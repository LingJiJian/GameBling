package module.G_NIUNIU
{
	import ui.G_NIUNIU.G_NIUNIUUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import module.Common.UIManager;
	import module.G_NIUNIU.NIUNIUProxy;
	import module.Main.MainProxy;

	public class NiuNiuView extends G_NIUNIUUI implements IUIBase {
		public function NiuNiuView(){

			for(var i:int=0;i<5;i++)
			{
				this['btn_bet'+(i+1)].label = NIUNIUData.GetInstance().betDefs[i];
			}
		}

		public function onOpen(param:Object):void{
			this.btn_back.on(Event.CLICK,this,onBtnBack);
			this.btn_pos.on(Event.CLICK,this,onBtnPos);

			for(var i:int=0;i<5;i++)
			{
				this['btn_bet'+(i+1)].on(Event.CLICK,this,onBtnBet);
			}
		}
		public function onClose():void{
			this.btn_back.off(Event.CLICK,this,onBtnBack);
			this.btn_pos.off(Event.CLICK,this,onBtnPos);

			for(var i:int=0;i<5;i++)
			{
				this['btn_bet'+(i+1)].off(Event.CLICK,this,onBtnBet);
			}
		}

		public function onBtnBet(e:Event):void
		{
			if (e.currentTarget == this.btn_bet1){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[1]);
			}
			else if (e.currentTarget == this.btn_bet2){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[2]);
			}
			else if (e.currentTarget == this.btn_bet3){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[3]);
			}
			else if (e.currentTarget == this.btn_bet4){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[4]);
			}
			else if (e.currentTarget == this.btn_bet5){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[5]);
			}
		}

		public function onBtnPos(e:Event):void
		{
			NIUNIUProxy.GetInstance().reqNiuNiuSetPos({'pos':'banker','target_seatidx':1});
		}

		public function onBtnBack(e:Event):void
		{
			MainProxy.GetInstance().reqLeaveRoom({'gameid':'NiuNiu'});
		}
	}

}