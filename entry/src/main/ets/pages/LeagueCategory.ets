import { ArcList, ArcListItem } from '@kit.ArkUI';
import { CustomText } from '../view/CustomText'


@Component
export struct LeagueCategory {
  watchSize: string = '466px'
  leagueCategoryStr: string[] = ['Matches', 'Standings', 'Players']
  @Consume('pathStack') pathStack: NavPathStack;

  build() {
    NavDestination() {
      Flex() {
            ArcList() {
              ArcListItem() {
                Column() {
                  Row() {
                    CustomText({ title: 'Matches' })
                      .onClick(() => {
                        this.pathStack.pushPathByName('Matches', null)
                      })
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
                    CustomText({ title: 'Standings' })
                      .onClick(() => {
                        this.pathStack.pushPathByName('Standings', null)
                      })
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
                    CustomText({ title: 'Players' })
                      .onClick(() => {
                        this.pathStack.pushPathByName('Players', null)
                      })
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
      .width(this.watchSize)
      .height(this.watchSize)
      .backgroundColor('#1B1325')
    }
    .hideTitleBar(true)
    .hideBackButton(true)
  }
}
