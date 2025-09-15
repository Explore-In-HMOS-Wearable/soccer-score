

export class LeagueService {
  name: string = '';
  static instance: LeagueService;

  static getInstance() {
    if (!LeagueService.instance) {
      LeagueService.instance = new LeagueService()
    }
    return LeagueService.instance
  }
}