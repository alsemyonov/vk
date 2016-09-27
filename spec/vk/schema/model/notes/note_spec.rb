# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/notes/note'

RSpec.describe Vk::Schema::Model::Notes::Note do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :comments }
    it { is_expected.to include :can_comment }
    it { is_expected.to include :date }
    it { is_expected.to include :title }
    it { is_expected.to include :text }
    it { is_expected.to include :text_wiki }
    it { is_expected.to include :view_url }
  end
end
