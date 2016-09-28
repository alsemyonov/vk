# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/personal'

RSpec.describe Vk::API::Users::Personal do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :political }
    it { is_expected.to include :langs }
    it { is_expected.to include :religion }
    it { is_expected.to include :inspired_by }
    it { is_expected.to include :people_main }
    it { is_expected.to include :life_main }
    it { is_expected.to include :smoking }
    it { is_expected.to include :alcohol }
  end
end
