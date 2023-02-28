require 'counter'

describe Counter do 
    it 'Returns the input as output' do
        counter = Counter.new
        expect(counter).to eq counter
    end

    it 'Returns the input after being set' do
        counter = Counter.new
        expect(counter.set('One')).to eq 'One'
    end

    # xit'Counts the number of occurences in a string' do
    #     counter = Counter.new
    #     counter.set('One')
    #     expect(counter.count).to eq 1
    # end

    it 'Counts the number of times Green is mentioned in the string' do
        counter = Counter.new
        counter.set('Green')
        expect(counter.count).to eq 1
    end

    it 'Outputs the number of occurences that the input Green appears is the string' do
        counter = Counter.new
        counter.set('Green')
        counter.count
        expect(counter.output).to eq ("Green: 1, Amber: 0, Red: 0")
    end

    it 'Outputs the number of occurences when there are multiple colors in the string' do
        counter = Counter.new
        counter.set('Green, Amber')
        counter.count
        expect(counter.output).to eq ("Green: 1, Amber: 1, Red: 0")
    end

    it 'Outputs the number of occurences when there are all three colors in the string' do
        counter = Counter.new
        counter.set('Green, Amber, Red')
        counter.count
        expect(counter.output).to eq ("Green: 1, Amber: 1, Red: 1")
    end

    it 'Outputs the number of occurences when there are multiple occurences of some colors and individual occurences of others in the string' do
        counter = Counter.new
        counter.set('Green, Amber, Red, Green, Green')
        counter.count
        expect(counter.output).to eq ("Green: 3, Amber: 1, Red: 1")
    end

    it 'Outputs the number of occurences when there are multiple occurences of all colors others in the string' do
        counter = Counter.new
        counter.set('Green, Amber, Amber, Red, Red, Green, Green')
        counter.count
        expect(counter.output).to eq ("Green: 3, Amber: 2, Red: 2")
    end
end 