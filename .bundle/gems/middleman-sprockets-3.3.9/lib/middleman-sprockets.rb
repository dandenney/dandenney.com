require "middleman-core"

Middleman::Extensions.register(:sprockets) do
  require "middleman-sprockets/extension"
  Middleman::SprocketsExtension
end
