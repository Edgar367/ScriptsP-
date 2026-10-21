create database instituto;
use instituto;
 create table alumno (id_alum int primary key, nombre nvarchar(50), apellido nvarchar(50), sexo nvarchar(20), carrera nvarchar (40));
insert into alumno values
    -> (01, "jesus", "romero", "masculino", "industrial");
Query OK, 1 row affected (0.03 sec)

mysql> insert into alumno values
    -> (02, "janet", "hernandez", "femenino", "civil")
    -> (03, "eduardo", "rojas", "masculino", "tics");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(03, "eduardo", "rojas", "masculino", "tics")' at line 3
mysql> insert into alumno values
    -> ("02", "janet", "hernandez", "femenino", "civil")
    -> ^C
mysql>
mysql> insert into alumno values
    -> (02, "janet", "hernandez", "femenino", "civil");
Query OK, 1 row affected (0.02 sec)

mysql> insert into alumno values
    -> (03, "eduardo", "rojas", "masculino", "tics");
Query OK, 1 row affected (0.02 sec)
select *  from alumno;
 select nombre, apellido, carrera from alumno;
select apellido from alumno where apellido like 'r%';