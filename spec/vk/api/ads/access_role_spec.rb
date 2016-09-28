# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/access_role'

RSpec.describe Vk::API::Ads::AccessRole do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
