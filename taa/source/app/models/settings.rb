# frozen_string_literal: true

class Sinclair
  module Settable
    class Caster
      cast_with(:seconds) { |value| value.to_i.seconds }
    end
  end
end

class Settings
  extend Sinclair::ChainSettable

  source :env, EnvSettings
  #source :db,  ActiveSettings

  setting_with_options(:cache_age, default: 10.seconds, type: :seconds)
  setting_with_options(:title, default: 'Stalchild')
  setting_with_options(:favicon, default: '/favicon.ico')
end
