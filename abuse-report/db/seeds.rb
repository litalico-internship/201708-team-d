# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sign.create(:name => '洋服が汚い', :id => 1, :img => "/images/nioi-img.png")
Sign.create(:name =>  '身なりが汚い', :id => 2, :img => "/images/ohuro-img.jpg")
Sign.create(:name => '食事が不十分', :id => 3, :img => "/images/kyushoku-img.jpg")
Sign.create(:name => '家庭内不和', :id => 4, :img => "/images/family-img.png")
Sign.create(:name => '不自然な怪我', :id => 5, :img => "/images/kega-img.png")
Sign.create(:name => '何か気になる', :id => 6, :img => "/images/hatena-img.jpg")

Status.create(:name => '初期状態', :id => 1)
Status.create(:name => '確認済', :id => 2)
Status.create(:name => '対応中', :id => 3)
Status.create(:name => '完了', :id => 4)

School.create(:name => 'リタリコ小学校', :id => 1)
School.create(:name => 'ワンダー小学校', :id => 2)
School.create(:name => 'コノビー小学校', :id => 3)
