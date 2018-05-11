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

	public class NiuNiuView extends G_NIUNIUUI implements IUIBase {

		private var _betpools:Object;
		private var _pokerpools:Object;

		public function NiuNiuView(){

			for(var i:int=0;i<5;i++)
			{
				this['btn_bet'+(i+1)].label = NIUNIUData.GetInstance().betDefs[i];
			}

			for(i=0;i<9;i++){
				this['icon'+(i+1)].setData(null);
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
			if (e.currentTarget == this.btn_bet1){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[1]);
			}
			else if (e.currentTarget == this.btn_bet2){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[2]);
			}
			else if (e.currentTarget == this.btn_bet3){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[3]);
			}
			else if (e.currentTarget == this.btn_bet4){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[4]);
			}
			else if (e.currentTarget == this.btn_bet5){
				NIUNIUProxy.GetInstance().reqNiuNiuBet(NIUNIUData.GetInstance().betDefs[5]);
			}
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
				lab_roomid.text = room.roomid;

				for(var i:int=0;i<room.placeLimit;i++){
					this['icon'+(i+1)].setData(room.places[(i+1)]);
				}
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
						for each(var poker:Poker in _pokerpools[areaidx])
						{
							poker.removeSelf();
						}
						_pokerpools[areaidx] = [];
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

						for(var i:int=0;i<5;i++){
							poker = FactoryMgr.GetInstance().createPoker(0,true);
							_pokerpools[areaidx].push(poker);

							if(i < len){
								poker.setData(cards[idx],false);
								idx++;
							}

							poker.x = p_deal.x;
							poker.y = p_deal.y;
							this.addChild(poker);
							var toArea:Box = this['p_area'+areaidx];
							Tween.to(poker, { x:toArea.x, y:toArea.y }, 2000, Ease.linearIn,new Handler(this,function(i,poker:Poker,len):void{
								if(i<len){
									poker.playFaceUp();
								}
							},[i,poker,len]),areaidx*300);
						}
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

						var pokers:Array = _pokerpools[areaidx];
						for(i=0;i<5;i++)
						{
							poker = pokers[i];
							if(i >= (5 - len)){
								poker.setData(cards[idx],false);
								poker.playFaceUp();
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
					var jetton:Jetton = FactoryMgr.GetInstance().createJetton({num:e.data.betnum});
					this.addChild(jetton);

					if(cur_seatid == -1){ // 没座位的
						
						jetton.x = p_area0.x;
						jetton.y = p_area0.y;

					}else{ //有座位的

						jetton.x = this['icon'+cur_seatid].x;
						jetton.y = this['icon'+cur_seatid].y;
					}
					var toArea:Box = this['p_area'+e.data.betidx];
					Tween.from(jetton, { x:toArea.x, y:toArea.y }, 2000, Ease.linearIn);
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
				 this['icon'+e.persion.seatIdx].setData(e.persion);
			}
		}
	}

}