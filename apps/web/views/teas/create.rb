module Web
  module Views
    module Teas
      class Create
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
              updatedAt: tea.updated_at,
              insertedAt: tea.created_at
            }
          })
        end
      end
    end
  end
end
