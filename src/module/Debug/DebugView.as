package module.Debug
{
	import ui.Debug.DebugViewUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import module.Common.UIManager;
	import laya.utils.Handler;
	import module.Debug.DebugItem;

	public class DebugView extends DebugViewUI implements IUIBase {
		public function DebugView(){
			
			this.list_debug.array = DebugMgr.GetInstance().debugArr;
			this.list_debug.renderHandler = new Handler(this,onUpdateItem);
		}

		public function onOpen(param:Object):void{
			this.btn_close.on(Event.CLICK,this,onBtnClose);
		}
		public function onClose():void{
			this.btn_close.off(Event.CLICK,this,onBtnClose);
		}

		public function onUpdateItem(cell:DebugItem,index:int):void
		{
			cell.setData(index);
		}

		public function onBtnClose(e:Event):void
		{
			UIManager.GetInstance().hideView("DebugView");
		}
	}

}