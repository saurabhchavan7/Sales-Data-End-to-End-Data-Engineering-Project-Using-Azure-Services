create TABLE water_table
(
	last_load varchar(2000)

)
select * from water_table

select min(date_id) from [dbo].[source_salesdata]

insert into water_table 
values('DT00000')

select * from [dbo].[source_salesdata] where date_id > 'DT00000'
