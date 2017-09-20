require_relative "./base"

module TaxCategory
  class Import < Base
    IMPORTED_LIST = %w[import]

    def percentage
      applicable? ? 0.05 : 0.0
    end

    def applicable?
      IMPORTED_LIST.each do |key|
        return true if product_name.include?(key)
      end
      false
    end
  end
end
