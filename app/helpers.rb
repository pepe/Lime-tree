# Helper methods defined here can be accessed in any controller or view in the application

LimeTree.helpers do
  def get_static(path='')
    @body = Static.where(path: path).first.body
    @side = Static.where(path: "#{path}_side").first.try(:body)
  end

  def menu_items
    Static.for_menu.map do |page|
      content_tag(:li, link_to(page.title, url(:pages, path: page.path), :unless => :current))
    end.join('')
  end

  def load_configuration
    @configuration = Static.tagged_with('configuration').first
  end

  def format(text)
    Redcarpet.new(text).to_html
  end
end
