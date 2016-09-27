# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/pages_privacy_settings'

RSpec.describe Vk::Schema::Types::PagesPrivacySettings do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
