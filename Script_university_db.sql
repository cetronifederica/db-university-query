USE university_db;

 -- Selezionare il dipartimento il cui capo � Bernardo Sanna
select *
from departments  where head_of_department = 'Bernardo Sanna';

-- Selezionare tutti i corsi di laurea magistrale
select *
from degrees where level = 'magistrale';

-- Selezionare tutti i corsi che valgono pi� di 10 crediti
select *
from courses where cfu > 10;


-- Selezionare tutti gli insegnanti che non hanno il numero di telefono
select *
from teachers where phone is not null;

-- Selezionare tutti gli studenti che hanno pi� di 30 anni
select *
from students where TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;


-- Selezionare tutti gli studenti che hanno un indirizzo email gmail o yahoo
select * 
from students where email like '%@gmail.com' or email like '%@yahoo.com';

-- Selezionare tutti gli esami che si sono svolti a luglio 2020
select *
from exams where date like '2020-07%';

select *
from exams where year(`date`) = 2020
and month(`date`) = 7;


