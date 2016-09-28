# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/pages/privacy_settings'

RSpec.describe Vk::API::Pages::PrivacySettings do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
