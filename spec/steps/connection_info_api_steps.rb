step 'This API provides features to get connection information' do
end

step 'I hit /ip' do
  visit '/ip'
end

step 'it returns ip address as string' do
  expect(page.text).to eq('127.0.0.1')
end

step 'I hit /api?fields=ip' do
  visit '/api?fields=ip'
end

step 'it returns ip address as json' do
  expect(page.text).to eq({ ip: '127.0.0.1' }.to_json)
end

step 'I hit /api?fields=host' do
  visit '/api?fields=host'
end

step 'it returns Remote Host as json' do
  expect(page.text).to eq({ host: 'localhost' }.to_json)
end

step 'I hit /api?fields=ua' do
  visit '/api?fields=ua'
end

step 'it returns User Agent as json' do
  expect(page.text).to eq({ ua: nil }.to_json)
end

step 'I hit /api?fields=port' do
  visit '/api?fields=port'
end

step 'it returns Port as json' do
  expect(page.text).to eq({ port: 80 }.to_json)
end

step 'I hit /api?fields=lang' do
  visit '/api?fields=lang'
end

step 'it returns Lang as json' do
  expect(page.text).to eq({ lang: [] }.to_json)
end

step 'I hit /api?fields=connection' do
  visit '/api?fields=connection'
end

step 'it returns Connection as json' do
  expect(page.text).to eq({ connection: nil }.to_json)
end

step 'I hit /api?fields=encoding' do
  visit '/api?fields=encoding'
end

step 'it returns Encoding as json' do
  expect(page.text).to eq({ encoding: [] }.to_json)
end

step 'I hit /api?fields=mime' do
  visit '/api?fields=mime'
end

step 'it returns MIME as json' do
  expect(page.text).to eq({ mime: [] }.to_json)
end

step 'I hit /api?fields=ip,host, ua, port,lang , connection,encoding,mime,NOTEXIST' do
  visit '/api?fields=ip,host,ua,port,lang,connection,encoding,mime,NOTEXIST'
end

step 'it returns all fields as json' do
  expect(page.text).to eq({
                             ip: '127.0.0.1',
                             host: 'localhost',
                             ua: nil,
                             port: 80,
                             lang: [],
                             connection: nil,
                             encoding: [],
                             mime: []
                          }.to_json)
end
