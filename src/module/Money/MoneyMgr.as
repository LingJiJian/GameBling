package module.Money
{
	public class MoneyMgr{
		
		private static var _instance:MoneyMgr;
		public static function GetInstance():MoneyMgr {
			if(_instance == null){
				_instance = new MoneyMgr();
			}
			return _instance;
		}

		private var _assets:Object;

		public function MoneyMgr(){
			_assets = new Object();
		}

		public function getAssets(type:int):int
		{
			return this._assets[type];
		}

	}

}