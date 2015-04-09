IMPORT $;

IncidentEvent_LinkSpeed_Layout := RECORD

	$.Incident_Event;
	$.Link_Speed;
	
	END;
	
	IncidentEvent_LinkSpeed_Layout JoinThem($.Incident_Event Le, $.Link_Speed Ri) := TRANSFORM
	
		SELF.id := Le.id;
		SELF := Le;
		SELF := Ri;
		
		END;
		
		completeData := JOIN($.Incident_Event,$.Link_Speed, LEFT.id = RIGHT.id, JoinThem(LEFT,RIGHT));
		completeData;