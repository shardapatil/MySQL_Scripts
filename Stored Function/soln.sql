delimiter /
create function occupationCheck()
returns varchar(20)
deterministic
begin
	declare occupation varchar(20);
    declare age int;
    set age =25;
    if (age>35)
		then set occupation = 'Scientist';
	elseif(age<35 and age>25)
 		then set occupation = 'Engineer';
 	elseif(Age<25)
		then set occupation = 'Actor';
	end if;
    
  return(occupation);
end;
/
delimiter ;

select occupationCheck();

drop function occupationCheck;
