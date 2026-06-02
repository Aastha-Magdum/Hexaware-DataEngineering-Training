# EdTech Learning Platform Database

## Database Design

For this project, I created a MongoDB database for an online learning platform. The purpose of this database is to store learner information, course details, instructor records, enrollment data, payment information, course progress, and quiz performance.

## Collections Used

The database contains four collections:

- Learners
- Courses
- Instructors
- Enrollments

## Collection Relationships

- Learners and Enrollments are connected through Learner ID.
- Courses and Enrollments are connected through Course ID.
- Instructors and Courses are connected through Instructor ID.
- Payment, progress, and quiz details are stored within the Enrollments collection.

## Key Insights from Reports

- Revenue reports show income generated from course enrollments.
- Learner reports help analyze career goals and experience levels.
- Course reports identify popular and high-performing courses.
- Instructor reports help evaluate teaching performance and ratings.
- Progress reports help track course completion percentages.
- Enrollment reports provide insights into learner participation and payment status.

## Conclusion

This project demonstrates how MongoDB can be used to store, manage, and analyze educational platform data effectively through querying, aggregation, updates, and data integration techniques.
