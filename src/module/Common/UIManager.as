package module.Common
{

	import laya.ui.View;
	import laya.utils.Dictionary;
	import laya.display.Node;
	import module.Common.UIConfig;
	import laya.ui.Dialog;

	public class UIManager {

		private static var _instance:UIManager;
		private var _views:Dictionary;

		public function UIManager(){
			_views = new Dictionary();
			UIConfig.init();
		}

		public static function GetInstance():UIManager {
			if(_instance == null){
				_instance = new UIManager();
			}
			return _instance;
		}

		public function isShowing(viewId:String):Boolean {
			return 	_views[viewId] !=null && 
					_views[viewId].view !=null &&
					Laya.stage.getChildByName(viewId) !=null;
		}

		public function showView(viewId:String):void {

			var child:Node = Laya.stage.getChildByName(viewId);
			var viewRef:Object = getViewRef(viewId);
			if(child==null){
				if(viewRef.view == null){
					var view:View = UIConfig.getView(viewId);
					viewRef.view = view;
				}
				viewRef.view.onOpen();
				if(viewRef.view is Dialog){
					viewRef.view.show();
				}else{
					Laya.stage.addChild(viewRef.view);
				}
			}else{
				viewRef.view.onOpen();
				if(viewRef.view is Dialog){
					viewRef.view.show();
				}else{
					Laya.stage.setChildIndex(child,0);
				}
			}
		}

		public function hideView(viewId:String):void {
			var viewRef:Object = getViewRef(viewId);
			if (viewRef.view != null){
				viewRef.view.onClose();
				if(viewRef.view is Dialog){
					viewRef.view.close();
				}else{
					Laya.stage.removeChild(viewRef.view);
				}
			}
			if(!viewRef.isDontDestroy){
				viewRef.view = null;
			}
		}

		public function closeAll():void {
			for(var key:String in _views){
				hideView(key);
			}
		}

		private function getViewRef(viewId:String):Object {
			var viewRef:Object = _views[viewId];
			if(viewRef == null){
				viewRef = new Object();
				viewRef.viewId = viewId;
				_views[viewId] = viewRef;
			}
			return _views[viewId];
		}
	}

}