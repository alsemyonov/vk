# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/ads_access_role'

RSpec.describe Vk::Schema::Types::AdsAccessRole do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
