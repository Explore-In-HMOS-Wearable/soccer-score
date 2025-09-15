interface MainList{
  title:string
  image:Resource
}

export
class MainMenuItem implements MainList {
  title: string;
  image: Resource;

  constructor(title: string, image: Resource) {
    this.title = title;
    this.image = image;
  }
}

export const mainMenuItems: MainMenuItem[] = [
  new MainMenuItem('Leagues', $r('app.media.footballstadium2svgrepocom')),
  new MainMenuItem('News', $r('app.media.news')),
];

export
class LeagueItem implements MainList {
  title: string;
  image: Resource;

  constructor(title: string, image: Resource) {
    this.title = title;
    this.image = image;
  }
}

export const leagueItems: LeagueItem[] = [
  new LeagueItem('Turkish Super League', $r('app.media.superlig')),
  new LeagueItem('Premier League', $r('app.media.premier')),
  new LeagueItem('La Liga', $r('app.media.laliga')),
  new LeagueItem('Bundesliga', $r('app.media.bundesliga')),
  new LeagueItem('Serie A', $r('app.media.seriea')),
  new LeagueItem('Ligue 1', $r('app.media.Ligue1')),
  new LeagueItem('Eredivisie', $r('app.media.eredivisie'))
];


