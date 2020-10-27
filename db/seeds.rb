# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.destroy.all 
Job.destroy.all
User.destroy.all
Category.destroy.all

List.reset_pk_sequence
Job.reset_pk_sequence
User.reset_pk_sequence
Category.reset_pk_sequence

may = User.create(name: "may")
software engineer = Category.create(name: "Software Engineer")
web developer = Category.create(name: "Web Developer")
computer technician = Category.create(name: "Computer Technician")
graphic designer = Category.create(name: "Graphic Designer")
ux designer = Category.create(name: "Ux Designer")


job1 = Job.create(
    job_title: "Software Engineer", 
    description: "In need of a Front End Software Engineer.", 
    user_id: may.id, 
    category_id: software_engineer.id
)


job2 = Job.create(
    job_title: "Web Developer", 
    description: "In need of Web Developer ASAP!", 
    user_id: may.id, 
    category_id: web_developer.id
)

job3 = Job.create(
    job_title: "Computer Technician", 
    description: "In need of a computer tech to work from home.", 
    user_id: may.id, 
    category_id: computer_technician.id
)


job4 = Job.create(
    job_title: "Graphic Designer", 
    description: "In need of a Graphic Designer, competitve pay!", 
    user_id: may.id, 
    category_id: graphic_designer.id
)


job5 = Job.create(
    job_title: "Ux Designer", 
    description: "In need of a Ux Designer, competitve pay, work from home!", 
    user_id: may.id, 
    category_id: ux_designer.id
)