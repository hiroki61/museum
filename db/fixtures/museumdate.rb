Museum.seed do |s|
	s.id = 1
	s.museum_name = "アサヒビール大山崎山荘美術館"
	s.museum_detail = "緑豊かな風景の中に佇むアサヒビール大山崎山荘美術館は、まるで物語の中に入り込んだかのよう。 築約100年の名建築「大山崎山荘」。天王山中腹に位置し、テラスからの絶景、美しい庭園など四季折々に楽しめます。"
	s.image = Rails.root.join("db/fixtures/museums/asahibi-ru.jpg").open
end

Museum.seed do |s|
	s.id = 2
	s.museum_name = "国立国際美術館"
	s.museum_detail = "金属のフォルムを活かしたユニークな建物。1970年の日本万国博覧会開催に際して建設された万国博美術館を活用している。"
	s.image = Rails.root.join("db/fixtures/museums/kokuritukokusaimuseum.jpg").open
end

Museum.seed do |s|
	s.id = 3
	s.museum_name = "国立新美術館"
	s.museum_detail = "丸みを帯びたうねりが印象的な外観の国立新美術館は建築家・黒川紀章氏が手がけたもの。"
	s.image = Rails.root.join("db/fixtures/museums/kokuritusinmuseum.jpg").open
end

Museum.seed do |s|
	s.id = 4
	s.museum_name = "豊田市美術館"
	s.museum_detail = "ゆったりとした広大なスペース、そして水辺。静寂という言葉が似合うような佇まいの豊田市美術館。モス・グリーンのスレートと乳白の磨りガラスで構成されたモダンな外観が特徴的。建築家、谷口吉生氏の代表作のひとつ。"
	s.image = Rails.root.join("db/fixtures/museums/toyotacitymuseum.jpg").open
end
