require 'json'
require_relative '../classes/label'

module LabelModule
  def load_label
    data = []
    file = './data/label.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |label|
        data.push(Label.new(label['title'], label['color']))
      end
    else
      File.write(file, [])
    end

    data
  end

  def create_label
    data = []
    @labels.each do |label|
      data.push({ title: label.title, color: label.color })
    end
    open('./data/label.json', 'w') { |f| f << JSON.generate(data) }
  end
end
