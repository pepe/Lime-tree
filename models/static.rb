class Static
  include MongoMapper::Document

  key :title, String
  key :path, String
  key :body, String
  key :tags, Array

  timestamps!

  scope :tagged_with, ->(tag) {where(tags: {:$all => [tag]})}
  scope :for_menu, where(tags: {:$all => ['in_menu']}).fields(:path, :title).sort(:updated_at.desc)

  def parts
    @parts ||= body ? YAML::load(body) : ''
  end

  def text_tags
    @text_tags ||= tags.join(';')
  end

  def text_tags=(text)
    @text_tags = text
    self.tags = text.split(';')
  end
end
