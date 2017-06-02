require "hypnos/bot/version"
require "olimpo"

module Hypnos
  module Bot
    extend Olimpo
    autoload :Voices, "hypnos/bot/voices"
    autoload :Synthesize, "hypnos/bot/synthesize"
  end
end
