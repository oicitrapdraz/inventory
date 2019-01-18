ActiveAdmin.register Branch do
	menu label: 'Sucursal'

  permit_params Branch.attribute_names.map(&:to_sym)
end
