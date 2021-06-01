require 'report_builder'

Before do |scenario|
    visit 'https://gmail.com'
    if ENV['BROWSER'].eql? 'chrome-headless'
        Capybara.current_session.current_window.resize_to(1366, 768)
    end
end

#Configuração para evidenciar cenários de sucesso/erro
After do |scenario|
    sufix = ('error' if scenario.failed?) || 'sucess'
    name = scenario.name.tr('', '_').downcase
    save_screenshot("images/#{sufix}-#{name}.png")
    embed("images/#{sufix}-#{name}.png", 'image/png', 'Screenshot')
end 

#Configuração de report com melhor visualização, gerando gráficos de todos os cenários
at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'logs/report.json'
        config.report_path = 'logs/report'
        config.report_types = [:html]
        config.report_title = 'Fleury'
        config.color = "Cyan"
        config.additional_info = {browser: 'Chrome', environment: 'Fleury'}
    end 
  ReportBuilder.build_report
end

