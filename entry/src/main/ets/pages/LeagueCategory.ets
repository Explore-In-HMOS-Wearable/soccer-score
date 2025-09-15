import { ArcList, ArcListItem, ComponentContent, router } from '@kit.ArkUI';
import { MatchScore, superLeagueMatches } from '../model/MatchModel'
import { RouteConstants } from '../commons/RouteConstants'
import { CustomText } from '../view/CustomText'


@Entry
@Component
export struct LeagueCategory {
  watchSize: string = '466px'
  leagueCategoryStr: string[] = ['Matches', 'Standings', 'Players']

  build() {
    Flex() {
      Row() {
        Column() {
          ArcList() {
            ArcListItem() {
              Column() {
                Row() {
                  CustomText({ title: 'Matches', router: 'pages/Matches' })
                }
                .alignItems(VerticalAlign.Center)
                .backgroundColor('#2E1F3C')
                .borderRadius(16)
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

                Row() {
                  CustomText({ title: 'Standings', router: 'pages/Standings' })
                }
                .alignItems(VerticalAlign.Center)
                .backgroundColor('#2E1F3C')
                .borderRadius(16)
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

                Row() {
                  CustomText({ title: 'Players', router: 'pages/Players' })
                }
                .alignItems(VerticalAlign.Center)
                .backgroundColor('#2E1F3C')
                .borderRadius(16)
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
            }
          }
        }
      }
    }
    .width(this.watchSize)
    .height(this.watchSize)
    .backgroundColor('#1B1325')
  }
}
