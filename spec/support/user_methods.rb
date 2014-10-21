def create_user(overrides = {})
  User.create!({
                 username: 'monochrome',
                 password: 'schnee337',
                 first_name: 'Blake',
                 last_name: 'Belladona',
                 bio: 'former member of the White Fang',
                 frequency: 'Daily'
               }.merge(overrides))
end

def create_other_user(overrides = {})
  User.create!({
                 username: 'kaine',
                 password: 'nier1337',
                 first_name: 'gestalt',
                 last_name: 'replicant',
                 bio: 'part shade',
                 frequency: 'Daily'
               }.merge(overrides))
end

def full_name(person)
  [person.first_name, person.last_name].join(" ")
end