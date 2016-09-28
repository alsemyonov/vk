# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/onoff_options'

RSpec.describe Vk::API::Account::OnoffOptions do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
