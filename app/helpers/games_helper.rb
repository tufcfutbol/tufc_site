module GamesHelper

  def normalize(bool)
    if bool
      return 'Yes'
    else
      return 'No'
    end
  end

  def win_or_loss(game)
    if game.tufc_goals > game.against_goals
      return 'Win'
    else
      return 'Loss'
    end
  end
end

