import { ArcList, ArcListItem, ComponentContent } from '@kit.ArkUI';
import { MainMenuItem, mainMenuItems } from '../model/ListModel'
import { sendNotification } from '../viewmodel/NotificationViewmodel';
import { News } from './News';
import { LeagueCategory } from './LeagueCategory';
import { Second } from './Second';
import { Matches } from './Matches';
import { TopScorers } from './Players';
import { Standings } from './Standings';

@Builder
function header() {
    Text('ExA Match')
      .fontSize(28)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#D6C2FF')
}

@Entry
@Component
export struct Index {
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))
  @Provide('pathStack') pathStack: NavPathStack = new NavPathStack()

  @Builder
  PageMap(name: string) {
    if (name === 'News') {
      News()
    } else if (name === 'LeagueCategory') {
      LeagueCategory()
    } else if (name === 'Second') {
      Second()
    } else if (name === 'Matches') {
      Matches()
    } else if (name === 'Players') {
      TopScorers()
    } else if (name === 'Standings') {
      Standings()
    }
  }

  build() {
    Navigation(this.pathStack) {
      Flex() {
            ArcList({ header: this.header }) {
              ForEach(mainMenuItems, (itemData: MainMenuItem) => {
                ArcListItem() {
                  Row({ space: 10 }) {
                    Image(itemData.image)
                      .fillColor('#D6C2FF')
                      .width(36)
                      .height(36)
                      .objectFit(ImageFit.Contain)
                      .margin({ right: 10 })

                    Text(itemData.title)
                      .fontSize(18)
                      .fontWeight(FontWeight.Medium)
                      .maxLines(1)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                      .fontColor('#D6C2FF')
                      .width('60%')
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
                  .onClick(() => {
                    if (itemData.title === 'Leagues') {
                      this.pathStack.pushPathByName('Second', null)
                    } else {
                      this.pathStack.pushPathByName('News', null)
                      sendNotification()
                    }
                  });
                }
              },(item: string, index: number) => item)
            }
      }
      .width(this.watchSize)
      .height(this.watchSize)
      .backgroundColor('#1B1325')
    }
    .hideTitleBar(true)
    .hideBackButton(true)
    .navDestination(this.PageMap)
    .mode(NavigationMode.Stack)
  }
}
