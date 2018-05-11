package module.Role
{
	// 角色管理器
	public class RoleMgr{

		private static var _instance:RoleMgr;
		public static function GetInstance():RoleMgr {
			if(_instance == null){
				_instance = new RoleMgr();
			}
			return _instance;
		}

		public var baseInfo:Object;

		public function RoleMgr(){
			baseInfo = {
				'id' : '',
				'nickname' : '',
				'exp' : 0,
				'vipexp' : 0,
				'headicon' : ''
			}
		}

		public function setBaseData(param:Object):void
		{
			for(var key:int in param)
			{
				this.baseInfo[key] = param[key];
			}
		}
	}

}