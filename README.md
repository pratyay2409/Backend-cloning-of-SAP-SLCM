# Backend-cloning-of-SAP-SLCM

### Steps and Process of the projects
- Problem statement identification

- Domain knowledge acquisition

- Study of SAP SLCM

- Requirement document preparation 

- Conceptual designing of the database
     
   - ER designing
   - Conversing into tables
   - Normalization the tables

- Physical designing of database

   - Creations of table
   - Addition of constrains
   - Inclination of dependency

- Query designing 

   - Simple queries
   - Nested queries
   - Optimized queries

- Query implementation

### Database schema
![SAP SLAM Schema](https://github.com/user-attachments/assets/a68e6010-eb5a-4294-900c-e37f29e9ded3)



### Some of the important queries
1) Display students who purse B.Tech and Computer Science and Engineering in first preference during admission.

   select student_name,program,branch_1 
   from slcm.admission_test
   join slcm.student_pre on slcm.student_pre.student_id=slcm.admission_test.student_id
   where program='b.tech' and branch_1='Computer Science and Engineering';

3) Display students according to the ranks.

   select student_name,ranks 
   from slcm.admission_result
   join slcm.student_pre on slcm.student_pre.student_id=slcm.admission_result.student_id
   order by ranks;

4) Display all the details of students after admission.

   select * from slcm.student_post;

5) Display the hostel name and the number of students present in the hostel.

   select hostel_name,student_number from slcm.hostel;

6) Display the details that which students is under which mentor.

   select student_name,professor_name
   from slcm.mentor
   join slcm.student_post on slcm.student_post.roll_no=slcm.mentor.roll_no
   join slcm.professor on slcm.professor.professor_id=slcm.mentor.professor_id;

7) Display the details that which professor teaches which subject as per the semester,

   select professor_name,subject_name,semester
   from slcm.professor
   join slcm.faculty on slcm.professor.professor_id=slcm.faculty.professor_id;

7) Display the details which student have enrolls which subjets.

   select slcm.student_post.roll_no,student_name,subject_name
   from slcm.student_subject
   join slcm.student_post on slcm.student_post.roll_no=slcm.student_subject.roll_no
   join slcm.subject on slcm.subject.subject_id=slcm.student_subject.subject_id;

8) find the subject name of a particular student in a semester.

   select roll_no,subject_name
   from slcm.student_subject
   join slcm.subject on slcm.subject.subject_id=slcm.student_subject.subject_id
   where roll_no=21051670 and semester=6;

9) Diplay the details that which student is under which faculty in a perticular subject.

   select student_name,professor_name
   from slcm.student_subject
   join slcm.student_post on slcm.student_post.roll_no=slcm.student_subject.roll_no
   join slcm.professor on slcm.professor.professor_id=slcm.student_subject.professor_id
   join slcm.subject on slcm.subject.subject_id=slcm.student_subject.subject_id
   where subject_name='Compiler Design';

10) Display the number of students belong to a mentor.

    select professor_name,Count(roll_no) 
    from slcm.mentor
    join slcm.professor on slcm.professor.professor_id=slcm.mentor.professor_id
    group by slcm.professor.professor_id;

11) Display the students get more than 15 marks in mid semester examination.

    select student_name,subject_name,marks_obtain
    from slcm.mid_semester_examination
    join slcm.student_post on slcm.student_post.roll_no=slcm.mid_semester_examination.roll_no
    where marks_obtain >=15;

12) Display the students get more than 15 marks in a particular subject in  mid semester examination.

    select student_name,subject_name,marks_obtain
    from slcm.mid_semester_examination
    join slcm.student_post on slcm.student_post.roll_no=slcm.mid_semester_examination.roll_no
    where marks_obtain >=15 and subject_name='Software Project Management';

13) Display the students get more than 37 marks in end semester examination.

    select student_name,subject_name,marks_obtain
    from slcm.end_semester_examiantion
    join slcm.student_post on slcm.student_post.roll_no=slcm.end_semester_examiantion.roll_no
    where marks_obtain >=37;

14) Display the students get more than 37 marks in a particular subject in  end semester examination.

    select student_name,subject_name,marks_obtain
    from slcm.end_semester_examiantion
    join slcm.student_post on slcm.student_post.roll_no=slcm.end_semester_examiantion.roll_no
    where marks_obtain >=37 and subject_name='Data Analytics';

15) Display the students having some due payments.

    select slcm.student_post.roll_no,student_name,due_amount
    from slcm.fees
    join slcm.student_post on slcm.student_post.roll_no=slcm.fees.roll_no
    where due_amount!=0;

16) Display the students who have their last payment after '2024-04-01'.

    select slcm.student_post.roll_no,student_name,last_transaction_date
    from slcm.fees
    join slcm.student_post on slcm.student_post.roll_no=slcm.fees.roll_no
    where last_transaction_date>'2024-04-01';

17) Display how many schools are present in the college.

    select Count(school_id)as Number_of_school 
    from slcm.school;

18) Display the number of subject present in each semester.

    select semester,number_of_subject
    from slcm.examination;

19) Display the details that which faculty teaches which subject and the number of students under him/her.

    select slcm.professor.professor_id,professor_name,subject_name,count(roll_no) as number_of_students
    from slcm.student_subject
    join slcm.professor on slcm.professor.professor_id=slcm.student_subject.professor_id
    join slcm.subject on slcm.subject.subject_id=slcm.student_subject.subject_id
    group by professor_id,slcm.subject.subject_id;

20) Display the details of the students having attendance less than 75%.

    select student_name,subject_name,semester,total_attendance,total_present,total_absent
    from slcm.attendance
    join slcm.student_post on slcm.student_post.roll_no=slcm.attendance.roll_no
    where ((total_present/total_attendance)*100)<75;

21) Display the distinct name of the students who has attendance less than 75%.

    select distinct student_name
    from slcm.attendance
    join slcm.student_post on slcm.student_post.roll_no=slcm.attendance.roll_no
    where ((total_present/total_attendance)*100)<75;

22) Display the details of attendance of students that in how many subject did he/she has less than 75% attendance.

    select student_name,count(subject_name) as number_of_subject 
    from slcm.attendance
    join slcm.student_post on slcm.student_post.roll_no=slcm.attendance.roll_no
    where ((total_present/total_attendance)*100)<75
    group by student_name;

23) Diaplay in which subject has the maximum number of students has attendance less than 75%. 

    select max(subject_name) as maximum_no_students_absent
    from slcm.attendance
    join slcm.student_post on slcm.student_post.roll_no=slcm.attendance.roll_no
    where ((total_present/total_attendance)*100)<75
    group by subject_name;

24) Display the name od students have maximum number of subject has attendance less than 75%.

    select student_name,count(subject_name) as number_of_subject 
    from slcm.attendance
    join slcm.student_post on slcm.student_post.roll_no=slcm.attendance.roll_no
    where ((total_present/total_attendance)*100)<75
    group by student_name
    order by number_of_subject desc;

25) Display the name of the students who doesnot have attendance less than 75% in any subject.

    select distinct slcm.student_post.student_name
    from slcm.attendance
    join slcm.student_post on slcm.student_post.roll_no=slcm.attendance.roll_no
    left join(
	    select distinct student_name,slcm.attendance.roll_no
	    from slcm.attendance
	    join slcm.student_post on slcm.student_post.roll_no=slcm.attendance.roll_no
	    where ((total_present/total_attendance)*100)<75
    ) as low_attendance
    on slcm.attendance.roll_no=low_attendance.roll_no
    where low_attendance.student_name is null;
