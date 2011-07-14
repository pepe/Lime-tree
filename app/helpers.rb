# Helper methods defined here can be accessed in any controller or view in the application

LimeTree.helpers do
  def get_static(path='')
    static = Static.where(path: path).first
    @title = static.title
    @body = static.body
  end

  def menu_items
    Static.tagged_with('in_menu').map do |page|
      content_tag(:li, link_to(page.title, url(:pages, path: page.path)))
    end.join('')
  end
end
