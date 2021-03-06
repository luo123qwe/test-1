%% =========================================================
%% 51  x10定制功能
%% =========================================================



%%-----------玩家定制称号---------
-define(PT_DIY_TITLES, 51001).
%% 协议号: 51001
%%  C >> S:
%%     no                 u8          称号编号
%%     array(
%%         attr           u8          属性编号
%%     )
%%
%%  S >> C:
%%     RetCode            u8          成功则返回0
%%                                    否则返回对应998协议
%%	   GoodsNo			  u32		  消耗道具物品编号
%%


%% ---------- 宠物定制 -----------------
-define(PT_DIY_PARTNERS, 51002).

%% 协议号: 51002
%% C >> S:
%%    type                u8       1表示道具1，2表示道具2
%%    No                  u8       档位
%%    partnerNo           u16      宠物编号
%%    skillNo             u32      宠物主动技能编号
%%
%% S >> C:
%%    RetCode             u8       成功则返回0
%%                                 否则返回对应998协议
%%	  GoodsNo			  u32	   消耗道具物品编号
%%


%%-----------玩家定制时装---------
-define(PT_DIY_FASHION, 51003).
%% 协议号: 51003
%%  C >> S:
%%     no                 u8          档位编号
%%     fashionNo          u32         时装编号
%%	   effect			  u16 		  特效编号
%%     array(
%%         attr           u8          属性编号
%%     )
%%
%%  S >> C:
%%     RetCode            u8          返回0表示成功
%%                                    返回998表示失败
%%	   GoodsNo			  u32		  消耗道具物品编号
%%


%%-----------玩家定制翅膀---------
-define(PT_DIY_WING, 51004).
%% 协议号: 50004
%%  C >> S:
%%	   no                 u8          档位编号
%%     wingNo             u32         翅膀编号
%%     array(
%%         attr           u8          属性编号
%%     )
%%
%%  S >> C:
%%     RetCode            u8          返回0表示成功
%%                                    返回998表示失败
%%	   GoodsNo			  u32		  消耗道具物品编号
%%

%%-----------玩家定制坐骑---------
-define(PT_DIY_MOUNT, 51005).
%% 协议号: 50005
%%  C >> S:
%%     type               u8          1表示道具1，2表示道具2
%%	   no                 u8          档位编号
%%     MountNo            u32         坐骑编号
%%     array(
%%         attr           u8          属性编号
%%     )
%%
%%  S >> C:
%%     RetCode            u8          返回0表示成功
%%                                    返回998表示失败
%%	   GoodsNo			  u32		  消耗道具物品编号
%%

%%-----------玩家定制装备---------
-define(PT_DIY_EQUIP, 51006).
%% 协议号: 50006
%%  C >> S:
%%     type               u8          1表示道具1，2表示道具2
%%	   no                 u8          档位编号
%%     EquipNo            u32         装备编号
%%     effect             u8          特效编号
%%     skill              u32         特技编号
%%     array(
%%         attr           u8          附加属性编号
%%     )
%%
%%  S >> C:
%%     RetCode            u8          返回0表示成功
%%                                    返回998表示失败
%%	   GoodsNo			  u32		  消耗道具物品编号
%%

%%-----------玩家定制道具兑换---------
-define(PT_DIY_GOODS_EXCHANGE, 51007).
%% 协议号: 50007
%%  C >> S:
%%     type               u8          1表示兑换，2表示分解
%%	   goodsno            u32         兑换物品或分解物品
%%	   count			  u32		  要兑换物品或分解物品的数量
%%
%%  S >> C:
%%     RetCode            u8          返回0表示成功
%%                                    返回998表示失败
%%     type               u8          1表示兑换，2表示分解