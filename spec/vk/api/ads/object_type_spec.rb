# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/object_type'

RSpec.describe Vk::API::Ads::ObjectType do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
