package module.Money
{
	import module.Common.ProxyBase;

	public class MoneyProxy extends ProxyBase{
		
		private static var _instance:MoneyProxy;
		public static function GetInstance():MoneyProxy {
			if(_instance == null){
				_instance = new MoneyProxy();
			}
			return _instance;
		}

		public function MoneyProxy(){
			
		}
	}

}