# Helper methods defined here can be accessed in any controller or view in the application

LimeTree.helpers do
  def get_static(path='')
    static = Static.where(path: path).first
    @title = static.title
    @body = static.body
  end
end
