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

		public function NIUNIUData(){
			
		}
		
		public function onClean():void
		{

		}
	}

}