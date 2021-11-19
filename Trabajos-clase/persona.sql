drop schema if exists `fes_ico`;

create schema if not exists `fes_ico` default character set utf8 collate utf8_spanish2_ci;

use `fes_ico`;

create table `alumno`(  
    `nombre_usuario` text not null,
    `carrera` text not null,
    `no_cuenta` int (10) not null,
    `dirección` text not null,
    `telefono` varchar (8) not null,
    `email` text not null,
    `password` varchar (8) not null,
    `fecha de registro` datetime null default current_timestamp,
    `perimisos` int (11)  null default '1';

)Engine=InnoDB default charset=utf8;

insert into `alumno`(`nombre_usuario`,`carrera`,`no_cuenta`, `dirección`,`telefono`,`email`,`password`,`fecha de registro`,`perimisos`)values
('Ricardo bernal Santiago','ICO','316082617','Francisco villa #21','5574964962','kikisaurio@hotmail.com','queso1')
('Erik Nájera','ICO','317233252','CD.Azteca 3rd','5511446853','eriknajera317@aragon.unam.mx','123654'),
('Alejandro Vite','ICO','317031522','Zumpimito 23','5614285315','alexvi.spdr.11@gmail.com','1235678');

alter table `alumno`
    add primary key (`no_cuenta`);

