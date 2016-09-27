# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/users/user_lim'

RSpec.describe Vk::Schema::Model::Users::UserLim do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :photo }
    it { is_expected.to include :name }
    it { is_expected.to include :name_gen }
  end
end
