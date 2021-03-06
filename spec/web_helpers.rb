def sign_up
  visit '/users/new'
  fill_in 'username', with: 'SexyClownfish'
  fill_in 'email', with: 'mike@aol.com'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password'
  click_button 'Create new user'
end

def different_passwords
  visit '/users/new'
  fill_in 'username', with: 'Superhot'
  fill_in 'email', with: 'modern@aol.com'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password2222'
  click_button 'Create new user'
end

def requires_email
  visit '/users/new'
  fill_in 'username', with: 'SexyPokemon'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password'
  click_button 'Create new user'
end

def invalid_email_format
  visit '/users/new'
  fill_in 'username', with: 'SexyWarrior'
  fill_in 'email', with: 'abc'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password'
  click_button 'Create new user'
end

def requires_username
  visit '/users/new'
  fill_in 'email', with: 'stu@vampirehelper.com'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password'
  click_button 'Create new user'
end

def duplicate_username
  sign_up
  visit '/users/new'
  fill_in 'username', with: 'SexyClownfish'
  fill_in 'email', with: 'mike2@aol.com'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password'
  click_button 'Create new user'
end

def duplicate_email
  sign_up
  visit '/users/new'
  fill_in 'username', with: 'SexyClownfish2'
  fill_in 'email', with: 'mike@aol.com'
  fill_in 'password', with: 'password'
  fill_in 'password_confirmation', with: 'password'
  click_button 'Create new user'
end

def sign_in_no_longer_needed
  sign_up
  visit '/users/signin'
  fill_in 'username', with: 'SexyClownfish'
  fill_in 'email', with: 'mike@aol.com'
  fill_in 'password', with: 'password'
  click_button 'Sign in'
end
