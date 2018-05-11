package module.Debug
{
	import laya.ui.Box;
	import laya.ui.TextInput;
	import laya.ui.Button;
	import laya.events.Event;
	import module.Debug.DebugProxy;
	import module.Common.FactoryMgr;
	import module.Common.view.Poker;
	import laya.utils.Tween;
	import laya.utils.Ease;
	import laya.utils.Handler;
	import module.Common.Util;

	public class DebugItem extends Box {
		
		private var index:int;
		private var input:TextInput;

		public function DebugItem()
		{ 
			
		}

		public function setData(index:int):void
		{
			this.index = index;
			input = getChildByName("input_field") as TextInput;
			input.text = dataSource.data;
			var btn_click:Button = getChildByName('btn_click') as Button;
			btn_click.label = dataSource.title;
			btn_click.on(Event.CLICK,this,onBtnClick);
		}

		public function onBtnClick(e:Event):void
		{	
			var data:Object = DebugMgr.GetInstance().debugArr[index];
			if(data){
				if(index == 0){
					DebugProxy.GetInstance().reqSvrDebug(input.text);
				}else if(index == 1){
					var poker:Poker = FactoryMgr.GetInstance().createPoker(0,true);
					poker.x = 100;
					poker.y = 100;
					Tween.to(poker,{x:300},1000,Ease.linearIn,Handler.create(this,function(args,b):void{

					},[poker,2]));
					Laya.stage.addChild(poker);
				}
			}
		}
	}

}