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

		public var role:Object;

		public function RoleMgr(){
			role = {
				'id' : '',
				'nickname' : '',
				'level' : 0,
				'coin' : 0,
				'gold' : 0,
				'client_id' : '',
				'exp' : 0,
				'vipexp' : 0
			}
		}

		public function setBaseData(param:Object):void
		{
			for(var key:int in param)
			{
				this.role[key] = param[key];
			}
		}
	}

}