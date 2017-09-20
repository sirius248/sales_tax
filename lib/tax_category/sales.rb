require_relative "./base"

module TaxCategory
  class Sales < Base
    EXEMPT_LIST = %w[book chocolate pill]

    def percentage
      applicable? ? 0.1 : 0.0
    end

    def applicable?
      EXEMPT_LIST.each do |key|
        return false if product_name.include?(key)
      end
      true
    end
  end
end
