module VoteOnIssues
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_show_details_bottom,
              :partial => 'view_issues/show_details_bottom'
    render_on :view_layouts_base_html_head, :inline => <<-END
      <%= stylesheet_link_tag 'view_issues_vote', :plugin => 'vote_on_issues' %>
      <%= javascript_include_tag 'view_issues_vote', :plugin => 'vote_on_issues' %>
    END
  end
end
