module Web
  module Controllers
    module Teas
      class Index
        include Web::Action

        expose :teas

        def call(params)
          @teas = TeaRepository.new.all
        end
        
      end
    end
  end
end
