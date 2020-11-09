class MobidevController < ApplicationController

  def index
  end

  def api
    client = Octokit::Client.new(:access_token => 'a5a1fac89ff2c5d97a3fc98ab3e1f75962406df9')
    result = []

    if params[:search]
      result = client.search_repositories(params[:search])
    end

    if params[:repo]
      id = params[:repo]
      repo = client.repository(id.to_i)
      contribs = client.contributors(id.to_i)
      result = [repo, contribs]
    end

    if params[:user]
      result = client.user(params[:user].to_i)
    end

    render json: result
  end

end
