-- DROP procedure UpdateWaterMarkTable

create procedure UpdateWaterMarkTable
	@lastload Varchar(200) -- lastload basically is the variable that will use i azure data factory to provide it
as
begin
	-- start the transaction
	begin transaction;

	-- so it will update the incremental column in the table

	update water_table
	set last_load = @lastload
	commit transaction
	end; 