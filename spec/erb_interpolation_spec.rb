require_relative 'spec_helper'

describe Common::Options do
  subject { Common::Options.new('spec/fixtures/example_config.yml') }

  its(:plain_key) { is_expected.to eq('plain_value') }
  its(:erb_key) { is_expected.to eq('erb_value') }
  its(:mixed_key) { is_expected.to eq('mixed_value') }

  context 'environment interpolation' do
    around do |example|
      ENV['TEST_KEY'] = 'test_value'
      example.call
      ENV.delete('TEST_KEY')
    end

    its(:env_key) { is_expected.to eq('test_value') }
  end
end
