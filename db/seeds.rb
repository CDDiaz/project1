User.destroy_all
u1 = User.create :email => 'a@ga.co', :name => 'Abigail', :surname => 'Jones', :dob => '1998-02-15', :phone => '0455555543', :password => 'chicken'
u2 = User.create :email => 'b@ga.co', :name => 'Bob', :surname => 'Starr', :dob => '1999-01-15', :phone => '0445555542', :password => 'chicken'
u3 = User.create :email => 'c@ga.co', :name => 'Charles', :surname => 'Stuart', :dob => '1995-07-11', :phone => '0466555547', :password => 'chicken'
u4 = User.create :email => 'd@ga.co', :name => 'Dan', :surname => 'Nolan', :dob => '1992-03-22', :phone => '0455577541', :password => 'chicken'
u5 = User.create :email => 'admin@ga.co', :name => 'Fred', :surname => 'Corbett', :dob => '1991-05-05', :phone => '0488855549', :password => 'chicken', :admin => true
puts "#{ User.count } users"
u6 = User.create :email => 'cd@ga.co', :name => 'Cris', :surname => 'Diaz', :dob => '1989-10-01', :phone => '0488855525', :password => 'chicken', :admin => true
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
m11 = Measurement.create :weight => 55, :height => 180, :created_at => "2021-07-23 05:00:00", :body_fat => 13
m12 = Measurement.create :weight => 85, :height => 180, :created_at => "2021-07-24 04:00:00", :body_fat => 12
m13 = Measurement.create :weight => 100, :height => 180, :created_at => "2021-07-25 05:00:00", :body_fat => 11
m14 = Measurement.create :weight => 90, :height => 180, :created_at => "2021-07-26 05:00:00", :body_fat => 11
m15 = Measurement.create :weight => 75, :height => 180, :created_at => "2021-07-27 05:00:00", :body_fat => 10

puts "#{ Measurement.count } measurements"

Workout.destroy_all
w1 = Workout.create :name => 'Inferno', :category => 'Muscle Definition', :age_range => '18 to 30', :description => 'Lose fat while maintaining muscle'
w2 = Workout.create :name => 'Pump It', :category => 'Muscle Gain', :age_range => '18 to 30', :description => 'Get bigger without sacrificing endurance'
w3 = Workout.create :name => 'Burn It', :category => 'Muscle Definition', :age_range => '18 to 30', :description => 'Heavy focus on burning fat for muscle definition'
w4 = Workout.create :name => 'MAX', :category => 'Muscle Gain', :age_range => '18 to 30', :description => 'Program designed for maximum muscle growth'
w5 = Workout.create :name => 'The Finisher', :category => 'Cardio', :age_range => '18 to 30', :description => 'Maximum fat burn and endurance'
puts "#{ Workout.count } workouts"

Exercise.destroy_all
e1 = Exercise.create :name => 'Pull-ups', :body_area => 'Arms', :description => 'A pull-up is an upper-body strength exercise. The pull-up is a closed-chain movement where the body is suspended by the hands and pulls up. As this happens, the elbows flex and the shoulders adduct and extend to bring the elbows to the torso.', :video => 'https://www.youtube.com/watch?v=sIvJTfGxdFo'
e2 = Exercise.create :name => 'Push-ups', :body_area => 'Chest', :description => 'A push-up is a common calisthenics exercise beginning from the prone position. By raising and lowering the body using the arms, push-ups exercise the pectoral muscles, triceps, and anterior deltoids, with ancillary benefits to the rest of the deltoids, serratus anterior, coracobrachialis and the midsection as a whole.', :video => 'https://www.youtube.com/watch?v=-Mbr55h3BeQ'
e3 = Exercise.create :name => 'Bench Press', :body_area => 'Chest', :description => 'The bench press, or chest press, is an upper-body weight training exercise in which the trainee presses a weight upwards while lying on a weight training bench. The exercise uses the pectoralis major, the anterior deltoids, and the triceps, among other stabilizing muscles. A barbell is generally used to hold the weight, but a pair of dumbbells can also be used.', :video => 'https://www.youtube.com/watch?v=vthMCtgVtFw'
e4 = Exercise.create :name => 'Seated Row', :body_area => 'Back', :description => "In strength training, rowing (or a row, usually preceded by a qualifying adjective — for instance a seated row) is an exercise where the purpose is to strengthen the muscles that draw the rower's arms toward the body (latissimus dorsi) as well as those that retract the scapulae (trapezius and rhomboids) and those that support the spine (erector spinae).", :video => 'https://www.youtube.com/watch?v=GZbfZ033f74'
e5 = Exercise.create :name => 'Dips', :body_area => 'Chest/Arms', :description => 'A dip is an upper-body strength exercise. Narrow, shoulder-width dips primarily train the triceps, with major synergists being the anterior deltoid, the pectoralis muscles, and the rhomboid muscles of the back.', :video => 'https://www.youtube.com/watch?v=vi1-BOcj3cQ'
e6 = Exercise.create :name => 'Treadmill', :body_area => 'Legs', :description => 'Most treadmills have a "cardio mode", where a target heart rate is defined and the speed and elevation (load) is controlled automatically until the subject is in "heart rate steady state".', :video => 'https://www.youtube.com/watch?v=n4I_fmegTRk'
e7 = Exercise.create :name => 'Spinning', :body_area => 'Legs', :description => 'Spinning is a brand of indoor bicycles and indoor cycling instruction classes distributed and licensed by the American health and fitness company Mad Dogg Athletics.', :video => 'https://www.youtube.com/watch?v=wBurKQX7h4Q'
puts "#{ Exercise.count } exercises"

# Associations ##################################################

puts "Users and measurements"
u1.measurements << m1 << m2
u2.measurements << m3 << m4
u3.measurements << m5 << m6
u4.measurements << m7 << m8
u5.measurements << m9 << m10
u6.measurements << m11 << m12 << m13 << m14 << m15


puts "Workouts and users"
w1.users << u1
w2.users << u2 << u5
w3.users << u3
w5.users << u4
w4.users << u6


puts "Workouts and exercises"
w1.exercises << e1 << e3 << e5
w2.exercises << e2 << e3 << e4
w3.exercises << e1 << e2 << e5
w4.exercises << e3 << e4 << e5
w5.exercises << e2 << e6 << e7
