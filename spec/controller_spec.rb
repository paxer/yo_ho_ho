RSpec.describe YoHoHo::Controller do
  context '#render' do
    it 'renders the ERB template' do
      controller = described_class.new({ 'ENV' => 'VARS' })
      template = '<h1><%= star_wars %></h1>'
      expect(File).to receive(:read).with('app/views/yo_ho_ho/test.html.erb').and_return(template)
      result = controller.render('test', star_wars: 'Darth Vader')
      expect(result).to eq('<h1>Darth Vader</h1>')
    end
  end

  context '#controller' do
    it 'underscores controller name' do
      class StarWarsController < YoHoHo::Controller; end
      expect(StarWarsController.new({}).controller_name).to eq('star_wars')
    end
  end
end
