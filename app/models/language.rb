class Language
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String

  has_many :categories, through: :categories_languages
  
end
