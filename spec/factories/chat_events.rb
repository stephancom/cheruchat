# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :chat_event do
    type ""
    chat_room nil
    user nil
    target_user nil
    comment "MyString"
  end
end
