import { ArcList, ArcListItem, ComponentContent, router } from '@kit.ArkUI';
import { MainMenuItem, mainMenuItems } from '../model/ListModel'
import { RouteConstants } from '../commons/RouteConstants'
import { sendNotification } from '../viewmodel/NotificationViewmodel';

@Builder
function header() {
  Column() {
    Text('ExA Match')
      .fontSize(28)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#D6C2FF')
  }
}

@Entry
@Component
export struct Index {
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))

  build() {
    Flex() {
      Row() {
        Column() {
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
                  if (itemData.title==='Leagues') {
                    router.pushUrl({ url: 'pages/Second' })
                  }
                  else {
                    router.pushUrl({ url: 'pages/News' })
                    sendNotification()
                  }
                });
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
