# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/wall_post_type'

RSpec.describe Vk::Schema::Types::WallPostType do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
