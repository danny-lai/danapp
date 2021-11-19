class DevicesController < InheritedResources::Base

  private

    def device_params
      params.require(:device).permit(:model, :uuid, :token, :platform)
    end

end
