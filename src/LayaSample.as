package {
	import laya.webgl.WebGL;
	
    import laya.utils.Handler;
    import module.Common.Network;
    import module.Common.UIManager;
    import module.Common.GameConfig;
    import module.Common.Util;
    import laya.events.Event;
    import laya.events.Keyboard;
    import laya.display.Sprite;
    import module.Common.FactoryMgr;
    import module.Common.view.Poker;

	public class LayaSample {
		
        public function LayaSample() {
            //初始化引擎
            Laya.init(1280,720,WebGL);//
            Laya.loader.load([
                "res/atlas/comp.atlas",
                'res/atlas/poker.atlas'
            ], Handler.create(this, onLoad));
            
			trace("初始化成功");
        }

        private function onLoad():void
        {
            UIManager.GetInstance().showView("LoginView");
            Network.GetInstance().connect(GameConfig.ip,GameConfig.port);

            if(GameConfig.isDebug){
                Laya.stage.on(Event.KEY_DOWN,this,onKeyDown);
			}

            // var poker:Poker = FactoryMgr.GetInstance().createPoker({num:1,isBack:false});
            // poker.x = 100;
            // poker.y = 100;
            // poker.playFaceUp();
            // Laya.stage.addChild(poker);
        }

        private function onKeyDown(e:Event):void
        {
            if(GameConfig.isDebug && e.keyCode == Keyboard.BACKQUOTE){
                UIManager.GetInstance().showView("DebugView");
            }
        }
	}
}