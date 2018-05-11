package module.Common.view
{
	import laya.ui.Image;

	public class PlayerHead extends Image {

		private var _icon:Image;


		public function PlayerHead(){
			
		}

		public function setData(param:Object):void
		{
			if(param == null)
			{
				icon.visible = false;
			}else{
				icon.visible = true;
			}
		}

		public function get icon():Image {
			if(_icon == null){
				_icon = getChildByName("icon") as Image;
			}
			return _icon;
		}
	}

}