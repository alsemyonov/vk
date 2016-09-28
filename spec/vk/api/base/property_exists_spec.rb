# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/property_exists'

RSpec.describe Vk::API::Base::PropertyExists do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
