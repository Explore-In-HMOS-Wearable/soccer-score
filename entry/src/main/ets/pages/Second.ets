import { ArcList, ArcListItem, ComponentContent } from '@kit.ArkUI';
import { LeagueItem, leagueItems } from '../model/ListModel'
import { LeagueService } from '../viewmodel/Singleton';

@Builder
function header() {
    Text('Leagues')
      .fontSize(28)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#D6C2FF')
}

@Component
export struct Second {
  selectedLeague: string = ''
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))
  @Consume('pathStack') pathStack: NavPathStack;

  build() {
    NavDestination() {
      Flex() {
            ArcList({ header: this.header }) {
              ForEach(leagueItems, (itemData: LeagueItem) => {
                ArcListItem() {
                  Row({ space: 10 }) {
                    Image(itemData.image)
                      .fillColor('#D6C2FF')
                      .width(36)
                      .height(36)
                      .objectFit(ImageFit.Contain)
                      .margin({ right: 10 })

                    Text(itemData.title)
                      .fontSize(15)
                      .fontWeight(FontWeight.Medium)
                      .maxLines(2)
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
                    this.pathStack.pushPathByName('LeagueCategory', null)
                    LeagueService.getInstance().name = itemData.title

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
  }
}
