When(/^I go to the home page$/) do
  visit root_path
end

Then(/^I am on the vim intro lesson page$/) do
  expect(current_path).to eq '/lessons/vim-intro'
end

Given /^I have a vim intro lesson$/ do
  @lesson = Fabricate(:lesson, name: 'Vim Intro')
  @level  = Fabricate(:level, lesson: @lesson)
  @command = Fabricate(:command, name: 'change word', keystroke: 'cw', level: @level)
  @command = Fabricate(:command, name: 'change word', keystroke: 'cw', level: @level)
end
