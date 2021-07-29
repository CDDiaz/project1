User.destroy_all
u1 = User.create :email => 'a@ga.co', :name => 'Abigail', :surname => 'Jones', :dob => '1998-02-15', :phone => '0455555543', :password => 'chicken'
u2 = User.create :email => 'b@ga.co', :name => 'Bob', :surname => 'Starr', :dob => '1999-01-15', :phone => '0445555542', :password => 'chicken'
u3 = User.create :email => 'c@ga.co', :name => 'Charles', :surname => 'Stuart', :dob => '1995-07-11', :phone => '0466555547', :password => 'chicken'
u4 = User.create :email => 'd@ga.co', :name => 'Dan', :surname => 'Nolan', :dob => '1992-03-22', :phone => '0455577541', :password => 'chicken'
u5 = User.create :email => 'admin@ga.co', :name => 'Fred', :surname => 'Corbett', :dob => '1991-05-05', :phone => '0488855549', :password => 'chicken', :admin => true
puts "#{ User.count } users"

Measurement.destroy_all
m1 = Measurement.create :weight => 55, :height => 160, :body_fat => 355
m2 = Measurement.create :weight => 45, :height => 160
m3 = Measurement.create :weight => 65, :height => 162
m4 = Measurement.create :weight => 55, :height => 162
m5 = Measurement.create :weight => 75, :height => 164
m6 = Measurement.create :weight => 65, :height => 164
m7 = Measurement.create :weight => 85, :height => 166
m8 = Measurement.create :weight => 75, :height => 166
m9 = Measurement.create :weight => 95, :height => 168
m10 = Measurement.create :weight => 85, :height => 168
puts "#{ Measurement.count } measurements"

Workout.destroy_all
w1 = Workout.create :name => 'Inferno', :category => 'Muscle Definition', :age_range => '18 to 30', :description => 'asdads'
w2 = Workout.create :name => 'Pump It', :category => 'Muscle Gain', :age_range => '18 to 30', :description => 'asdads'
w3 = Workout.create :name => 'Burn It', :category => 'Muscle Definition', :age_range => '18 to 30', :description => 'asdads'
w4 = Workout.create :name => 'MAX', :category => 'Muscle Gain', :age_range => '18 to 30', :description => 'asdads'
w5 = Workout.create :name => 'The Finisher', :category => 'Cardio', :age_range => '18 to 30', :description => 'asdads'
puts "#{ Workout.count } workouts"

Exercise.destroy_all
e1 = Exercise.create :name => 'Pull-ups', :body_area => 'Arms', :description => 'asdasd', :video => 'https://www.youtube.com/watch?v=sIvJTfGxdFo'
e2 = Exercise.create :name => 'Push-ups', :body_area => 'Chest', :description => 'asdasd', :video => 'https://www.youtube.com/watch?v=-Mbr55h3BeQ'
e3 = Exercise.create :name => 'Bench Press', :body_area => 'Chest', :description => 'asdasd', :video => 'https://www.youtube.com/watch?v=vthMCtgVtFw'
e4 = Exercise.create :name => 'Seated Row', :body_area => 'Back', :description => 'asdasd', :video => 'https://www.youtube.com/watch?v=GZbfZ033f74'
e5 = Exercise.create :name => 'Dips', :body_area => 'Chest/Arms', :description => 'asdasd', :video => 'https://www.youtube.com/watch?v=vi1-BOcj3cQ'
e6 = Exercise.create :name => 'Treadmill', :body_area => 'Legs', :description => 'asdasd', :video => 'https://www.youtube.com/watch?v=n4I_fmegTRk'
e7 = Exercise.create :name => 'Spinning', :body_area => 'Legs', :description => 'asdasd', :video => 'https://www.youtube.com/watch?v=wBurKQX7h4Q'
puts "#{ Exercise.count } exercises"

# Associations ##################################################

puts "Users and measurements"
u1.measurements << m1 << m2
u2.measurements << m3 << m4
u3.measurements << m5 << m6
u4.measurements << m7 << m8
u5.measurements << m9 << m10


puts "Workouts and users"
w1.users << u1
w2.users << u2 << u5
w3.users << u3
w5.users << u4


puts "Workouts and exercises"
w1.exercises << e1 << e3 << e5
w2.exercises << e2 << e3 << e4
w3.exercises << e1 << e2 << e5
w4.exercises << e3 << e4 << e5
w5.exercises << e2 << e6 << e7
