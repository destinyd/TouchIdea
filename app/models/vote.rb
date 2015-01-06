class Vote
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :finish_at, type: Time

  belongs_to :user
  embeds_many :questions

  validates_presence_of :title
end
