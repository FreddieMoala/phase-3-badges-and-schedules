def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name)
 
  name.map do |name|
    "Hello, my name is #{name}."
  end
end

name = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
badges = batch_badge_creator(name)
badges.each do |badge|
 puts badge
end

def assign_rooms(name)
  if name.length > 7
    raise "There are only 7 rooms available."
  end

  name.each_with_index.map do |attendees, index|
   "Hello, #{attendees}! You'll be assigned to room #{index + 1}!"
  end
end

name = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
room_assignments = assign_rooms(name)
room_assignments.each do |assignment|
  puts assignment
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |room_assignment|
    puts room_assignment
  end
end