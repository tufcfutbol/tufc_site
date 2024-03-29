module PlayersHelper

  def hometown(player)
    if player.hometown.blank?
      return 'Unknown'
    else
      return player.hometown
    end
  end

  def header_name(player)
    return player.first_name + ' ' + player.last_name + '(' + player.year.to_s + ')'
  end

  def preffered_position(player)
    if player.preffered_position.blank?
      return 'No preffered position'
    end
    return 'Position(s): '+player.preffered_position
  end

  def rating(player)
    if player.rating.blank?
      return 'Player not rated'
    end
    return 'Player Rating(1 to 10): '+player.rating.to_s
  end

  def first_team(player)
    if player.first_team
      return 'This player is currently on the A team!'
    else
      return 'This player is currently on the B team!'
    end
  end

  def individual_preffered_position(player)
    if player.preffered_position.blank?
      return 'None'
    else
      return player.preffered_position
    end
  end

  def team(player)
    if player.first_team
      return 'A'
    else
      return 'B'
    end
  end

end

