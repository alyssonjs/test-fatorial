require 'spec_helper'

describe 'Factorial' do
    context 'with valid numbers' do
        it "when given 0" do
            expect(get_fact(0)).to eq(1)
        end

        it "when given -1" do
            expect(get_fact(-1)).to eq(nil)
        end

        it "when given 2, returns 2" do
            expect(get_fact(2)).to be > 1
        end

        it "when given 5, returns 120" do
            expect(get_fact(5)).not_to eq(nil)
        end
    end

    context 'with invalid parameters' do
        it 'when given a float value, return false' do
            expect(get_fact(5.0)).to eq("Não é possivel calculor o fatorial de 5.0, pois ele não é um número inteiro")
        end

        it 'when given a nil value, return false' do
            expect(get_fact(nil)).to eq("Não é possivel calculor o fatorial de , pois ele não é um número inteiro")
        end

        it 'when given a string number, return false' do
            expect(get_fact('2')).to eq("Não é possivel calculor o fatorial de 2, pois ele não é um número inteiro")
        end

        it "when given string, return false" do
            expect(get_fact('Test String')).to eq("Não é possivel calculor o fatorial de Test String, pois ele não é um número inteiro")
        end

        it "when given a array of numbers, return false" do
            expect(get_fact([1, 2, 3])).to eq("Não é possivel calculor o fatorial de [1, 2, 3], pois ele não é um número inteiro")
        end
    end
end