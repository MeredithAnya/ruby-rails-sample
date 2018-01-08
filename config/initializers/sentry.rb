Raven.configure do |config|
  config.rails_activesupport_breadcrumbs = true
  config.processors -= [Raven::Processor::PostData]
end

#meredith.a.heller@gmail.com test project
# Raven.configure do |config|
#   config.dsn = 'http://dcfa6e0ce9024998a374de600f1f3cca:89fee579018344d29edf323b19a0e417@dev.getsentry.net:8000/2'
# end
