package module.Common
{
	import module.Login.LoginView;
	import module.Main.MainView;
	import laya.ui.View;
	import laya.display.Node;
	import laya.utils.ClassUtils;
	import module.Main.MainCreateRoom;
	import module.Main.MainJoinRoom;


	/**
	 * UI配置
	 */
	public class UIConfig{
		
		public static const viewDefs:Object = {
			"LoginView"			:	{"class":LoginView},
			"MainView" 			:   {"class":MainView,"isDontDestroy":true},
			"MainCreateRoom" 	: 	{"class":MainCreateRoom},
			"MainJoinRoom" 		: 	{"class":MainJoinRoom}
		};

		public static function init():void{
			for (var key:String in viewDefs) {
				ClassUtils.regClass(key, viewDefs[key].class);
			}
		}

		public static function getView(viewId:String):View
		{
			var instance:View = ClassUtils.getInstance(viewId) as View;
			instance.name = viewId;
			return instance;
		}
	}

}