FactoryGirl.define do
  factory :group_reporter do
    association :group, :factory => :group
    association :reporter, :factory => :reporter_mailer
  end
end
