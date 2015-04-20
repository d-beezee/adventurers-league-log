class HomeController < ApplicationController
  def index
    if (current_user)
      redirect_to user_characters_path(current_user) and return
    else
      @show_jumbotron = true
    end
  end

  def stats
    @users_count       = User.count
    @characters_count  = Character.count
    @log_entries_count = LogEntry.count

    @factions_count    = Faction.all.map{ |faction| [faction.name, faction.characters.count] }

  end
end
