module BillerHelper




#   def present_items(v)
#     html = ""
#     if v.respond_to? :each
#       html << "<div>"
#       v.each do |k,v|
#         html << " <div class='row'> #{k} #{v} </div>"
#       end
#       html << "</div>"
#     else
#       v
#     end
#   end

#   def present_lines(v)
#     html = ""
#     if v.respond_to? :each
#       html << "<div class='items'>"
#       v.each do |line|
#         html << "<span class='rows'> #{present_items(line)}</span>"
#       end
#       html << "</div>"
#     else
#       v
#     end
#   end




#   def present_sub_items_list(sub_list)
#     html = %(<table>)
#      sub_list.each do |k,v|
#         html << %(<h2> #{k.to_s} </h2>)
#         html << %(<tr>#{present_lines(v)}</tr>)
#       end
#     html << %(</table>)
#   end
# end



def table_lines(lines)
  table_lines = ""
  lines.each do |line|
    table_lines << %( <tr>
                                <td class="ident"></td>
                                <td>#{line["type"]}</td>
                                <td>#{line["name"]}</td>
                                <td class="text-right">#{line["cost"]}</td>
                                </tr>)
  end
  table_lines.html_safe
end



def table_lines_calls(lines)
  table_lines = ""
  lines.each do |line|
    table_lines << %( <tr>
                                <td class="ident"></td>
                                <td>#{line["called"]}</td>
                                <td>#{line["duration"]}</td>
                                <td class="text-right">#{line["cost"]}</td>
                                </tr>)
  end
  table_lines.html_safe
end


def table_lines_sky_store(lines)
  table_lines = ""
  lines.each do |line|
    table_lines << %( <tr>
                                <td class="ident"></td>
                                <td>#{line["title"]}</td>
                                <td class="text-right">#{line["cost"]}</td>
                                </tr>)
  end
  table_lines.html_safe
end

end
