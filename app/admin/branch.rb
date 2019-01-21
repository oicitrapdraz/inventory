ActiveAdmin.register Branch do
	menu label: 'Sucursal'

  permit_params Branch.attribute_names.map(&:to_sym)

	form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

	before_create do |branch|
		branch.company = current_admin_user
	end
end
