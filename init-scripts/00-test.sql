alter session set container = freepdb1;

create table if not exists students (
   id   number generated always as identity primary key,
   name varchar2(100) not null
);

insert into students ( name ) values
   ( 'Mason Alvarez' ),
   ( 'Lucas Bennett' ),
   ( 'Mia Brooks' ),
   ( 'Liam Carter' ),
   ( 'Ethan Foster' ),
   ( 'Amelia Hayes' ),
   ( 'Harper Jenkins' ),
   ( 'Noah Kim' ),
   ( 'Elijah Long' ),
   ( 'Sophia Morales' ),
   ( 'Evelyn Myers' ),
   ( 'Ava Nguyen' ),
   ( 'Logan Ortiz' ),
   ( 'Olivia Patel' ),
   ( 'Abigail Perry' ),
   ( 'Benjamin Powell' ),
   ( 'Jameson Price' ),
   ( 'Isabella Reed' ),
   ( 'Emma Rodriguez' ),
   ( 'Charlotte Ross' );

commit;