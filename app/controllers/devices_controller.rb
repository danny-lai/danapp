class DevicesController < InheritedResources::Base
  protect_from_forgery with: :null_session
  

  # def index
  #   puts "DevicesController list params= #{params}"
  #   @devices
  # end
  
  def show
    puts "DevicesController show params= #{params}"
  end
  
  def new
    puts "DevicesController new params= #{params}"
  end
  
  def create
    puts "DevicesController create params= #{params}"
    respond_to do |format|
      @device = Device.new
      @device.model = params["device"]["model"]
      @device.uuid = params["device"]["uuid"]
      @device.platform = params["device"]["platform"]
      @device.token = params["device"]["token"]
      if @device.save
        format.html do
          redirect_to '/'
        end
        format.json { render json: @device.to_json }
      else
        format.html { render 'new'} ## Specify the format in which you are rendering "new" page
        format.json { render json: @device.errors } ## You might want to specify a json format as well
      end
    end
  end
  
  def edit
    puts "DevicesController edit params= #{params}"
  end
  
  def update
    puts "DevicesController update params= #{params}"
  end
  
  def delete
    puts "DevicesController delete params= #{params}"
  end

  private

    def device_params
      params.require(:device).permit(:model, :uuid, :token, :platform)
    end

end
