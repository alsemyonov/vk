# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/board/default_order'

RSpec.describe Vk::API::Board::DefaultOrder do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
