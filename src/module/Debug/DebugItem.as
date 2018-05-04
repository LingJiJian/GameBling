package module.Debug
{
	import laya.ui.Box;
	import laya.ui.TextInput;
	import laya.ui.Button;
	import laya.events.Event;
	import module.Debug.DebugProxy;

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
				}
			}
		}
	}

}