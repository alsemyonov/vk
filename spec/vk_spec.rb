# frozen_string_literal: true
require 'spec_helper'

describe Vk do
  it { is_expected.to respond_to(:client) }

  it { expect(Vk.client).to be_a Vk::Client }
end
