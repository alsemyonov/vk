# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/users/personal'

RSpec.describe Vk::Schema::Model::Users::Personal do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

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
