# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/info'

RSpec.describe Vk::API::Account::Info do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :country }
    it { is_expected.to include :https_required }
    it { is_expected.to include :own_posts_default }
    it { is_expected.to include :no_wall_replies }
    it { is_expected.to include :intro }
    it { is_expected.to include :lang }
  end
end
