# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/account/user_xtr_contacts'

RSpec.describe Vk::Schema::Model::Account::UserXtrContacts do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :contact }
    it { is_expected.to include :request_sent }
    it { is_expected.to include :sort_num }
  end
end
