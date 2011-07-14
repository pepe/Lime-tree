class Static
  include MongoMapper::Document

  key :title, String
  key :path, String
  key :body, String
  key :tags, Array

  timestamps!

  scope :tagged_with, ->(tag) {where(tags: {:$all => [tag]})}

  def parts
    @parts ||= body ? YAML::load(body) : ''
  end
end
