ActiveAdmin::Dashboards.build do

  section 'Company', priority: 1 do
    company = Company.first

    div { company.name }
    div { company.street }
    div { company.zip + ' ' + company.city }
    br
    div { company.phone }
    div { company.email }
    div { company.web }
    br
    strong { link_to 'Edit your company', admin_company_path(company) }
  end

  section 'People', priority: 2 do
    table_for Person.order('lastname desc') do
      column :firstname
      column :lastname
      column :email
      column :mobile
    end
  end

  section 'Recent Maneuvers' do
    ul do
      Maneuver.recent(5).collect do |maneuver|
        li link_to(maneuver.name, admin_maneuver_path(maneuver))
      end
    end
    strong { link_to 'View all maneuvers', admin_maneuvers_path }
  end

  section 'Recent customers' do
    ul do
      Customer.recent(5).collect do |customer|
        li link_to(customer.name, admin_customer_path(customer))
      end
    end
    strong { link_to 'View all customers', admin_customers_path }
  end

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.

  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end

  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end

  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

  # == Conditionally Display
  # Provide a method name or Proc object to conditionally render a section at run time.
  #
  # section "Membership Summary", :if => :memberships_enabled?
  # section "Membership Summary", :if => Proc.new { current_admin_user.account.memberships.any? }

end
