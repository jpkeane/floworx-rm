Rails.application.routes.draw do
  root to: 'front_pages#home'

  get 'dashboard', to: 'dashboard#index', as: :dashboard

  resources :clients
  resources :projects

  namespace :wrap do
    get 'charts/c3', to: 'charts#c3', as: :charts_c3
    get 'charts/chartist', to: 'charts#chartist', as: :charts_chartist
    get 'charts/chartjs', to: 'charts#chartjs', as: :charts_chartjs
    get 'charts/flot', to: 'charts#flot', as: :charts_flot
    get 'charts/gmaps', to: 'charts#gmaps', as: :charts_gmaps
    get 'charts/mapael', to: 'charts#mapael', as: :charts_mapael
    get 'charts/morrisjs', to: 'charts#morrisjs', as: :charts_morrisjs
    get 'charts/sparkline', to: 'charts#sparkline', as: :charts_sparkline
    get 'dashboards/dashboard-2', to: 'dashboards#dashboard_2', as: :dashboards_dashboard_2
    get 'dashboards/dashboard-3', to: 'dashboards#dashboard_3', as: :dashboards_dashboard_3
    get 'dashboards/dashboard-4', to: 'dashboards#dashboard_4', as: :dashboards_dashboard_4
    get 'dashboards/dashboard-5', to: 'dashboards#dashboard_5', as: :dashboards_dashboard_5
    get 'forms/controls', to: 'forms#controls', as: :forms_controls
    get 'forms/custom-controls', to: 'forms#custom_controls', as: :forms_custom_controls
    get 'forms/dual-listbox', to: 'forms#dual_listbox', as: :forms_dual_listbox
    get 'forms/editors', to: 'forms#editors', as: :forms_editors
    get 'forms/extras', to: 'forms#extras', as: :forms_extras
    get 'forms/file-upload', to: 'forms#file_upload', as: :forms_file_upload
    get 'forms/input-groups', to: 'forms#input_groups', as: :forms_input_groups
    get 'forms/layouts', to: 'forms#layouts', as: :forms_layouts
    get 'forms/pickers', to: 'forms#pickers', as: :forms_pickers
    get 'forms/selects', to: 'forms#selects', as: :forms_selects
    get 'forms/sliders', to: 'forms#sliders', as: :forms_sliders
    get 'forms/switchers', to: 'forms#switchers', as: :forms_switchers
    get 'forms/typeahead', to: 'forms#typeahead', as: :forms_typeahead
    get 'forms/validation', to: 'forms#validation', as: :forms_validation
    get 'forms/wizard', to: 'forms#wizard', as: :forms_wizard
    get 'icons/font-awesome', to: 'icons#font_awesome', as: :icons_font_awesome
    get 'icons/ionicons', to: 'icons#ionicons', as: :icons_ionicons
    get 'icons/linearicons', to: 'icons#linearicons', as: :icons_linearicons
    get 'icons/openiconic', to: 'icons#openiconic', as: :icons_openiconic
    get 'icons/stroke7', to: 'icons#stroke7', as: :icons_stroke7
    get 'dashboards/dashboard-1', to: 'dashboards#dashboard_1', as: :dashboards_dashboard_1
    get 'layout-examples/blank', to: 'layout_examples#blank', as: :layout_examples_blank
    get 'layout-examples/helpers', to: 'layout_examples#helpers', as: :layout_examples_helpers
    get 'layout-examples/horizontal-sidenav', to: 'layout_examples#horizontal_sidenav', as: :layout_examples_horizontal_sidenav
    get 'layout-examples/layout-1-flex', to: 'layout_examples#layout_1_flex', as: :layout_examples_layout_1_flex
    get 'layout-examples/layout-1', to: 'layout_examples#layout_1', as: :layout_examples_layout_1
    get 'layout-examples/layout-2-flex', to: 'layout_examples#layout_2_flex', as: :layout_examples_layout_2_flex
    get 'layout-examples/layout-2', to: 'layout_examples#layout_2', as: :layout_examples_layout_2
    get 'layout-examples/options', to: 'layout_examples#options', as: :layout_examples_options
    get 'layout-examples/without-navbar-flex', to: 'layout_examples#without_navbar_flex', as: :layout_examples_without_navbar_flex
    get 'layout-examples/without-navbar', to: 'layout_examples#without_navbar', as: :layout_examples_without_navbar
    get 'layout-examples/without-sidenav', to: 'layout_examples#without_sidenav', as: :layout_examples_without_sidenav
    get 'misc/blockui', to: 'misc#blockui', as: :misc_blockui
    get 'misc/clipboardjs', to: 'misc#clipboardjs', as: :misc_clipboardjs
    get 'misc/idle-timer', to: 'misc#idle_timer', as: :misc_idle_timer
    get 'misc/ladda', to: 'misc#ladda', as: :misc_ladda
    get 'misc/masonry', to: 'misc#masonry', as: :misc_masonry
    get 'misc/numeraljs', to: 'misc#numeraljs', as: :misc_numeraljs
    get 'misc/perfect-scrollbar', to: 'misc#perfect_scrollbar', as: :misc_perfect_scrollbar
    get 'misc/spinkit', to: 'misc#spinkit', as: :misc_spinkit
    get 'misc/vegasjs', to: 'misc#vegasjs', as: :misc_vegasjs
    get 'pages/account-settings', to: 'pages#account_settings', as: :pages_account_settings
    get 'pages/articles/edit', to: 'pages/articles#edit', as: :pages_articles_edit
    get 'pages/articles/list', to: 'pages/articles#list', as: :pages_articles_list
    get 'pages/authentication/email-confirm', to: 'pages/authentication#email_confirm', as: :pages_authentication_email_confirm
    get 'pages/authentication/lock-screen-v1', to: 'pages/authentication#lock_screen_v1', as: :pages_authentication_lock_screen_v1
    get 'pages/authentication/lock-screen-v2', to: 'pages/authentication#lock_screen_v2', as: :pages_authentication_lock_screen_v2
    get 'pages/authentication/login-and-register', to: 'pages/authentication#login_and_register', as: :pages_authentication_login_and_register
    get 'pages/authentication/login-v1', to: 'pages/authentication#login_v1', as: :pages_authentication_login_v1
    get 'pages/authentication/login-v2', to: 'pages/authentication#login_v2', as: :pages_authentication_login_v2
    get 'pages/authentication/login-v3', to: 'pages/authentication#login_v3', as: :pages_authentication_login_v3
    get 'pages/authentication/password-reset', to: 'pages/authentication#password_reset', as: :pages_authentication_password_reset
    get 'pages/authentication/register-v1', to: 'pages/authentication#register_v1', as: :pages_authentication_register_v1
    get 'pages/authentication/register-v2', to: 'pages/authentication#register_v2', as: :pages_authentication_register_v2
    get 'pages/authentication/register-v3', to: 'pages/authentication#register_v3', as: :pages_authentication_register_v3
    get 'pages/chat', to: 'pages#chat', as: :pages_chat
    get 'pages/clients', to: 'pages#clients', as: :pages_clients
    get 'pages/contacts', to: 'pages#contacts', as: :pages_contacts
    get 'pages/e-commerce/order-detail', to: 'pages/e_commerce#order_detail', as: :pages_e_commerce_order_detail
    get 'pages/e-commerce/order-list', to: 'pages/e_commerce#order_list', as: :pages_e_commerce_order_list
    get 'pages/e-commerce/product-edit', to: 'pages/e_commerce#product_edit', as: :pages_e_commerce_product_edit
    get 'pages/e-commerce/product-item', to: 'pages/e_commerce#product_item', as: :pages_e_commerce_product_item
    get 'pages/e-commerce/product-list', to: 'pages/e_commerce#product_list', as: :pages_e_commerce_product_list
    get 'pages/education/courses-v1', to: 'pages/education#courses_v1', as: :pages_education_courses_v1
    get 'pages/education/courses-v2', to: 'pages/education#courses_v2', as: :pages_education_courses_v2
    get 'pages/faq', to: 'pages#faq', as: :pages_faq
    get 'pages/file-manager', to: 'pages#file_manager', as: :pages_file_manager
    get 'pages/forums/discussion', to: 'pages/forums#discussion', as: :pages_forums_discussion
    get 'pages/forums/list', to: 'pages/forums#list', as: :pages_forums_list
    get 'pages/forums/threads', to: 'pages/forums#threads', as: :pages_forums_threads
    get 'pages/gallery', to: 'pages#gallery', as: :pages_gallery
    get 'pages/help-center', to: 'pages#help_center', as: :pages_help_center
    get 'pages/invoice-print', to: 'pages#invoice_print', as: :pages_invoice_print
    get 'pages/invoice', to: 'pages#invoice', as: :pages_invoice
    get 'pages/kanban-board', to: 'pages#kanban_board', as: :pages_kanban_board
    get 'pages/messages-v1/compose', to: 'pages/messages_v1#compose', as: :pages_messages_v1_compose
    get 'pages/messages-v1/item', to: 'pages/messages_v1#item', as: :pages_messages_v1_item
    get 'pages/messages-v1/list', to: 'pages/messages_v1#list', as: :pages_messages_v1_list
    get 'pages/messages-v2/compose', to: 'pages/messages_v2#compose', as: :pages_messages_v2_compose
    get 'pages/messages-v2/item', to: 'pages/messages_v2#item', as: :pages_messages_v2_item
    get 'pages/messages-v2/list', to: 'pages/messages_v2#list', as: :pages_messages_v2_list
    get 'pages/messages-v3/compose', to: 'pages/messages_v3#compose', as: :pages_messages_v3_compose
    get 'pages/messages-v3/item', to: 'pages/messages_v3#item', as: :pages_messages_v3_item
    get 'pages/messages-v3/list', to: 'pages/messages_v3#list', as: :pages_messages_v3_list
    get 'pages/pricing', to: 'pages#pricing', as: :pages_pricing
    get 'pages/profile-v1', to: 'pages#profile_v1', as: :pages_profile_v1
    get 'pages/profile-v2', to: 'pages#profile_v2', as: :pages_profile_v2
    get 'pages/projects/item', to: 'pages/projects#item', as: :pages_projects_item
    get 'pages/projects/list', to: 'pages/projects#list', as: :pages_projects_list
    get 'pages/search-results', to: 'pages#search_results', as: :pages_search_results
    get 'pages/task-list', to: 'pages#task_list', as: :pages_task_list
    get 'pages/teams', to: 'pages#teams', as: :pages_teams
    get 'pages/tickets/edit', to: 'pages/tickets#edit', as: :pages_tickets_edit
    get 'pages/tickets/list', to: 'pages/tickets#list', as: :pages_tickets_list
    get 'pages/users/edit', to: 'pages/users#edit', as: :pages_users_edit
    get 'pages/users/list', to: 'pages/users#list', as: :pages_users_list
    get 'pages/users/view', to: 'pages/users#view', as: :pages_users_view
    get 'pages/vacancies', to: 'pages#vacancies', as: :pages_vacancies
    get 'pages/voting', to: 'pages#voting', as: :pages_voting
    get 'tables/bootstrap-sortable', to: 'tables#bootstrap_sortable', as: :tables_bootstrap_sortable
    get 'tables/bootstrap-table', to: 'tables#bootstrap_table', as: :tables_bootstrap_table
    get 'tables/bootstrap', to: 'tables#bootstrap', as: :tables_bootstrap
    get 'tables/datatables', to: 'tables#datatables', as: :tables_datatables
    get 'typography/typography', to: 'typography#typography', as: :typography_typography
    get 'ui/accordion', to: 'ui#accordion', as: :ui_accordion
    get 'ui/app-brand', to: 'ui#app_brand', as: :ui_app_brand
    get 'ui/badges', to: 'ui#badges', as: :ui_badges
    get 'ui/button-groups', to: 'ui#button_groups', as: :ui_button_groups
    get 'ui/buttons', to: 'ui#buttons', as: :ui_buttons
    get 'ui/cards', to: 'ui#cards', as: :ui_cards
    get 'ui/carousel', to: 'ui#carousel', as: :ui_carousel
    get 'ui/cropper', to: 'ui#cropper', as: :ui_cropper
    get 'ui/drag-and-drop', to: 'ui#drag_and_drop', as: :ui_drag_and_drop
    get 'ui/dropdowns', to: 'ui#dropdowns', as: :ui_dropdowns
    get 'ui/footer', to: 'ui#footer', as: :ui_footer
    get 'ui/fullcalendar', to: 'ui#fullcalendar', as: :ui_fullcalendar
    get 'ui/lightbox', to: 'ui#lightbox', as: :ui_lightbox
    get 'ui/list-groups', to: 'ui#list_groups', as: :ui_list_groups
    get 'ui/media-player', to: 'ui#media_player', as: :ui_media_player
    get 'ui/modals', to: 'ui#modals', as: :ui_modals
    get 'ui/navbar', to: 'ui#navbar', as: :ui_navbar
    get 'ui/navs', to: 'ui#navs', as: :ui_navs
    get 'ui/notifications', to: 'ui#notifications', as: :ui_notifications
    get 'ui/pagination', to: 'ui#pagination', as: :ui_pagination
    get 'ui/progress', to: 'ui#progress', as: :ui_progress
    get 'ui/sidenav', to: 'ui#sidenav', as: :ui_sidenav
    get 'ui/thumbnails', to: 'ui#thumbnails', as: :ui_thumbnails
    get 'ui/tooltips', to: 'ui#tooltips', as: :ui_tooltips
    get 'ui/tour', to: 'ui#tour', as: :ui_tour
    get 'ui/treeview', to: 'ui#treeview', as: :ui_treeview
  end
end
