module DirectorHelper
  def side_menu(active)
    menu_items = [
        {
            text: 'dashboard',
            url: director_dashboard_path,
            icon: 'tachometer'
        },
        {
            text: 'projects',
            url: director_projects_path,
            icon: 'building'
        },
        {
            text: '____',
            url: ''
        },
        {
            text: 'settings',
            url: "#",
            icon: 'picture-o'
        },
        {
            text: 'sign out',
            url: "#",
            icon: 'dollar'
        },
        {
            text: 'bugs',
            url: "#",
            icon: 'bug'
        }

    ]
    menu = menu_items.inject('') do |acc, item|
      if item[:text].eql? '____'
        acc + '<div class="separator"></div>'
      else
        acc + "<a href='#{item[:url]}'><div class='menu-item #{active == item[:text] ? 'menu-active' : ''}'><li><div class='icon'>#{icon(item[:icon])}</div><div class='hidden-xs menu-text'>#{sanitize item[:text]}</div></li></div></a>"
      end
    end
    "<ul>#{menu}</ul>".html_safe
  end

  def side_bar(active)
    "<div class='side-bar'><div class='logo'><div class='hidden-sm'>FENNEC</div><div class='visible-sm'>F</div></div>#{side_menu(active)}</div>".html_safe
  end

  def title(text)
    "<div class='page-title'><h1>#{sanitize text}</h1></div>".html_safe
  end

  def section_menu(menu)
    menu = [] unless menu

    html_str = menu.inject('<ul class="section-menu">') do |result, item|
      a_class = 'button-gray'
      a_class = 'button-red' if item[:color].eql? 'danger'
      result + "<li><a class='button #{a_class}' href='#{item[:url]}'>#{icon(item[:icon])} #{sanitize item[:text]}</a></li>"
    end
    html_str += '</ul>'
    html_str.html_safe
  end

  def show_errors(object)
    html_str = ''
    if object.errors.any?
      messages = object.errors.full_messages.inject('') { |res, item |  res + "<li>#{item}</li>"}
      html_str = "<div class='system-message system-error'>
                      <div class='row'>
                        <div class='col-sm-1 error-icon'>#{icon 'exclamation-circle', class: 'fa-2x'}</div>
                        <div class='col-sm-6'>
                          <h4>#{pluralize(object.errors.count, 'Error')}</h4>
                          <p><ul>
                            #{messages}
                          </ul></p>
                        </div>
                      </div>
                    </div>"
    end
    html_str.html_safe
  end

  def show_notice(text)
    html_str = ''
    if text
      html_str = "<div class='system-message system-info'>
                      <div class='row'>
                        <div class='col-sm-1 info-icon'>#{icon 'info-circle', class: 'fa-2x'}</div>
                        <div class='col-sm-6'>
                          <h4>Information</h4>
                          <p>
                            #{sanitize text}
                          </p>
                        </div>
                      </div>
                    </div>"
    end
    html_str.html_safe
  end
end
