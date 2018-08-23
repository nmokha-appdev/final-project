class VotesController < ApplicationController
  def index
    @votes = Vote.all

    render("vote_templates/index.html.erb")
  end

  def show
    @vote = Vote.find(params.fetch("id_to_display"))

    render("vote_templates/show.html.erb")
  end

  def new_form
    render("vote_templates/new_form.html.erb")
  end

  def create_row
    @vote = Vote.new

    @vote.user_id = params.fetch("user_id")
    @vote.option_id = params.fetch("option_id")

    if @vote.valid?
      @vote.save

      redirect_to("/votes", :notice => "Vote created successfully.")
    else
      render("vote_templates/new_form.html.erb")
    end
  end

  def edit_form
    @vote = Vote.find(params.fetch("prefill_with_id"))

    render("vote_templates/edit_form.html.erb")
  end

  def update_row
    @vote = Vote.find(params.fetch("id_to_modify"))

    @vote.user_id = params.fetch("user_id")
    @vote.option_id = params.fetch("option_id")

    if @vote.valid?
      @vote.save

      redirect_to("/votes/#{@vote.id}", :notice => "Vote updated successfully.")
    else
      render("vote_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @vote = Vote.find(params.fetch("id_to_remove"))

    @vote.destroy

    redirect_to("/votes", :notice => "Vote deleted successfully.")
  end
end
