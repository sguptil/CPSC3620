Layout_Weather := RECORD
	STRING	id;
	STRING	stationid;
	STRING	collectiontime;
	STRING	observedtime;	
	STRING	condition;
	STRING	temperature;
	STRING	humidity;
	STRING	winddirection;
	STRING	windangle;
	STRING	windspeed;
	STRING	windgust;
	STRING	pressure;
	STRING	pressuretend;
	STRING	heatindex;
	STRING	windchill;
	STRING	dewpoint;
	STRING	visibility;
	END;
	
	EXPORT Weather := DATASET('~sguptil::',Layout_Weather,THOR);