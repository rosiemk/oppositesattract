def add_to_json(name, email, q1)
  stuff_in_json_file = File.read('opposites.json')
  daters_list = JSON.load(stuff_in_json_file)
  daters_list << {name: name, email: email, q1: q1}
  File.write('opposites.json', daters_list.to_json)
end