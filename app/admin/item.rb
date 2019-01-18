ActiveAdmin.register Item do
	menu label: 'Producto'

  permit_params Item.attribute_names.map(&:to_sym)

  form do |f|
    f.inputs do
      f.input :branch
      f.input :name
      f.input :stock
      f.input :price
      f.input :discount_price
    end
    f.actions
  end
end
