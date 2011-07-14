LimeTree.controllers  do
  get :pages, map: '/', with: :path do
    static = Static.where(path: params[:path]).first
    @title = static.title
    @body = static.body
    render 'page'
  end

end
