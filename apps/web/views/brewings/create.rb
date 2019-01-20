module Web
  module Views
    module Brewings
      class Create
        include Web::View
        
        format :json

        def render
          if !brewing
            return raw JSON.generate({data: nil})
          end

          raw JSON.generate({
            data: {
              id: brewing.id,
              teaId: brewing.tea_id,
              amount: brewing.amount,
              timespan: brewing.timespan,
              waterTemp: brewing.water_temp,
              taste: brewing.taste,
              updatedAt: brewing.updated_at,
              insertedAt: brewing.created_at
            }
          })
        end
      end
    end
  end
end
