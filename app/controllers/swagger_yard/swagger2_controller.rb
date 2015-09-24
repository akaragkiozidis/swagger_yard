module SwaggerYard
  class Swagger2Controller < ApplicationController
    layout false

    def index
      render json: Swagger.new.to_json
    end
  end
end
