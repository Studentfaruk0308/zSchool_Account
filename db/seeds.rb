# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tuitionfee.create(tuitionfee_code: 'TF201', term_1_fee: 110, term_2_fee: 120, term_3_fee: 130, term_4_fee: 140, full_year_fee:480)

Salary.create(salary_code: 'SC201', fortnightly_salary:1250)

Feepayment.create([{
    :feepayment_code => 'FP201',
    :date_of_payment => DateTime.strptime("20/09/2022 11:50", "%d/%m/%Y %H:%M"),
    :amount_of_payment => 120,
    :student_id => 1}])

# Meeting.create([   {
#     :title =>
#     "This meeting parses fine",
#     :startDate =>
#     DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
#     :endDate =>
#     DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M")   },   {
#     :title =>
#     "This meeting errors out",
#     :startDate =>
#     DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M")
#     :endDate =>
#     DateTime.strptime("09/14/2009 9:00", "%m/%d/%Y %H:%M")   }]) 

#     create_table "feepayments", force: :cascade do |t|
#       t.string "feepayment_code"
#       t.datetime "date_of_payment"
#       t.integer "amount_of_payment"
#       t.integer "student_id", null: false
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#       t.index ["student_id"], name: "index_feepayments_on_student_id"
#     end

#    create_table "classrooms", force: :cascade do |t|
#       t.string "classroom_code"
#       t.string "classroom_name"
#       t.string "classroom_gender"
#       t.integer "teacher_id", null: false
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#       t.index ["teacher_id"], name: "index_classrooms_on_teacher_id"
#     end
  

  
#     
  
#     create_table "salarypayments", force: :cascade do |t|
#       t.string "salarypayment_code"
#       t.datetime "date_of_payment"
#       t.integer "amount_of_payment"
#       t.integer "teacher_id", null: false
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#       t.index ["teacher_id"], name: "index_salarypayments_on_teacher_id"
#     end
  
#     create_table "students", force: :cascade do |t|
#       t.string "student_code"
#       t.string "student_name"
#       t.datetime "student_date_of_birth"
#       t.string "student_email"
#       t.string "student_homeaddress"
#       t.string "student_mobile_number"
#       t.string "student_gender"
#       t.string "student_parent_name"
#       t.datetime "enrolled_date"
#       t.integer "classroom_id", null: false
#       t.integer "tuitionfee_id", null: false
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#       t.index ["classroom_id"], name: "index_students_on_classroom_id"
#       t.index ["tuitionfee_id"], name: "index_students_on_tuitionfee_id"
#     end
  
#     create_table "teachers", force: :cascade do |t|
#       t.string "teacher_code"
#       t.string "teacher_name"
#       t.string "teacher_email"
#       t.string "teacher_homeaddress"
#       t.string "teacher_mobile_number"
#       t.string "teacher_gender"
#       t.datetime "engagement_date"
#       t.string "teacher_bankdetails"
#       t.integer "salary_id", null: false
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#       t.index ["salary_id"], name: "index_teachers_on_salary_id"
#     end
  

  
#     add_foreign_key "classrooms", "teachers"
#     add_foreign_key "feepayments", "students"
#     add_foreign_key "salarypayments", "teachers"
#     add_foreign_key "students", "classrooms"
#     add_foreign_key "students", "tuitionfees"
#     add_foreign_key "teachers", "salaries"
#   end