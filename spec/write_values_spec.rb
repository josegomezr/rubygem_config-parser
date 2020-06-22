require_relative 'spec_helper'

describe Common::Options do
  subject { Common::Options.new('spec/fixtures/example_config.yml') }

  it 'writes a value' do
    subject.plain_key = 'new_plain_value'
    expect( subject.plain_key ).to eq('new_plain_value')
  end

  it 'writes nested value' do
    subject.nested.nested_key = 'new_nested_value_default'
    expect( subject.nested.nested_key ).to eq('new_nested_value_default')
  end

  it 'writes a deeply nested value' do
    subject.nested.with_another.level = 'of_new_nestedness'
    expect( subject.nested.with_another.level ).to eq('of_new_nestedness')
  end

  it 'doesn\'t allow writes on a not present key' do
    expect { subject.another_key = false }.to raise_error(NoMethodError)
  end
end
