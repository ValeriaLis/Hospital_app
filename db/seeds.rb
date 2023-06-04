require 'faker'

100.times do
  Clinic.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.cell_phone_with_country_code,
    email: Faker::Internet.email,
    foundation_year: Faker::Number.between(from: 1800, to: Date.today.year)
  )
end

# Заповнення таблиці Department
100.times do
  Department.create(
    name: Faker::Job.field,
    clinic_id: Clinic.all.sample.id
  )
end

# Заповнення таблиці Spec

100.times do
  Specialty.create(
    name: Faker::Job.title
  )
end

# Заповнення таблиці Doctor

100.times do
  Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    middle_name: Faker::Name.middle_name,
    birth_date: Faker::Date.between(from: '1960-01-01', to: '2003-12-31'),
    specialty_id: Specialty.all.sample.id,
    department_id: Department.all.sample.id,
    phone: Faker::PhoneNumber.cell_phone_with_country_code
  )
end

# Заповнення таблиці Patient

100.times do
  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    middle_name: Faker::Name.middle_name,
    birth_date: Faker::Date.between(from: '1940-01-01', to: '2013-12-31'),
  )
end

# Заповнення таблиці PatientCard

100.times do
  PatientCard.create(
    insurance_number: Faker::IDNumber.valid,
    date_start: Faker::Date.between(from: '2020-01-01', to: '2022-12-31'),
    clinic_id: Clinic.all.sample.id,
    diagnosis: Faker::Games::Pokemon.name,
    patient_id: Patient.all.sample.id
  )
end