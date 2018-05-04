package module.Common
{
	public class GameConfig{
		
		public static var ip:String = "192.168.112.129";
		public static var port:String = "8282";
		public static var isDebug:Boolean = true;

		public static const gameDefs:Object = {
			"NiuNiu"	:	{'id':1}, 		//斗牛
			"MJ_GD"		:	{'id':2}, 	 	//广东麻将
			"PokerDZ"	:	{'id':3}		//德州扑克
		}

		public static const assetTypes:Object = {
			'Coin'	: 1,
			'Gold'	: 2
		}
	}

}