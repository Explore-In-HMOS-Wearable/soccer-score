import {
  superLeagueTopScorers,
  premierLeagueTopScorers, laLigaTopScorers,
  bundesligaTopScorers,
  serieATopScorers,
  ligue1TopScorers,
  superLeagueTopAssists,
  laLigaTopAssists,
  serieATopAssists,
  premierLeagueTopAssists,
  bundesligaTopAssists,
  ligue1TopAssists,
} from '../model/PlayerModel'
import { LeagueService } from '../viewmodel/Singleton';
import { TopPlayerModel } from '../model/PlayerModel'

export function getTopScorersByLeagueName(): TopPlayerModel[] {
  const leagueName = LeagueService.getInstance().name

  switch (leagueName) {
    case 'Turkish Super League': return superLeagueTopScorers
    case 'Premier League': return premierLeagueTopScorers
    case 'La Liga': return laLigaTopScorers
    case 'Bundesliga': return bundesligaTopScorers
    case 'Serie A': return serieATopScorers
    case 'Ligue 1': return ligue1TopScorers
    default: return []
  }
}

export function getTopAssistsByLeague(): TopPlayerModel[] {
  switch (LeagueService.getInstance().name) {
    case 'Turkish Super League': return superLeagueTopAssists
    case 'Premier League': return premierLeagueTopAssists
    case 'La Liga': return laLigaTopAssists
    case 'Bundesliga': return bundesligaTopAssists
    case 'Serie A': return serieATopAssists
    case 'Ligue 1': return ligue1TopAssists
    default: return []
  }
}

