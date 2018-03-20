module Sm
  class Error < RestClient::Exception
    def initialize(e = nil)
      super e
      set_backtrace e.backtrace if e
    end
  end
end
