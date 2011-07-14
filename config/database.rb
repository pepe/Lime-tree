MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)

case Padrino.env
  when :development then MongoMapper.database = 'lime_tree_development'
  when :production  then MongoMapper.database = 'lime_tree_production'
  when :test        then MongoMapper.database = 'lime_tree_test'
end
