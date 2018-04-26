package module.Common
{
	public class ProxyBase {

		protected var isAlertError:Boolean = true;
		public function onMsg(msg:Object):void{
			if(this.hasOwnProperty(msg['msgid'])){
				if(msg['ret'] == 0){
					this[msg['msgid']](msg);
				}else{
					if(isAlertError){
						trace(msg);
					}
				}
			}
		}
	}

}