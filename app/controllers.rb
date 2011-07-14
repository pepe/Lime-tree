LimeTree.controllers  do
  get :root, map: '/' do
    get_static
    render 'page'
  end

  get :pages, map: '/', with: :path do
    get_static(params[:path])
    render 'page'
  end
end
