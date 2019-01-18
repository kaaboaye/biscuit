module Web
  module Controllers
    module Teas
      class Create
        include Web::Action

        def call(params)
          tea = TeaRepository.new.create(params[:tea])

          redirect_to "/teas/#{tea.id}"
        end
      end
    end
  end
end
