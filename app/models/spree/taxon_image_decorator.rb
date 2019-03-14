module YourApplication
    module Spree
      module TaxonImageDecorator
        module ClassMethods
          def styles
            {
              mini:    '32x32>',
              normal:   '128x128>',
              product: '240x240>',
              large:   '600x600>',
            }
          end
        end
  
        def self.prepended(base)
          base.inheritance_column = nil
          base.singleton_class.prepend ClassMethods
        end
      end
    end
  end
  
  Spree::TaxonImage.prepend ::YourApplication::Spree::TaxonImageDecorator