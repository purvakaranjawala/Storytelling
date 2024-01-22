class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia

  field :title, type: String
  field :description, type: String

  has_many :languages, through: :categories_languages
  after_save :clear_cache

  def clear_cache
    $redis.del "categories"
  end
end
