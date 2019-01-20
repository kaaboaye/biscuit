module Web
  module Controllers
    module Teas
      class Create
        include Web::Action

        expose :tea

        def call(params)
          @tea = TeaRepository.new.create(params[:tea])
        end
      end
    end
  end
end
