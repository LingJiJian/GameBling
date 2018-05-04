package module.G_NIUNIU
{
	import module.Common.IData;

	public class NIUNIUData implements IData {

		private static var _instance:NIUNIUData;
		public static function GetInstance():NIUNIUData {
			if(_instance == null){
				_instance = new NIUNIUData();
			}
			return _instance;
		}

		//下注类型
		public var betDefs:Object = { 
				1:100,
				2:500,
				3:1000,
				4:5000,
				5:10000
			};

		public function NIUNIUData(){
			
		}
		
		public function onClean():void
		{

		}
	}

}