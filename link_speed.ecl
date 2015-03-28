Layout_Link_Speed := RECORD
	STRING	id;
	STRING	acttime;
	STRING	link;
	STRING	dirx;
	STRING	inst;
	STRING	sped;
	STRING	fore;
	STRING	tail;
	STRING	head;
	END;
	
EXPORT Link_Speed := DATASET('~sguptil::linkspeed_09_01_00.csv', Layout_Link_Speed, CSV(heading(1)));