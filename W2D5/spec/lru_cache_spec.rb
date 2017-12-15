require "lru_cache"
require "rspec"

describe "lru_cache" do
  subject(:cache) {LRUCache.new(4)}
  describe "initialize" do
    it "should create a new lru_cache object with size 4 memory" do
      expect(cache.size).to eq(4)
    end
    it "should start with an empty cache" do
      expect(cache.cache).to eq([])
    end
  end

  describe "count" do
    it "should return a length of how many objects are currently in cache" do
      expect(cache.count).to eq(0)
    end
  end

  describe "show" do
    it "should return nil" do
      expect(cache.show).to eq(nil)
    end
  end

  describe "add" do
    before(:each) do
      cache.add(1)
      cache.add(2)
      cache.add(3)
      cache.add(4)
      cache.add(5)
      cache.add(2)
    end
    it "should add an item if cache is empty" do
      expect(cache.cache.empty?).to be_falsey
    end
    it "should not have 1" do
      expect(cache.cache).not_to include(1)
    end
    it "should have 2 at the end" do
      expect(cache.cache.last).to eq(2)
    end
  end
end
