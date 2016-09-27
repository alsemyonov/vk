# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/base_property_exists'

RSpec.describe Vk::Schema::Types::BasePropertyExists do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
