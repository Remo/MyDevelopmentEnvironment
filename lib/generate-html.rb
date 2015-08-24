require "asciidoctor"

adoc = Asciidoctor.convert_file "../src/index.adoc", :to_file => false, :header_footer => true, :safe => Asciidoctor::SafeMode::UNSAFE, :attributes => {"numbered" => true}

Dir.mkdir("../html") unless Dir.exists?("../html")

f = File.open("../html/index.html", "wb")
f.write(adoc)
f.close 

# output = Asciidoctor.convert_file sample_input_path, :header_footer => true, :to_file => false
