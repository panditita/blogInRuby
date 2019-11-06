<%= form_with model: @article, local: true do |form| %>
    <% if @article.errors.any? %>
        <div id= "error_explanation">
            <h2>
                <%= pluraliza(@article.errors.count, "error") %>
            prohibited
                this article from being saved:
            </h2>
            <ul>
                <% @article.errors.full_messae.each do |msg| %>
                    <li> <%= msg %> </li>
                <% end %>
            </ul>
        </div>
    <% end %>
    <p>
        <%= form.label :title %> <br>
        <%= form.text_field :title %>
    </p>
    
    <p>
        <%= form.label :title %> <br>
        <%= form.text_field :title %>
    </p>

    <p>
        <%= form.submit %>
    </p>
<% end %>