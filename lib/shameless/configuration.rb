module Shameless
  class Configuration
    attr_accessor :partition_urls, :shards_count

    def shards_per_partition_count
      shards_count / partitions_count
    end

    def partitions_count
      partition_urls.count
    end
  end
end
