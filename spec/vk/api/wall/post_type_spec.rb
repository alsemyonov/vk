# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/post_type'

RSpec.describe Vk::API::Wall::PostType do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
