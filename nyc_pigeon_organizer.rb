def nyc_pigeon_organizer(data)
  # write your code here!
  
  list_of_names = []
  data.each do |(key, key2_value)|
    key2_value.each do |(key2, names)|
      names.each do |ind_name|
        if !list_of_names.any? {|i| i == ind_name}
        list_of_names << ind_name
        end
      end
    end
  end
  pigeon_list = {}
  list_of_names.each do |name|
    keyvalues_for_name = []
    pigeon_list[name] = {}
    data.each do |(key1, key2_n_values)|
      key2_to_values = []
      key2_n_values.each do |(key2, values)|
        if values.any? {|i| i == name}
          key2_to_values << key2.to_s
        end
      end
      keyvalues_for_name << {key1 => key2_to_values} 
    end
    keyvalues_for_name.length.times do |i|
      pigeon_list[name][keyvalues_for_name[i].keys[0]] = keyvalues_for_name[i].values[0]
    end
  end
  return pigeon_list
end
