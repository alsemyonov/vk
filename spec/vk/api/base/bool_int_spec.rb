# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/bool_int'

RSpec.describe Vk::API::Base::BoolInt do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
