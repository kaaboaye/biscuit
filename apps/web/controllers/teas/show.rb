module Web
  module Controllers
    module Teas
      class Show
        include Web::Action

        expose :tea

        def call(params)
          @tea = TeaRepository.new.find_with_brewings params[:id]
        end
      end
    end
  end
end
