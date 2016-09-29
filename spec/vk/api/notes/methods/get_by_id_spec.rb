# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/notes/methods/get_by_id'

RSpec.describe Vk::API::Notes::Methods::GetById do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :note_id }
    it { is_expected.to include :owner_id }
  end
end
