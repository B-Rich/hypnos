require "hypnos/bot/version"
require "olimpo"

module Hypnos
  module Bot
    extend Olimpo
    autoload :Voices, "hypnos/bot/voices"
    autoload :Synthesize, "hypnos/bot/synthesize"
    autoload :Pronunciations, "hypnos/bot/pronunciations"
    autoload :CustomModel, "hypnos/bot/custom_model"
  end
end
