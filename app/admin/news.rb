ActiveAdmin.register News do
	controller do
        defaults :finder => :find_by_slug
        def permitted_params
			params.permit!
		end
    end
    
    index do
    	column :title
    	column :content
    	column :slug
    	column :created_at
    	actions
    end
    
    form :html => { :enctype => "multipart/form-data" } do |f|
	  f.inputs do
	  	f.input :title
	  	f.input :content, :as => :ckeditor
	  	f.input :slug
	    f.input :attachment, :multipart => true
	    f.input :description
	  end
	  
	  f.actions
	end
end
