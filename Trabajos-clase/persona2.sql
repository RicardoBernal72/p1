create database if not exists fes_ico;
use fes_ico;
show tables;
create table alumno (
nombre_us text not null,
carrera text not null,
no_cuenta int(10) not null,
direccion text not null,
telefono varchar(10) not null,
email text not null,
contraseña varchar(8) not null,
fecha_registro datetime null default current_timestamp,
permisos int(11) null default 1
);
alter table alumno modify telefono varchar(10) not null;
alter table alumno modify no_cuenta int(10) not null, add primary key (no_cuenta);

insert into alumno(nombre_us,carrera,no_cuenta, direccion,telefono,email,contraseña)values
('Ricardo bernal Santiago','ICO',316082617,'Francisco villa #21','5574964962','kikisaurio@hotmail.com','5454'),
('Erik Nájera','ICO',317233252,'CD.Azteca 3rd','5511446853','eriknajera317@aragon.unam.mx','123654'),
('Alejandro Vite','ICO',317031522,'Zumpimito 23','5614285315','alexvi.spdr.11@gmail.com','1235678');


