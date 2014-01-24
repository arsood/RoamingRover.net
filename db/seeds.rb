# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  Walker.create([{walker_id: "Walker 1", zipcode: "94110", age: '15', breeds: 'Big and little',
    experience: '7 years', about: "I'm awesome at watching dogs"},
    {walker_id: "Walker 2", zipcode: "94112", age: '25', breeds: 'Big and little',
    experience: '7 years', about: "I'm awesome at watching dogs"},
    {walker_id: "Walker 3", zipcode: "94113", age: '25', breeds: 'Big and little',
    experience: '7 years', about: "I'm awesome at watching dogs"},
    {walker_id: "Walker 4", zipcode: "94114", age: '35', breeds: 'Big and little',
    experience: '7 years', about: "I'm awesome at watching dogs"}])

