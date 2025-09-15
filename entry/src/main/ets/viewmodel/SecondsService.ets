@ObservedV2
export class SecondsService {
  @Trace second: number = 0;
  static instance: SecondsService;

  static getInstance() {
    if (!SecondsService.instance) {
      SecondsService.instance = new SecondsService()
    }
    return SecondsService.instance
  }
}