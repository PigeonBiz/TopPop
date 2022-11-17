# frozen_string_literal: true

folders = %w[videos players]
folders.each do |folder|
  require_relative "#{folder}/init"
end
