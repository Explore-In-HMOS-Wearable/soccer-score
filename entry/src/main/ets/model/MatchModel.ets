interface MatchModel {
  matchStart(): void
}

@ObservedV2
export
class MatchScore implements MatchModel {
  homeLogo: Resource
  @Trace goalHome: number
  @Trace goalDep: number
  yellowCard: number
  startTime?: number
  depLogo: Resource

  constructor(homeLogo: Resource, goalHome: number, goalDep: number, yellowCard: number, depLogo: Resource) {
    this.homeLogo = homeLogo
    this.goalHome = goalHome
    this.goalDep = goalDep
    this.yellowCard = yellowCard
    this.depLogo = depLogo

  }

  matchStart(): void {
    this.startTime = Date.now()

  }
}

export const superLeagueMatches: MatchScore[] = [
  new MatchScore($r('app.media.Fenerbahce_Spor_Kulubu'), 6, 0, 3, $r('app.media.Galatasaray_Sports_Club_Logo')),
  new MatchScore($r('app.media.BesiktasJKLogo'), 0, 0, 1, $r('app.media.Istanbul_Basaksehir_FK_Logo')),
  new MatchScore($r('app.media.goztepesporkulubuizmirseeklogo'), 3, 2, 0, $r('app.media.Fenerbahce_Spor_Kulubu')),
  new MatchScore($r('app.media.Trabzonspor_logo'), 1, 1, 2, $r('app.media.Adana_Demirspor'))

]

// Premier League
export const premierLeagueMatches: MatchScore[] = [
  new MatchScore($r('app.media.Manchester_United_FC'), 2, 1, 2, $r('app.media.Chelsea_FC')),
  new MatchScore($r('app.media.Manchester_City_FC_badge'), 4, 0, 1, $r('app.media.Arsenal_FC')),
  new MatchScore($r('app.media.Liverpool_FC'), 1, 1, 0, $r('app.media.Tottenham_Hotspur')),
  new MatchScore($r('app.media.Newcastle_United_Logo'), 2, 3, 1, $r('app.media.Aston_Villa_logo'))
];

// La Liga
export const laLigaMatches: MatchScore[] = [
  new MatchScore($r('app.media.Real_Madrid_CF'), 3, 1, 0, $r('app.media.barcelona')),
  new MatchScore($r('app.media.Atletico_Madrid_logo'), 1, 1, 2, $r('app.media.Real_Betis')),
  new MatchScore($r('app.media.Real_Betis'), 2, 0, 1, $r('app.media.Real_Madrid_CF')),
  new MatchScore($r('app.media.barcelona'), 0, 2, 3, $r('app.media.Valenciacf'))
];

// Bundesliga
export const bundesligaMatches: MatchScore[] = [
  new MatchScore($r('app.media.bayern'), 5, 0, 1, $r('app.media.Borussia_Dortmund_logo')),
  new MatchScore($r('app.media.Logo_Eintracht_Frankfurt_1998'), 2, 2, 3, $r('app.media.Bayer_Leverkusen_Logo')),
  new MatchScore($r('app.media.Bayer_Leverkusen_Logo'), 1, 3, 0, $r('app.media.bayern')),
  new MatchScore($r('app.media.Logo_Eintracht_Frankfurt_1998'), 2, 1, 2, $r('app.media.Borussia_Dortmund_logo'))
];

// Serie A
export const serieAMatches: MatchScore[] = [
  new MatchScore($r('app.media.juventus'), 1, 0, 2, $r('app.media.Logo_of_AC_Milan')),
  new MatchScore($r('app.media.Logo_of_AC_Milan'), 2, 3, 1, $r('app.media.AS_Roma_Logo_2017')),
  new MatchScore($r('app.media.AS_Roma_Logo_2017'), 2, 2, 1, $r('app.media.FC_Internazionale_Milano_2021')),
  new MatchScore($r('app.media.juventus'), 0, 1, 3, $r('app.media.lazio'))
];

// Ligue 1
export const ligue1Matches: MatchScore[] = [
  new MatchScore($r('app.media.germain'), 4, 1, 0, $r('app.media.Olympique_Lyon')),
  new MatchScore($r('app.media.Olympique_Lyon'), 0, 2, 2, $r('app.media.AS_Monaco')),
  new MatchScore($r('app.media.germain'), 1, 1, 1, $r('app.media.Stade_Rennais_Football_Club')),
  new MatchScore($r('app.media.Stade_Rennais_Football_Club'), 3, 0, 2, $r('app.media.AS_Monaco'))
];

