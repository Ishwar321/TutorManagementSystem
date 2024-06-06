create procedure spContact_Insert
@name varchar(50),
@email varchar(50),
@subject varchar(50),
@message varchar(max)
as
begin
	insert into contact_tbl values(@name,@email,@subject,@message)

end

select * from contact_tbl;