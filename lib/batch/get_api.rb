class Batch::GetApi
  def self.get_api
    # API を取得する処理
    events = EventsJp.get_events(service_limit: 100)
    events.each do |e|
      puts "#{e.service} - #{e.title}"
    end
  end
end