module Web
  module Controllers
    module Brewings
      class New
        include Web::Action

        expose :tea

        def call(params)
          @tea = TeaRepository.new.find params[:tea_id]
        end
      end
    end
  end
end
