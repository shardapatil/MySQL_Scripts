to change database
```
use lib_management_Demo;
select * from student;
```

stored procedure
```
delimiter /
create procedure insertStudentUSP
(
	in  rno int,
    in name varchar(50),
    in marks int,
    in dob date,
    in city varchar(20),
    out statusflag int
)
begin
	begin
	set statusflag=0;
	end;
	
	start transaction;
	insert into student values
    (
		rno,name,marks,dob,city
    );
    set statusflag=1;
    commit;
end;
/
delimiter ;
```

To run the Stored Procedure
```
select @flag;
call insertStudentUSP(1,'sharda',90,'1998-08-25','vasco',@flag);
```

```
select * from student;
drop procedure insertstudentusp;
```
