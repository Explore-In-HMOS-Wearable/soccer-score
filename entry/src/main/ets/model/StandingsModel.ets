export class StandingsModel {
  logo: Resource
  teamName: string
  played: number
  win: number
  draw: number
  loss: number
  goalsFor: number
  goalsAgainst: number
  yellowCards: number
  points: number
  goalDiff: number

  constructor(
    teamName: string,
    logo: Resource,
    played: number,
    win: number,
    draw: number,
    loss: number,
    goalsFor: number,
    goalsAgainst: number,
    yellowCards: number,
    points: number
  ) {
    this.teamName = teamName
    this.logo = logo
    this.played = played
    this.win = win
    this.draw = draw
    this.loss = loss
    this.goalsFor = goalsFor
    this.goalsAgainst = goalsAgainst
    this.yellowCards = yellowCards
    this.points = points
    this.goalDiff = goalsFor - goalsAgainst
  }
}
export const superLeagueStandings: StandingsModel[] = [
  new StandingsModel('Fenerbahçe', $r('app.media.Fenerbahce_Spor_Kulubu'), 4, 4, 0, 0, 14, 2, 4, 12),
  new StandingsModel('Galatasaray', $r('app.media.Galatasaray_Sports_Club_Logo'), 4, 3, 1, 0, 10, 3, 2, 10),
  new StandingsModel('Trabzonspor', $r('app.media.Trabzonspor_logo'), 4, 2, 1, 1, 7, 5, 3, 7),
  new StandingsModel('Beşiktaş', $r('app.media.BesiktasJKLogo'), 4, 1, 2, 1, 5, 6, 4, 5),
  new StandingsModel('Başakşehir', $r('app.media.Istanbul_Basaksehir_FK_Logo'), 4, 1, 1, 2, 3, 5, 5, 4),
  new StandingsModel('Göztepe', $r('app.media.goztepesporkulubuizmirseeklogo'), 4, 1, 1, 2, 6, 9, 1, 4),
  new StandingsModel('Adana Demirspor', $r('app.media.Adana_Demirspor'), 4, 0, 0, 4, 2, 11, 6, 0)
];
export const premierLeagueStandings: StandingsModel[] = [
  new StandingsModel('Manchester City', $r('app.media.Manchester_City_FC_badge'), 4, 4, 0, 0, 12, 1, 2, 12),
  new StandingsModel('Liverpool', $r('app.media.Liverpool_FC'), 4, 3, 1, 0, 8, 2, 1, 10),
  new StandingsModel('Manchester United', $r('app.media.Manchester_United_FC'), 4, 2, 1, 1, 6, 4, 2, 7),
  new StandingsModel('Chelsea', $r('app.media.Chelsea_FC'), 4, 2, 1, 1, 5, 4, 2, 7),
  new StandingsModel('Tottenham', $r('app.media.Tottenham_Hotspur'), 4, 1, 2, 1, 4, 5, 3, 5),
  new StandingsModel('Newcastle', $r('app.media.Newcastle_United_Logo'), 4, 1, 1, 2, 5, 7, 2, 4),
  new StandingsModel('Aston Villa', $r('app.media.Aston_Villa_logo'), 4, 0, 0, 4, 2, 9, 4, 0)
];
export const laLigaStandings: StandingsModel[] = [
  new StandingsModel('Real Madrid', $r('app.media.Real_Madrid_CF'), 4, 3, 1, 0, 9, 3, 0, 10),
  new StandingsModel('Barcelona', $r('app.media.barcelona'), 4, 3, 0, 1, 7, 4, 1, 9),
  new StandingsModel('Atlético Madrid', $r('app.media.Atletico_Madrid_logo'), 4, 2, 1, 1, 5, 4, 2, 7),
  new StandingsModel('Real Betis', $r('app.media.Real_Betis'), 4, 1, 1, 2, 4, 6, 2, 4),
  new StandingsModel('Valencia', $r('app.media.Valenciacf'), 4, 1, 1, 2, 3, 6, 3, 4)
];
export const bundesligaStandings: StandingsModel[] = [
  new StandingsModel('Bayern Münih', $r('app.media.bayern'), 4, 3, 1, 0, 10, 2, 1, 10),
  new StandingsModel('Bayer Leverkusen', $r('app.media.Bayer_Leverkusen_Logo'), 4, 2, 1, 1, 7, 5, 1, 7),
  new StandingsModel('Borussia Dortmund', $r('app.media.Borussia_Dortmund_logo'), 4, 2, 1, 1, 6, 6, 2, 7),
  new StandingsModel('Eintracht Frankfurt', $r('app.media.Logo_Eintracht_Frankfurt_1998'), 4, 1, 1, 2, 5, 8, 3, 4)
];
export const serieAStandings: StandingsModel[] = [
  new StandingsModel('AC Milan', $r('app.media.Logo_of_AC_Milan'), 4, 3, 0, 1, 9, 5, 1, 9),
  new StandingsModel('Juventus', $r('app.media.juventus'), 4, 2, 1, 1, 4, 2, 3, 7),
  new StandingsModel('Roma', $r('app.media.AS_Roma_Logo_2017'), 4, 1, 2, 1, 6, 6, 2, 5),
  new StandingsModel('Inter', $r('app.media.FC_Internazionale_Milano_2021'), 4, 1, 1, 2, 5, 7, 2, 4),
  new StandingsModel('Lazio', $r('app.media.lazio'), 4, 0, 2, 2, 3, 7, 3, 2)
];
export const ligue1Standings: StandingsModel[] = [
  new StandingsModel('PSG', $r('app.media.germain'), 4, 3, 1, 0, 10, 3, 1, 10),
  new StandingsModel('Monaco', $r('app.media.AS_Monaco'), 4, 2, 1, 1, 6, 4, 2, 7),
  new StandingsModel('Stade Rennais', $r('app.media.Stade_Rennais_Football_Club'), 4, 1, 2, 1, 5, 6, 2, 5),
  new StandingsModel('Lyon', $r('app.media.Olympique_Lyon'), 4, 0, 2, 2, 2, 6, 4, 2)
];
