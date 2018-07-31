Create table Animals(
	Pk int not null interval(1,1), 
	Animal varchar(16) not null,
	CoID int not null, 
	ClID int not null
);

Create table Colors(
	Pk int not null interval(1,1),
	Color varchar(16) not null,
	Temperature varchar(16) not null,
	Mood varchar(16) not null
);

Create table Classes(
	Pk int not null interval(1,1), 
	Class varchar(16) not null, 
	BloodTemp varchar(16) not null
);

Insert into Animals (Animal, CoID, ClID)
Values (Dog, 9, 1),
(Wolf, 11, 1),
(Lizard, 4, 4),
(Butterfly, 2, 6),
(Blue Jay, 5, 2), (Yellow Tang, 3, 3), (Salamander, 1, 5), (Snowy Owl, 8, 2);

Insert into Colors (Color, Temperature, Mood)
Values (Red, Warm, Passion),
(Orange, Warm, Courage),
(Yellow, Warm, Happy),
(Green, Cold, Envy),
(Blue, Cold, Trust),
(Purple, Cold, Mystery),
(Black, Cold, Evil),
(White, Warm, Purity),
(Brown, Neutral, Friendly),
(Tan, Neutral, Bland),
(Grey, Neutral, Gloomy);

Insert into Classes(Class, BloodTemp)
Values (Mammal, Warm),
(Bird, Warm),
(Fish, Cold),
(Reptile, Cold),
(Amphibian, Cold),
(Insect, Cold);

select * from Animals
select * from Colors
select * from Classes



Create view Animal_Key as
	select Animals.Pk, Animals.Animal, Colors.Color, Classes.Class
	from ((Animals
	inner join Colors on Animals.CoID = Colors.Pk)
	inner join Classes on Animals.ClID = Classes.Pk);

select * from Animal_key
order by Pk



Create procedure Find_Class 
	@color varchar(16), @class varchar(16)
	as
	select * from Animal_Key 
	where Animal_Key.Class = @class or Animal_Key.Color = @color
