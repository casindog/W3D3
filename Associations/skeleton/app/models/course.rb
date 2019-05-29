class Course < ApplicationRecord
  has_many :enrollments,
  primary_key: :id,
  class_name: :Enrollment,
  foreign_key:  :course_id

  has_one :prereqs, 
  primary_key: :prereq_id,
  class_name: :Course,
  foreign_key: :id

  has_one :instructor,
  primary_key: :instructor_id,
  class_name: :User,
  foreign_key: :id

  has_many :enrolled_students, through: :enrollments, source: :user
end
