# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/ads_object_type'

RSpec.describe Vk::Schema::Types::AdsObjectType do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
