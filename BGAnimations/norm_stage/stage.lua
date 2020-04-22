local stages = Def.ActorFrame {};


for _, s in ipairs(Stage) do
	if PREFSMAN:GetPreference("SongsPerPlay") == GAMESTATE:GetCurrentStageIndex()+1 then
		stages[#stages+1] = LoadActor("../_stageframe/_stage Stage_final") .. {
			OnCommand=cmd(horizalign,right);
			SetCommand=function(self)
				self:visible( GAMESTATE:GetCurrentStage() == "Stage_Final" );
				self:x(-4);
			end;
		}
	elseif s == 'Stage_Demo' then
		stages[#stages+1] = LoadActor("../_stageframe/_stage " .. s) .. {
			OnCommand=cmd(horizalign,right);
			SetCommand=function(self, params)
				self:visible( params.StageToShow == s );
				self:x(-4);
			end;
		}
	else
		stages[#stages+1] = LoadActor("../_stageframe/_stage " .. s) .. {
			OnCommand=cmd(horizalign,right);
			SetCommand=function(self, params)
				self:visible( params.StageToShow == s );
				self:x(-4);
			end;
		}
	end
end

stages[#stages+1] = LoadActor("../_stageframe/_stage Frame") .. {
	OnCommand=cmd(horizalign,left);
	Condition=not GAMESTATE:IsDemonstration();
}

return stages;
