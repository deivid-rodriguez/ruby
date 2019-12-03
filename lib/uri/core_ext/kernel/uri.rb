# frozen_string_literal: true

module Kernel

  #
  # Returns +uri+ converted to an URI object.
  #
  def URI(uri)
    if uri.is_a?(URI::Generic)
      uri
    elsif uri = String.try_convert(uri)
      URI.parse(uri)
    else
      raise ArgumentError,
        "bad argument (expected URI object or URI string)"
    end
  end
  module_function :URI
end
