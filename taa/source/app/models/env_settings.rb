# frozen_string_literal: true

class EnvSettings
  extend Sinclair::EnvSettable

  settings_prefix 'STALCHILD'

  with_settings(
    :cache_age,
    :title,
    :favicon
  )
end
