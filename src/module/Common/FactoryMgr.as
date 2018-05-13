package module.Common
{
	import laya.display.Sprite;
	import module.Common.view.Poker;
	import module.Common.view.Jetton;

	// 工厂方法
	public class FactoryMgr{
		
		private static var _instance:FactoryMgr;
		public static function GetInstance():FactoryMgr {
			if(_instance == null){
				_instance = new FactoryMgr();
			}
			return _instance;
		}
		
		public function FactoryMgr(){
			
		}

		public function createPoker(num:int,isBack:Boolean):Poker
		{
			var poker:Poker = new Poker();
			poker.setData(num,isBack);
			return poker;
		}

		public function createJetton(num:int):Jetton
		{
			var jetton:Jetton = new Jetton();
			jetton.setData(num);
			return jetton;
		}

		public function createMajiang():Sprite
		{
			return null;
		}
	}

}