use university_db


-- Contare quanti iscritti ci sono stati ogni anno [la data di iscrizione sulla tabella students è enrolment_date

select COUNT(*) as enrolment_date 
from students  
group by year (enrolment_date)
order by enrolment_date desc;



-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

select s.name, s.surname, d.name  
from students s 
inner JOIN `degrees` d 
on s.degree_id = d.id 
where d.name = 'Corso di Laurea in Economia';

-- Selezionare tutti i corsi in cui insegna Fulvio Amato
select t.name, t.surname, c.name 
from courses c 
inner join course_teacher ct 
on ct.course_id  = c.id 
inner join teachers t 
on ct.teacher_id = t.id
where t.name = 'Fulvio' and t.surname = 'Amato';


-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti 
-- e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT s.name , s.surname , s.degree_id , d.id , d.name  , d2.id, d2.name 
FROM students s 
INNER JOIN `degrees` d 
on s.degree_id  = d.id 
INNER JOIN departments d2  
ON s.degree_id  = d2.id 
ORDER BY s.surname  , s.name;


-- Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi

select d2.name, count(*)  
from `degrees` d  
right outer join departments d2 
on d.department_id = d2.id 
group by department_id ;






