# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    description "MyText"
    members_limit 1
    venue "MyString"
    venue_url "MyString"
    venue_address "MyString"
    done false
    start_time ""
    end_time "2013-12-19 17:08:43"
    community nil
  end
end
