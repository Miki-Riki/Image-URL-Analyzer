class AnswersController < ApplicationController
    def analyze_image_url
      image_url = params[:image_url]
  
      if image_url.blank?
        render json: { message: "URL parameter is missing" }, status: :bad_request
        return
      end
  
      if image_url.match(/\.(jpg|jpeg|png|gif)$/i)
        render json: { message: "This is an image" }
      else
        render json: { message: "This is not an image" }, status: :not_found
      end
    end
end
  