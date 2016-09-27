# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/base_bool_int'

RSpec.describe Vk::Schema::Types::BaseBoolInt do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
