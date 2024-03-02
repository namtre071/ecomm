class Category < ApplicationRecord
    # thêm thuộc tính  image vào category, sau đó vào category controller thêm :image vào def cuối để có thể add ảnh vào category
    has_one_attached :image do |attachable|
        attachable.variant :thumb, resize_to_limit: [50,50]
    end
end
