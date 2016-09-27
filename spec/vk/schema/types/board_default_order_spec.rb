# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/board_default_order'

RSpec.describe Vk::Schema::Types::BoardDefaultOrder do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
