# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.destroy_all
User.destroy_all
Category.destroy_all
List.destroy_all 

may = User.create!(name: "may")
annie = User.create!(name: "annie")
software_engineer = Category.create!(name: "Software Engineer")
web_developer = Category.create!(name: "Web Developer")
computer_technician = Category.create!(name: "Computer Technician")
graphic_designer = Category.create!(name: "Graphic Designer")
ux_designer = Category.create!(name: "Ux Designer")


job1 = Job.create(
    job_title: "Software Engineer", 
    description: "In need of a Front End Software Engineer.", 
    user_id: may.id, 
    category_id: software_engineer.id)
    

job2 = Job.create(
    job_title: "Web Developer", 
    description: "In need of Web Developer ASAP!", 
    user_id: may.id, 
    category_id: web_developer.id)
    

job3 = Job.create(
    job_title: "Computer Technician", 
    description: "In need of a computer tech to work from home.", 
    user_id: may.id, 
    category_id: computer_technician.id)
    

job4 = Job.create(
    job_title: "Graphic Designer", 
    description: "In need of a Graphic Designer, competitve pay!", 
    user_id: may.id, 
    category_id: graphic_designer.id)
  

job5 = Job.create(
    job_title: "Ux Designer", 
    description: "In need of a Ux Designer, competitve pay, work from home!", 
    user_id: annie.id, 
    category_id: ux_designer.id)

    list1 = List.create!(job_id: job1.id, user_id: annie.id)
    list2 = List.create!(job_id: job2.id, user_id: annie.id)
    list3 = List.create!(job_id: job3.id, user_id: annie.id)
    list4 = List.create!(job_id: job4.id, user_id: annie.id)
    list5 = List.create!(job_id: job5.id, user_id: may.id)