module Web
  module Controllers
    module Brewings
      class Create
        include Web::Action

        expose :brewing

        def call(params)
          @brewing = BrewingRepository.new.create({
            tea_id: params[:brewing][:teaId],
            amount: params[:brewing][:amount],
            timespan: params[:brewing][:timespan],
            water_temp: params[:brewing][:waterTemp],
            taste: params[:brewing][:taste]
          })
        end
      end
    end
  end
end
