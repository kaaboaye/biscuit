module Web
  module Controllers
    module Teas
      class Create
        include Web::Action

        def call(params)
          TeaRepository.new.create(params[:tea])

          redirect_to '/'
        end
      end
    end
  end
end
