use BVS_BASE;
go

create database File_Group on primary(
	name = 'file_group_mdf',
	filename = 'D:\4�������\��\lab3\file_group_mdf.mdf',
	size = 10240 kb,
	maxsize = unlimited,
	filegrowth = 10240 kb
),
(
	name = 'filegroup_ndf',
	filename = 'D:\4�������\��\lab3\filegroup_ndf.ndf', 
	size = 10240 kb,
	maxsize = 1 gb,
	filegrowth = 25%
),

filegroup FG1
(
	name = 'filegroup_fg1_mdf',
	filename = 'D:\4�������\��\lab3\filegroup_fg1_mdf.mdf', 
	size = 10240 kb,
	maxsize = 1 gb,
	filegrowth = 25%
),
(
	name = 'filegroup_fg1_ndf',
	filename = 'D:\4�������\��\lab3\filegroup_fg1_ndf.ndf', 
	size = 10240 kb,
	maxsize = 1 gb,
	filegrowth = 25%
)

log on
(
	name = 'filegroup_log',
	filename = 'D:\4�������\��\lab3\filegroup_log.ldf', 
	size = 10240 kb,
	maxsize = 2048 gb,
	filegrowth = 10%
)



