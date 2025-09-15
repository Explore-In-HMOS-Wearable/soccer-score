export interface TopPlayerModel {
  playerName: string
  teamName: string
  teamLogo: Resource
  statCount: number
}
export const superLeagueTopScorers: TopPlayerModel[] = [
  { playerName: 'Jhon Duran', teamName: 'Fenerbahçe', teamLogo: $r('app.media.Fenerbahce_Spor_Kulubu'), statCount: 28 },
  { playerName: 'Mauro Icardi', teamName: 'Galatasaray', teamLogo: $r('app.media.Galatasaray_Sports_Club_Logo'), statCount: 24 },
  { playerName: 'Cenk Tosun', teamName: 'Beşiktaş', teamLogo: $r('app.media.BesiktasJKLogo'), statCount: 19 }
]

export const premierLeagueTopScorers: TopPlayerModel[] = [
  { playerName: 'Erling Haaland', teamName: 'Man City', teamLogo: $r('app.media.Manchester_City_FC_badge'), statCount: 36 },
  { playerName: 'Harry Kane', teamName: 'Tottenham', teamLogo: $r('app.media.Tottenham_Hotspur'), statCount: 30 },
  { playerName: 'Mohamed Salah', teamName: 'Liverpool', teamLogo: $r('app.media.Liverpool_FC'), statCount: 23 }
]

export const laLigaTopScorers: TopPlayerModel[] = [
  { playerName: 'Karim Benzema', teamName: 'Real Madrid', teamLogo: $r('app.media.Real_Madrid_CF'), statCount: 24 },
  { playerName: 'Robert Lewandowski', teamName: 'Barcelona', teamLogo: $r('app.media.barcelona'), statCount: 22 },
  { playerName: 'Antoine Griezmann', teamName: 'Atletico Madrid', teamLogo: $r('app.media.Atletico_Madrid_logo'), statCount: 17 }
]

export const bundesligaTopScorers: TopPlayerModel[] = [
  { playerName: 'Harry Kane', teamName: 'Bayern', teamLogo: $r('app.media.bayern'), statCount: 29 },
  { playerName: 'Victor Boniface', teamName: 'Leverkusen', teamLogo: $r('app.media.Bayer_Leverkusen_Logo'), statCount: 20 },
  { playerName: 'Niclas Füllkrug', teamName: 'Dortmund', teamLogo: $r('app.media.Borussia_Dortmund_logo'), statCount: 17 }
]

export const serieATopScorers: TopPlayerModel[] = [
  { playerName: 'Kylian Mbappe', teamName: 'Napoli', teamLogo: $r('app.media.AS_Monaco'), statCount: 25 },
  { playerName: 'Lautaro Martínez', teamName: 'Inter', teamLogo: $r('app.media.FC_Internazionale_Milano_2021'), statCount: 21 },
  { playerName: 'Tammy Abraham', teamName: 'Roma', teamLogo: $r('app.media.AS_Roma_Logo_2017'), statCount: 18 }
]

export const ligue1TopScorers: TopPlayerModel[] = [
  { playerName: 'Kylian Mbappe', teamName: 'PSG', teamLogo: $r('app.media.germain'), statCount: 28 },
  { playerName: 'Alexandre Lacazette', teamName: 'Lyon', teamLogo: $r('app.media.Olympique_Lyon'), statCount: 24 },
  { playerName: 'Ben Yedder', teamName: 'Monaco', teamLogo: $r('app.media.AS_Monaco'), statCount: 19 }
]
export const superLeagueTopAssists: TopPlayerModel[] = [
  { playerName: 'Kerem Aktürkoğlu', teamName: 'Galatasaray', teamLogo: $r('app.media.Galatasaray_Sports_Club_Logo'), statCount: 15 },
  { playerName: 'Ferdi Kadıoğlu', teamName: 'Fenerbahçe', teamLogo: $r('app.media.Fenerbahce_Spor_Kulubu'), statCount: 13 },
  { playerName: 'Gedson Fernandes', teamName: 'Beşiktaş', teamLogo: $r('app.media.BesiktasJKLogo'), statCount: 11 }
]

export const premierLeagueTopAssists: TopPlayerModel[] = [
  { playerName: 'Kevin De Bruyne', teamName: 'Man City', teamLogo: $r('app.media.Manchester_City_FC_badge'), statCount: 18 },
  { playerName: 'Bukayo Saka', teamName: 'Arsenal', teamLogo: $r('app.media.Arsenal_FC'), statCount: 14 },
  { playerName: 'Bruno Fernandes', teamName: 'Man Utd', teamLogo: $r('app.media.Manchester_United_FC'), statCount: 12 }
]

export const laLigaTopAssists: TopPlayerModel[] = [
  { playerName: 'Antoine Griezmann', teamName: 'Atletico Madrid', teamLogo: $r('app.media.Atletico_Madrid_logo'), statCount: 17 },
  { playerName: 'Vinicius Jr', teamName: 'Real Madrid', teamLogo: $r('app.media.Real_Madrid_CF'), statCount: 13 },
  { playerName: 'Pedri', teamName: 'Barcelona', teamLogo: $r('app.media.barcelona'), statCount: 11 }
]

export const bundesligaTopAssists: TopPlayerModel[] = [
  { playerName: 'Florian Wirtz', teamName: 'Leverkusen', teamLogo: $r('app.media.Bayer_Leverkusen_Logo'), statCount: 16 },
  { playerName: 'Jamal Musiala', teamName: 'Bayern', teamLogo: $r('app.media.bayern'), statCount: 14 },
  { playerName: 'Julian Brandt', teamName: 'Dortmund', teamLogo: $r('app.media.Borussia_Dortmund_logo'), statCount: 13 }
]

export const serieATopAssists: TopPlayerModel[] = [
  { playerName: 'Paulo Dybala', teamName: 'Roma', teamLogo: $r('app.media.AS_Roma_Logo_2017'), statCount: 15 },
  { playerName: 'Hakan Çalhanoğlu', teamName: 'Inter', teamLogo: $r('app.media.FC_Internazionale_Milano_2021'), statCount: 13 },
  { playerName: 'Luis Alberto', teamName: 'Lazio', teamLogo: $r('app.media.lazio'), statCount: 12 }
]

export const ligue1TopAssists: TopPlayerModel[] = [
  { playerName: 'Lionel Messi', teamName: 'PSG', teamLogo: $r('app.media.germain'), statCount: 16 },
  { playerName: 'Jonathan Clauss', teamName: 'Marseille', teamLogo: $r('app.media.Olympique_Lyon'), statCount: 14 },
  { playerName: 'Neymar Jr', teamName: 'PSG', teamLogo: $r('app.media.germain'), statCount: 12 }
]

