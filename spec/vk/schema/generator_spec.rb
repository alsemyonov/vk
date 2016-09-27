# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Vk::Schema::Generator do
  it { is_expected.to respond_to :objects_schema }
end
