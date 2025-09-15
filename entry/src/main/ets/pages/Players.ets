import { getTopScorersByLeagueName } from '../viewmodel/TopScorerViewmodel'
import { TopPlayerModel } from '../model/PlayerModel'
import { ArcList, ArcListItem, ComponentContent } from '@kit.ArkUI'

@Builder
function header() {
  Column() {
    Text('Top Scorers')
      .fontSize(28)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#D6C2FF')
  }
}

@Entry
@Component
export struct TopScorers {
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))

  build() {
    Flex() {
      Row() {
        Column() {
          ArcList({ header: this.header }) {
            ForEach(getTopScorersByLeagueName(), (player: TopPlayerModel, index: number) => {
              ArcListItem() {
                Row({ space: 10 }) {
                  Text(`${index + 1}.`)
                    .fontSize(14)
                    .fontColor('#FFD700')
                    .width(14)

                  Column() {
                    Text(player.playerName)
                      .fontSize(16)
                      .fontColor('#D6C2FF')
                      .fontWeight(FontWeight.Bold)

                    Text(`${player.teamName} - ${player.statCount} Goals`)
                      .fontSize(12)
                      .fontColor('#D6C2FF')
                  }

                  Image(player.teamLogo)
                    .width(24)
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
