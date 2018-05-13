package module.G_NIUNIU
{
	import ui.G_NIUNIU.G_NIUNIUUI;
	import module.Common.IUIBase;
	import laya.events.Event;
	import module.Common.UIManager;
	import module.G_NIUNIU.NIUNIUProxy;
	import module.Main.MainProxy;
	import module.Common.MyDispatcher;
	import module.Common.EventIds;
	import module.G_NIUNIU.NIUNIUData;
	import module.Common.Util;
	import module.Common.FactoryMgr;
	import module.Common.view.Jetton;
	import laya.utils.Tween;
	import laya.utils.Ease;
	import laya.ui.Box;
	import module.Common.view.Poker;
	import laya.utils.Handler;
	import module.Role.RoleMgr;
	import laya.maths.Point;
	import laya.ui.Clip;

	public class NiuNiuView extends G_NIUNIUUI implements IUIBase {

		private var _betpools:Object;
		private var _pokerpools:Object;
		private var _lastSelectArea:int;
		private var _curFsm:Object;

		public function NiuNiuView(){

			for(var i:int=0;i<5;i++)
			{
				this['btn_bet'+(i+1)].label = NIUNIUData.GetInstance().betDefs[i+1];
			}

			for(i=0;i<9;i++){
				this['icon'+(i+1)].setData(null);
			}

			for(i=1;i<=5;i++){
				this['img_niu'+i].visible = false;
			}

			//筹码池
			_betpools = new Object();
			for(i=1;i<=4;i++){
				_betpools[i] = [];
			}

			//纸牌池
			_pokerpools = new Object();
			for(i=1;i<=5;i++){
				_pokerpools[i] = [];
			}
		}

		public function onOpen(param:Object):void{
			this.btn_back.on(Event.CLICK,this,onBtnBack);
			this.btn_pos.on(Event.CLICK,this,onBtnPos);

			MyDispatcher.AddNotice(EventIds.NiuNiu_Update,this,_onUpdate);
			MyDispatcher.AddNotice(EventIds.NiuNiu_SyncGame,this,_onSyncGame);
			MyDispatcher.AddNotice(EventIds.NiuNiu_SetPos,this,_onSetPos);
			MyDispatcher.AddNotice(EventIds.NiuNiu_Bet,this,_onBet);
			MyDispatcher.AddNotice(EventIds.Main_LeaveRoom,this,_onLeaveRoom);
			MyDispatcher.AddNotice(EventIds.Main_PersionJoin,this,_onPersionJoin);

			for(var i:int=0;i<5;i++)
			{
				this['btn_bet'+(i+1)].on(Event.CLICK,this,onBtnBet);
			}

			for(i=1;i<=4;i++){
				this['p_area'+i].on(Event.CLICK,this,onClickArea);
			}

			//保存房间数据
			NIUNIUData.GetInstance().room = param.data;	
			this._refreshRoomData();	
		}

		public function onClose():void{
			this.btn_back.off(Event.CLICK,this,onBtnBack);
			this.btn_pos.off(Event.CLICK,this,onBtnPos);

			for(var i:int=0;i<5;i++)
			{
				this['btn_bet'+(i+1)].off(Event.CLICK,this,onBtnBet);
			}

			MyDispatcher.RemoveNotice(EventIds.NiuNiu_Update,this,_onUpdate);
			MyDispatcher.RemoveNotice(EventIds.NiuNiu_SyncGame,this,_onSyncGame);
			MyDispatcher.RemoveNotice(EventIds.NiuNiu_SetPos,this,_onSetPos);
			MyDispatcher.RemoveNotice(EventIds.NiuNiu_Bet,this,_onBet);
			MyDispatcher.RemoveNotice(EventIds.Main_LeaveRoom,this,_onLeaveRoom);
			MyDispatcher.RemoveNotice(EventIds.Main_PersionJoin,this,_onPersionJoin);
		}

		public function onBtnBet(e:Event):void
		{
			if(_lastSelectArea == 0){
				UIManager.GetInstance().showView("Alert",{text:'请选择下注区域'});
				return;
			}

			if (e.currentTarget == this.btn_bet1){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(_lastSelectArea,NIUNIUData.GetInstance().betDefs[1]);
			}
			else if (e.currentTarget == this.btn_bet2){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(_lastSelectArea,NIUNIUData.GetInstance().betDefs[2]);
			}
			else if (e.currentTarget == this.btn_bet3){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(_lastSelectArea,NIUNIUData.GetInstance().betDefs[3]);
			}
			else if (e.currentTarget == this.btn_bet4){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(_lastSelectArea,NIUNIUData.GetInstance().betDefs[4]);
			}
			else if (e.currentTarget == this.btn_bet5){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(_lastSelectArea,NIUNIUData.GetInstance().betDefs[5]);
			}
		}

		public function onClickArea(e:Event):void
		{
			if(_lastSelectArea != 0){
				this['p_area'+_lastSelectArea].index = 1;
			}
			if(e.currentTarget == this.p_area1){
				_lastSelectArea = 1;
			}else if(e.currentTarget == this.p_area2){
				_lastSelectArea = 2;
			}else if(e.currentTarget == this.p_area3){
				_lastSelectArea = 3;
			}else if(e.currentTarget == this.p_area4){
				_lastSelectArea = 4;
			}
			(e.currentTarget as Clip).index = 0;
		}

		public function onBtnPos(e:Event):void
		{
			NIUNIUProxy.GetInstance().reqNiuNiuSetPos({'pos':'banker','target_seatidx':1});
		}

		public function onBtnBack(e:Event):void
		{
			MainProxy.GetInstance().reqLeaveRoom({'gameid':'NiuNiu'});
		}

		private function _refreshRoomData():void
		{
			var room:Object = NIUNIUData.GetInstance().room;
			if(room){
				lab_roomid.text = '房间ID:' + room.roomid;

				for(var i:int=0;i<room.placeLimit;i++){
					this['icon'+(i+1)].setData(room.places[(i+1)]);
				}
			}
			var role:Object = RoleMgr.GetInstance().role;
			if(role)
			{
				this.lab_id.text = 'ID:' + RoleMgr.GetInstance().role.id;
				this.lab_nickname.text = RoleMgr.GetInstance().role.nickname;
			}
		}

		private function _onUpdate(e):void
		{
			_makeUpdateSync(e);
		}

		private function _onSyncGame(e):void
		{
			_makeUpdateSync(e);
		}

		private function _makeUpdateSync(e):void
		{
			if(e){

				var room:Object = NIUNIUData.GetInstance().room;

				if(e.data.status == 'idle')
				{
					// 清空数组
					for(var areaidx:int in _pokerpools)
					{
						for each(var poker:Poker in _pokerpools[areaidx].pokers)
						{
							poker.removeSelf();
						}
						_pokerpools[areaidx] = [];
					}

					for(areaidx in _betpools){
						for each(var struct:Object in _betpools[areaidx])
						{
							struct.obj.removeSelf();
						}
						_betpools[areaidx] = [];
					}

				}else if(e.data.status == 'prepare')
				{

				}else if(e.data.status == 'deal')
				{
					var betcards:Object = e.data.betcards;
					for(areaidx in betcards){
						
						var cards:Array = betcards[areaidx];
						var len:int = cards.length;
						var idx:int = 0;

						var pokers:Array = [];
						for(var i:int=0;i<5;i++){
							poker = FactoryMgr.GetInstance().createPoker(-1,true);
							pokers.push(poker);
							if(i < len){
								poker.setData(cards[idx],true);
								idx++;
							}

							poker.x = p_deal.x;
							poker.y = p_deal.y;
							this.addChild(poker);
							var toArea:Box = this['p_card'+areaidx];
							Tween.to(poker, { x:toArea.x + i * 20, y:toArea.y }, 1200, Ease.linearIn,new Handler(this,function(i,poker:Poker,len):void{
								if(i < len){
									poker.playFaceUp();
								}
							},[i,poker,len]),areaidx*400 + i * 50);
						}
						_pokerpools[areaidx] = {cards:cards,pokers:pokers};
					}

				}else if(e.data.status == 'betting')
				{
					
				}else if(e.data.status == 'finish')
				{
					betcards = e.data.betcards;
					for(areaidx in betcards){
						
						cards = betcards[areaidx];
						len = cards.length;
						idx = 0;
						pokers = _pokerpools[areaidx].pokers;
						for(i=0;i<5;i++)
						{
							poker = pokers[i];
							if(i >= (5 - len)){
								poker.setData(cards[idx],false);
								poker.playFaceUp();
								// 保存牌数据
								_pokerpools[areaidx].cards.push(cards[idx]);
								idx++;
							}
						}
					}	


				}
				Util.dump(e);
			}
		}

		private function _onSetPos(e):void
		{
			
		}

		private function _onBet(e):void
		{
			if(e){
				var client_id:String = e.data.client_id;

				var room:Object = NIUNIUData.GetInstance().room;
				var places:Object = room.places;
				var cur_persion:Object;
				var cur_seatid:int = -1;
				for(var seatIdx:int in places)
				{
					if(places[seatIdx].client_id == client_id){
						cur_seatid = seatIdx;
						cur_persion = places[seatIdx];
						break;
					}
				}
				if(cur_persion) 
				{
					var jetton:Jetton = FactoryMgr.GetInstance().createJetton(e.data.betnum);
					this.addChild(jetton);

					if(cur_seatid == -1){ // 没座位的
						
						jetton.x = p_betother.x;
						jetton.y = p_betother.y;

					}else{ //有座位的

						jetton.x = this['icon'+cur_seatid].x;
						jetton.y = this['icon'+cur_seatid].y;
					}
					
					var toArea:Clip = this['p_area'+e.data.betidx];
					Tween.to(jetton, { x:toArea.x -25 + Math.random() * 50, y:toArea.y -25 + Math.random() * 50 }, 500, Ease.linearIn);
					_betpools[e.data.betidx].push({num:e.data.betnum,obj:jetton});
				}
			}
			Util.dump(e);
		}

		private function _onLeaveRoom(e):void
		{
			if(e.gameid == "NiuNiu"){
				//退出房间
				if(e.persion.client_id == RoleMgr.GetInstance().role.client_id){
					NIUNIUData.GetInstance().onClean();
					UIManager.GetInstance().closeAll();
					UIManager.GetInstance().showView("MainView");
				}else{
					this['icon'+e.persion.seatIdx].setData(null);
				}
			}
		}

		private function _onPersionJoin(e):void
		{
			if(e.gameid == "NiuNiu"){
				var seatIdx:int = e.persion.seatIdx;
				if(seatIdx > -1){
					this['icon'+seatIdx].setData(e.persion);
					NIUNIUData.GetInstance().room.places[seatIdx] = e.persion;
				}
			}
		}
	}

}