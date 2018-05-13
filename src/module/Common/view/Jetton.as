package module.Common.view
{
	import laya.display.Sprite;

	public class Jetton extends Sprite{ 

		private var _imgView:Sprite;

		public function Jetton(){
			_imgView = new Sprite();
            _imgView.loadImage("comp/jetton1.png"); 
            _imgView.x = -_imgView.width / 2;
            _imgView.y = -_imgView.height / 2;
            _imgView.visible = true;
            this.addChild(_imgView);
		}

		public function setData(num:int):void
		{
			_imgView.graphics.clear();
			if(num == 100){
				_imgView.loadImage("comp/jetton1.png");
			}else if(num == 500){
				_imgView.loadImage("comp/jetton2.png");
			}else if(num == 1000){
				_imgView.loadImage("comp/jetton3.png");
			}else if(num == 5000){
				_imgView.loadImage("comp/jetton4.png");
			}else if(num == 10000){
				_imgView.loadImage("comp/jetton5.png");
			}
		}
	}

}