module Web
  module Views
    module Teas
      class Index
        include Web::View

        format :json

        def render
          raw JSON.generate({
            data: teas.map{ |tea|
              {
                id: tea.id,
                name: tea.name,
                insertedAt: tea.created_at,
                updatedAt: tea.updated_at
              }
            }
          })
        end
      end
    end
  end
end
