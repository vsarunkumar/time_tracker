RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to main_app.root_path unless warden.user.admin == true
  end

  config.model 'User' do
    list do
      field :name
      field :username
      field :email
      field :admin
      field :sign_in_count
      field :created_at
    end

    edit do
      exclude_fields :updated_at, :created_at, :last_sign_in_ip, :current_sign_in_ip,
                     :last_sign_in_at, :current_sign_in_at, :remember_created_at,
                     :reset_password_sent_at, :sign_in_count
    end
  end

  config.model 'Project' do
    list do
      field :name
      field :details
      field :created_at
    end

    edit do
      exclude_fields :updated_at, :created_at
    end
  end

  config.model 'Task' do
    list do
      field :name
      field :hour
      field :project_id
      field :created_at
    end

    edit do
      exclude_fields :updated_at, :created_at
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
