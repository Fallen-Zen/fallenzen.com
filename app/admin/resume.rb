ActiveAdmin.register Resume do
	controller do
        def permitted_params
			params.permit!
		end
    end
    
    form :html => { :enctype => "multipart/form-data" } do |f|
	    f.inputs "Resume" do
			f.input :name
			f.input :company
			f.input :from, :as => :datepicker
			f.input :to, :as => :datepicker
			f.input :description, :as => :ckeditor
		end
		f.actions
	end
    
	index do
    	column :name
    	column :company
    	column :from
    	column :to
    	column :description
    	column :created_at
    	actions
    end
end
