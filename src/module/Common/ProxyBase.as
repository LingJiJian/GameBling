package module.Common
{
	import module.Common.UIManager;
	import laya.events.EventDispatcher;

	public class ProxyBase extends EventDispatcher {

		protected var isAlertError:Boolean = true;
		public function onMsg(msg:Object):void{
			if(this.hasOwnProperty(msg['msgid'])){
				if(msg['ret'] == 0){
					this[msg['msgid']](msg);
				}else{
					if(isAlertError){
						UIManager.GetInstance().showView("Alert",{text:msg['msg']});
					}
				}
			}
		}
	}

}