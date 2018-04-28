package module.Common.view
{
	import ui.Comm.AlertUI;
	import module.Common.IUIBase;
	import laya.utils.Timer;
	import module.Common.UIManager;

	public class Alert extends AlertUI implements IUIBase {
		public function Alert(){
			
		}

		public function onOpen(param:Object):void
		{
			this.lab_text.text = param.text;

			Laya.timer.once(2000, this, function():void{
				UIManager.GetInstance().hideView("Alert");
			});
		}
		public function onClose():void
		{

		}
	}

}