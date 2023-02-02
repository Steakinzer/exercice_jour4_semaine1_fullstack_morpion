# frozen_string_literal: true

require_relative '../lib/case'

describe 'description' do
  it 'Ce que ca doit te renvoyer' do
    expect(methode(variable)).to eq('valeur')
    expect(methode(variable)).to eq('valeur')
    expect(methode(variable)).to eq('valeur')
  end
end
