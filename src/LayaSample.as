package {
	import laya.webgl.WebGL;
	import laya.events.Event;
    import laya.net.Socket;
    import laya.utils.Byte;
    import laya.net.ResourceVersion;
    import laya.utils.Handler;
    import view.Login.LoginView;

	public class LayaSample {
		
		private var socket:Socket;
        private var byte:Byte;
        public function LayaSample() {
            //初始化引擎
            Laya.init(1280,720,WebGL);//
            this.byte = new Byte();
            this.byte.endian = Byte.LITTLE_ENDIAN;//这里我们采用小端；
            this.socket = new Socket();
            this.socket.endian = Byte.LITTLE_ENDIAN;//这里我们采用小端；
            this.socket.connectByUrl("ws://192.168.24.128:8282");//建立连接；
            this.socket.on(Event.OPEN,this,openHandler);
            this.socket.on(Event.MESSAGE,this,receiveHandler);
            this.socket.on(Event.CLOSE,this,closeHandler);
            this.socket.on(Event.ERROR,this,errorHandler);

            Laya.loader.load("res/atlas/comp.atlas", Handler.create(this, onLoad));
			trace("初始化成功");
        }

        private function onLoad():void
        {
            var loginView:LoginView = new LoginView();
            Laya.stage.addChild(loginView);
        }

        private function openHandler(event:Object = null):void
        {
            //正确建立连接；
			trace("连接成功");

			this.socket.send('{"module":"Login","data":"aaaaaaa"}');
        }
        private function receiveHandler(msg:Object = null):void
        {
            ///接收到数据触发函数
			// trace("接收到数据");
			// trace(msg as String);
        }
        private function closeHandler(e:Object= null):void
        {
            //关闭事件
			trace("断开连接");
        }
        private function errorHandler(e:Object = null):void
        {
            //连接出错
			trace("连接出错");
        }
	}
}