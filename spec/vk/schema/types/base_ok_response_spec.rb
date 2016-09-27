# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/base_ok_response'

RSpec.describe Vk::Schema::Types::BaseOkResponse do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
