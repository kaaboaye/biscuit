module Web
  module Views
    module Teas
      class Show
        include Web::View

        format :json

        def render
          if !tea
            return raw JSON.generate({data: nil})
          end

          raw JSON.generate({
            data: {
              id: tea.id,
              name: tea.name,
              brewings: tea.brewings.map{ |b|
                {
                  id: b.id,
                  teaId: b.tea_id,
                  amount: b.amount,
                  timespan: b.timespan,
                  waterTemp: b.water_temp,
                  taste: b.taste,
                  updatedAt: b.updated_at,
                  insertedAt: b.created_at
                }
              },
              updatedAt: tea.updated_at,
              insertedAt: tea.created_at
            }
          })
        end
      end
    end
  end
end
