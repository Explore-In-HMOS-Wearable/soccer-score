import {
  bundesligaStandings,
  laLigaStandings,
  ligue1Standings,
  premierLeagueStandings,
  serieAStandings,
  StandingsModel,
  superLeagueStandings
} from '../model/StandingsModel'
import { LeagueService } from '../viewmodel/Singleton';
import { ArcList, ArcListItem, ComponentContent } from '@kit.ArkUI';

export function getStandingsByLeagueName(): StandingsModel[] {
  let leagueName = LeagueService.getInstance().name

  switch (leagueName) {
    case leagueName = 'Turkish Super League':
      return superLeagueStandings
    case leagueName = 'Premier League':
      return premierLeagueStandings
    case leagueName = 'La Liga':
      return laLigaStandings
    case leagueName = 'Bundesliga':
      return bundesligaStandings
    case leagueName = 'Serie A':
      return serieAStandings
    case leagueName = 'Ligue 1':
      return ligue1Standings
    default:
      return []
  }
}

@Builder
function header() {
  Column() {
    Text('Standings')
      .fontSize(28)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#D6C2FF')
  }
}

@Entry
@Component
export struct Standings {
  standings: number[] = [1, 2, 3, 4, 5, 6, 7]
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))

  build() {
    Flex() {
      Row() {
        Column() {
          ArcList({ header: this.header }) {
            ForEach(getStandingsByLeagueName(), (team: StandingsModel, index: number) => {
              ArcListItem() {
                Row({ space: 10 }) {

                  Text(`${index + 1}.`)
                    .fontSize(12)
                    .fontColor('#FFD700')
                    .width(12)


                  Column({ space: 2 }) {
                    Text(team.teamName)
                      .fontSize(16)
                      .fontColor('#D6C2FF')
                      .fontWeight(FontWeight.Bold)

                    Text(`Pts: ${team.points} | W:${team.win} D:${team.draw} L:${team.loss}`)
                      .fontSize(12)
                      .fontColor('#D6C2FF')

                    Text(`GF:${team.goalsFor} GA:${team.goalsAgainst} AVG:${team.goalDiff}`)
                      .fontSize(12)
                      .fontColor('#D6C2FF')
                  }

                  Image(team.logo)
                    .width(36)
                    .height(36)
                    .objectFit(ImageFit.Contain)
                    .margin({ right: 8 })
                }
                .alignItems(VerticalAlign.Center)
                .backgroundColor('#2E1F3C')
                .borderRadius(30)
                .margin({
                  top: 6,
                  bottom: 6,
                  left: 12,
                  right: 12
                })
                .padding({
                  top: 10,
                  bottom: 10,
                  left: 16,
                  right: 16
                })
              }
            })
          }
        }
      }
    }
    .width(this.watchSize)
    .height(this.watchSize)
    .backgroundColor('#1B1325')
  }
}

