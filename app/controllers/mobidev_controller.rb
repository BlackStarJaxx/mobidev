class MobidevController < ApplicationController

  def index
  end

  def api
    client = Octokit::Client.new(:access_token => 'admin script token')
    # github = Github.new basic_auth: 'login:password'
    # github.auth.create scopes: ['repo'], note: 'admin script'
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
