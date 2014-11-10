require 'spec_helper'

describe Sale do 
	let(:sale) { create(:sale, total_amount: 20, discount: 0.05) }
	
	describe '#zero' do
		it 'returns zero' do 
			expect(sale.zero).to eq 0.0
		end
	end

	describe '#remaining_to_pay' do		
		it 'returns the amount left to pay' do
			Sale.any_instance.should_receive(:paid_total).and_return(10)
			expect(sale.remaining_to_pay).to eq 10
		end
	end

	describe '#get_discounted_amount' do
		it 'returns the discounted value' do 
			expect(sale.get_discounted_amount).to eq 1
		end
	end

	describe '#change_due' do
		context 'when total_amount is nil' do
			let(:sale_2) { create(:sale, total_amount: nil) }
			it 'returns zero' do
				expect(sale_2.change_due).to eq 0.0
			end
		end

		context 'when total amount is not nil' do
		end
	end
end