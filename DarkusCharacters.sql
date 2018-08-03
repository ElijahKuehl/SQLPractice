Create table Characters(
	Pk int not null identity(1,1),
	CharacterName varchar(16) not null,
	EyeColor varchar(16),
	HornCount int not null,
	Height varchar(16) not null,
	Traits varchar(16) not null
);

Insert into Characters (CharacterName, EyeColor, HornCount, Height, Traits)
Values ('Darkus', 'Red', 3, 'Short', 'Original'),
('Darkness', 'Red', 3, 'Medium', 'Original')

select * from Characters
