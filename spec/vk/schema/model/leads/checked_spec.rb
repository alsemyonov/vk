# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/leads/checked'

RSpec.describe Vk::Schema::Model::Leads::Checked do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :result }
    it { is_expected.to include :reason }
    it { is_expected.to include :start_link }
    it { is_expected.to include :sid }
  end
end
