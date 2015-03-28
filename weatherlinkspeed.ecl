IMPORT $;

WeatherLinkSpeed_Layout := RECORD

	$.Weather;
	$.Link_Speed;
	
	END;
	
	WeatherLinkSpeed_Layout JoinThem($.Weather Le, $.Link_Speed Ri) := TRANSFORM
	
		SELF.id := Le.id;
		SELF := Le;
		SELF := Ri;
		
		END;
		
		completeData := JOIN($.Weather,$.Link_Speed, LEFT.id = RIGHT.id, JoinThem(LEFT,RIGHT));
		completeData;