xquery version "1.0";


for $x in employees/employee
where $x/experience > 10 and $x/salary > 200000
return $x/name 
