module WelcomeHelper
  def cell_width
      "17%"
  end
  
  def tool_bar
    html = ""
    html << "<table bgcolor=\"#{bg_for_highlights}\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"90%\">\n"
        html << "<tr>"
            html << "<td width = \"#{cell_width}\" align=\"center\">\n"
                html << "#{link_to "Overview", :controller => :welcome, :action => :about, :anchor => "home"}"
            html << "</td>"
            html << "<td width = \"#{cell_width}\" align=\"center\">\n"
                html << "#{link_to "Stories", :controller => :welcome, :action => :about, :anchor => "stories"}"
            html << "</td>"
            html << "<td width = \"#{cell_width}\" align=\"center\">\n"
                html << "#{link_to "Data Model", :controller => :welcome, :action => :about, :anchor => "data_model"}"
            html << "</td>"
            html << "<td width = \"#{cell_width}\" align=\"center\">\n"
                html << "#{link_to "Crows", :controller => :welcome, :action => :about, :anchor => "crows"}"
            html << "</td>"
            html << "<td width = \"#{cell_width}\" align=\"center\">\n"
                html << "#{link_to "Philosophy", :controller => :welcome, :action => :about, :anchor => "philosophy"}"
            html << "</td>"
            html << "<td width = \"#{cell_width}\" align=\"center\">\n"
                html << "#{link_to "Geek Notes", :controller => :welcome, :action => :about, :anchor => "technical_notes"}"
            html << "</td>"
        html << "</tr>"
    html << "</table>"
  end
end
