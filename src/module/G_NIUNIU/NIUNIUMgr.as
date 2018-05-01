package module.G_NIUNIU
{
	public class NIUNIUMgr{

		private static var _instance:NIUNIUMgr;
		public static function GetInstance():NIUNIUMgr {
			if(_instance == null){
				_instance = new NIUNIUMgr();
			}
			return _instance;
		}

		public function NIUNIUMgr(){
			
		}
		
	}

}