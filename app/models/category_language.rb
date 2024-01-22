class CategoryLanguage
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia

  belongs_to :category
  belongs_to :language
end
