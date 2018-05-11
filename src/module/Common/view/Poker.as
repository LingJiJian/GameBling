package module.Common.view
{
	import laya.display.Node;
	import laya.display.Sprite;
	import laya.utils.Tween;
	import laya.events.Event;
	import laya.resource.IDispose;

    // 扑克
	public class Poker extends Sprite{

        private var _num:int
        private var _isBack:Boolean;
        private var _imgBack:Sprite;
        private var _imgFace:Sprite;
        private var _scaleOffsetX:Number;
        private var _isFaceChange:Boolean;

		public function Poker(){

            _scaleOffsetX = -1;
             
            _imgBack = new Sprite();
            _imgBack.loadImage("poker/cardBack.png"); 
            _imgBack.x = -_imgBack.width / 2;
            _imgBack.y = -_imgBack.height / 2;
            _imgBack.visible = true;
            this.addChild(_imgBack);

            _imgFace = new Sprite();
            _imgFace.x = -_imgBack.width / 2;
            _imgFace.y = -_imgBack.height / 2;
            _imgFace.visible = false;
            this.addChild(_imgFace);
		}

        public function setData(num:int,isBack:Boolean):void
        {
            _num = num;
            _isBack = isBack;

            if(!isBack){
                var skin:String = '';
                if(num == 53){
                    skin = 'king10014';
                }else if(num == 54){
                    skin = 'king10015';
                }else
                {
                    var point:int = num % 13;
                    trace(point)
                    switch(Math.floor(num / 13))
                    {
                        case 0:
                            skin = "diam"+(10000+point);
                            break;
                        case 1:
                            skin = "club"+(10000+point);
                            break;
                        case 2:
                            skin = "hear"+(10000+point);
                            break;
                        case 3:
                            skin = "spad"+(10000+point);
                            break;
                    }
                }
                _imgFace.loadImage('poker/'+skin+'.png');
            }

            _imgBack.visible = isBack;
            _imgFace.visible = !isBack;
        }

        public function playFaceUp():void
        {
            _imgFace.visible = false;
            _imgBack.visible = true;
            _isFaceChange = true;
            Laya.timer.frameLoop(1,this,_onFrame);
        }

        public function playFaceDown():void
        {
            _imgFace.visible = true;
            _imgBack.visible = false;
            _isFaceChange = true;
            Laya.timer.frameLoop(1,this,_onFrame);
        }

        private function _onFrame(e:Event):void
        {
            _scaleOffsetX += 0.05;
            if(_scaleOffsetX >= 1){
                _scaleOffsetX = -1;
                Laya.timer.clear(this,this._onFrame);
                return;
            }
            this.scaleX = _scaleOffsetX;

            if( Math.abs(_scaleOffsetX) <= 0.05 && _isFaceChange ){
                _isFaceChange = false;
                _imgFace.visible = !_imgFace.visible;
                _imgBack.visible = !_imgBack.visible;
            }
        }

	}
}