class Batch::GetApi
  def self.get_api
    # API を取得する処理
    events = EventsJp.get_events(service_limit: 20)
    events.each do |e|
      puts "イベントサイト - #{e.service}"
      puts "イベントタイトル - #{e.title}"
      puts "イベント住所 - #{e.address}"
      puts "イベントURL - #{e.event_url}"
      puts " キャッチ - #{e.catch}"
      puts " 開始時間- #{e.started_at}"
      puts " 終了時間- #{e.ended_at}"
      puts "イベント会場 - #{e.place}"
      puts "longitude - #{e.lon}"
      puts "latitude - #{e.lat}"
      puts "人数限界 - #{e.limit}"
      puts "accepted - #{e.accepted}"
      puts "待ち人数 - #{e.waiting}"
    end
  end
end