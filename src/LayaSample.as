﻿package {
	import laya.webgl.WebGL;
	
    import laya.utils.Handler;
    import view.Login.LoginView;
    import module.Common.Network;
    import module.Common.UIManager;

	public class LayaSample {
		
        public function LayaSample() {
            //初始化引擎
            Laya.init(1280,720,WebGL);//
            Laya.loader.load("res/atlas/comp.atlas", Handler.create(this, onLoad));
            
			trace("初始化成功");
        }

        private function onLoad():void
        {
            UIManager.GetInstance().showView("LoginView");
            Network.GetInstance().connect();
        }
	}
}