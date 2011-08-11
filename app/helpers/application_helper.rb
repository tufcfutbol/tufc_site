module ApplicationHelper

   def win_or_loss(game)
    if game.tufc_goals > game.against_goals
      return 'Win'
    elsif game.tufc_goals == game.against_goals
      return 'Tie'
    elsif game.tufc_goals < game.against_goals
     return 'Loss'
    end
  end

end

