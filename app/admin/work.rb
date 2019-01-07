ActiveAdmin.register Work do
	controller do
        def permitted_params
			params.permit!
		end
    end
    
	index do
    	column :name
    	column :description
    	column :created_at
    	actions
    end
    
	form :html => { :enctype => "multipart/form-data" } do |f|
	  f.inputs do
	  	f.input :name
	  	f.input :description, :as => :ckeditor
	  	f.input :attachment, :multipart => true
	  end
	  
	  f.actions
	end
end
