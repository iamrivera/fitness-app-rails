  Create Trainer or Athlete flow
  
    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :user_type)
    end

    def create_trainer_or_athlete
        if user_params[:user_type] == "Trainer"
            @trainer = Trainer.find_or_create_by(first_name: user_params[:first_name], last_name: user_params[:last_name], username: user_params[:username], email: user_params[:email])
            session[:id] = @trainer.id
            redirect_to trainer_path(@trainer)
        elsif user_params[:user_type] == "Athlete"
            @athlete = Athlete.find_or_create_by(first_name: user_params[:first_name], last_name: user_params[:last_name], username: user_params[:username], email: user_params[:email])
            redirect_to athlete_path(@athlete)
        else
            redirect_to :root, notice: "Please let us know if you are a trainer or an athlete."
        end
    end
end


<h1> Welcome to A1 Fitness  </h1>
<em><h4> Taking a prime stake in your fitness since 1831 </h3></em>

<%= form_for @user do |f| %> 
    <fieldset>
    <legend> Create Your Account </legend>
        <p>
        <%= f.label :first_name %> 
        <%= f.text_field :first_name %> 
        </p>

        <p>
        <%= f.label :last_name %> 
        <%= f.text_field :last_name %>
        </p>

        <p>
        <%= f.label :username %> 
        <%= f.text_field :username %>
        </p>

        <p>
        <%= f.label :email %>
        <%= f.text_field :email %> 
        </p>
    </fieldset>

    <fieldset>
    <legend> Account Type </legend>
        <%= f.select :user_type, ["","Trainer", "Athlete"] %> <em> Please select Trainer or Athlete. </em>
    </fieldset>

    <p>
    <%= f.submit "Signup"  %>
    </p>
    
    <% end %> 