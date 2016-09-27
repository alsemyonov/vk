# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/account_onoff_options'

RSpec.describe Vk::Schema::Types::AccountOnoffOptions do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
