Admin.controllers :statics do

  get :index do
    @statics = Static.all
    render 'statics/index'
  end

  get :new do
    @static = Static.new
    render 'statics/new'
  end

  post :create do
    @static = Static.new(params[:static])
    if @static.save
      flash[:notice] = 'Static was successfully created.'
      redirect url(:statics, :edit, :id => @static.id)
    else
      render 'statics/new'
    end
  end

  get :edit, :with => :id do
    @static = Static.find(params[:id])
    render 'statics/edit'
  end

  put :update, :with => :id do
    @static = Static.find(params[:id])
    if @static.update_attributes(params[:static])
      flash[:notice] = 'Static was successfully updated.'
      redirect url(:statics, :edit, :id => @static.id)
    else
      render 'statics/edit'
    end
  end

  delete :destroy, :with => :id do
    static = Static.find(params[:id])
    if static.destroy
      flash[:notice] = 'Static was successfully destroyed.'
    else
      flash[:error] = 'Impossible destroy Static!'
    end
    redirect url(:statics, :index)
  end
end