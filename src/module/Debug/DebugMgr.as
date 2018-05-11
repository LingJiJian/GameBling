package module.Debug
{
	public class DebugMgr{

		private static var _instance:DebugMgr;
		public static function GetInstance():DebugMgr {
			if(_instance == null){
				_instance = new DebugMgr();
			}
			return _instance;
		}

		public var debugArr:Array;

		public function DebugMgr(){
			debugArr = [
				{title:"服务端调试",data:'注入代码'},
				{title:'测试动画',data:''},
			];
		}
	}

}