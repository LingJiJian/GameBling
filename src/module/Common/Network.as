package module.Common
{
	import laya.events.Event;
    import laya.net.Socket;
    import laya.utils.Byte;
    import laya.net.ResourceVersion;
	import laya.debug.tools.JsonTool;
	import module.Login.LoginProxy;
	import module.Main.MainProxy;
	import module.Common.GameConfig;
	import module.G_NIUNIU.NIUNIUProxy;
	/**
		网络通讯
	 */
	public class Network{

		private static var _instance:Network;
		private var socket:Socket;
        private var byte:Byte;

		public function Network(){
			
			this.byte = new Byte();
            this.byte.endian = Byte.LITTLE_ENDIAN;//这里我们采用小端；
            this.socket = new Socket();
            this.socket.endian = Byte.LITTLE_ENDIAN;//这里我们采用小端；
            
            this.socket.on(Event.OPEN,this,openHandler);
            this.socket.on(Event.MESSAGE,this,receiveHandler);
            this.socket.on(Event.CLOSE,this,closeHandler);
            this.socket.on(Event.ERROR,this,errorHandler);
		}

		public static function GetInstance():Network {
			if(_instance == null){
				_instance = new Network();
			}
			return _instance;
		}


		public function connect(ip:String,port:String):void
		{
			this.socket.close();
			this.socket.connectByUrl("ws://"+ip+":"+port);//建立连接；
		}

		public function send(module:String,obj:Object):void{

			if(this.socket.connected){
				obj.module = module;
				this.socket.send(JsonTool.getJsonString(obj));
			}else{
				trace("网络连接失败，请重试");
			}
		}

		private function openHandler(event:Object = null):void
        {
            //正确建立连接；
			trace("连接成功");
        }
        private function receiveHandler(msg:Object = null):void
        {
			var obj:Object = JSON.parse(msg as String);
			LoginProxy.GetInstance().onMsg(obj);
			MainProxy.GetInstance().onMsg(obj);
			NIUNIUProxy.GetInstance().onMsg(obj);
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