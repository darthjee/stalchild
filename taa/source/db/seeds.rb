# frozen_string_literal: true

return if Rails.env.production? && ENV['FORCE_SEED'].nil?
