class Sample

    def search
      one = ARGV[0]

      open(one) do |f|
        while (str2 = f.gets)
          str = str2.chomp!
          twice = ARGV[1]
          three_act = /#{twice}/o

            puts str.grep(three_act) {|i| i.split(',').join(' ')}
            end
          end
      end
  end

  Sample.new.search
