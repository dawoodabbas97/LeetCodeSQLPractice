select m_name as Name from
(select m.name as m_name, e.id,m.id as m_id
from employee m 
inner join employee e
on m.id=e.managerId) a
group by m_id 
having count(*)>=5