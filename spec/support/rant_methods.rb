def create_rant(user, overrides = {})
  Rant.create({
    user_id: user.id,
    title: 'from now on we are enemies',
    rant: 'i just want to be better than, than your heads only medicine . i just want to be better than your head\'s only medicine. a downward spiral just a pirouette. what good comes of something, something, when i\'m just the ghost of nothing? a lunatic of a god or a god of a lunatic?'
              }.merge(overrides))
end

def create_other_rant(user, overrides = {})
  Rant.create({
    user_id: user.id,
    title: 'i only want what i can\'t have',
    rant: 'their faces are dancing, they\'re dancing till they can\'t stand it. composer that never composed, singing the symphonies of the overdosed. Composer that never composed, singing, I only want what i can have, i only want what i can\'t have. heralded as a king before i had a birthday.'
              }.merge(overrides))
end