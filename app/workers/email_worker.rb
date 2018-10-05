class EmailWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    SendMail.new.send

  end
end
