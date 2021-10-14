# frozen_string_literal: true

def export(names)
  File.open(
    './sorted-names-list.txt', \
    File::CREAT | File::TRUNC | File::WRONLY\
  ) do |f|
    names.each { |n| f.write("#{n.full_name}\n") }
  end
end
