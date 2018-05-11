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

		//获取资产
		public function getAssets(type:int):int
		{
			return this._assets[type];
		}

		public function setAssets(type:int,value:int):void
		{
			this._assets[type] = value;
		}

		public function setAssetsData(param:Object):void
		{
			for(var type:int in param)
			{
				this._assets[type] = param[type];
			}
		}

	}

}