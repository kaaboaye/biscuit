module Web
  module Controllers
    module Brewings
      class Create
        include Web::Action

        def call(params)
          BrewingRepository.new.create params[:brewing]

          redirect_to "/teas/#{params[:brewing][:tea_id]}"
        end
      end
    end
  end
end
