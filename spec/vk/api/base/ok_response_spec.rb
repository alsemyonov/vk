# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/base/ok_response'

RSpec.describe Vk::API::Base::OkResponse do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
