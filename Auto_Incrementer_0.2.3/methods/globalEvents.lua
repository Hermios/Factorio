constantCombinatorEntity={}
EventsControl[AutoIncrementCombinator]=constantCombinatorEntity

constantCombinatorEntity.OnBuilt=function(entity)
	entity.operable=false
	entity.get_or_create_control_behavior().set_signal(1,{count=global.Index,signal={type="virtual",name=AicSignal}})
	global.Index=(global.Index or 0)+1
end