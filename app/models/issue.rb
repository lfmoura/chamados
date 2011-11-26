class Issue < ActiveRecord::Base
  belongs_to :project
  belongs_to :opener_user, :class_name => 'User'
  belongs_to :assignee_user, :class_name => 'User'
  belongs_to :status

  def self.create_from_message(msg)
    i = Issue.new
    i.subject = msg.subject
    i.text = msg.text_part.decoded
    i.save!
    i
  end
end
