import { ArcList, ArcListItem, ComponentContent, PromptAction, router } from '@kit.ArkUI';
import {
  bundesligaMatches,
  laLigaMatches,
  ligue1Matches,
  MatchScore,
  premierLeagueMatches,
  serieAMatches,
  superLeagueMatches
} from '../model/MatchModel'
import { CustomText } from '../view/CustomText'
import { LeagueService } from '../viewmodel/Singleton';
import { sendNotification } from '../viewmodel/NotificationViewmodel';
import { SecondsService } from '../viewmodel/SecondsService';

export function getMatchesByLeagueName(): MatchScore[] {
  let leagueName = LeagueService.getInstance().name

  switch (leagueName) {
    case leagueName = 'Turkish Super League':
      return superLeagueMatches
    case leagueName = 'Premier League':
      return premierLeagueMatches
    case leagueName = 'La Liga':
      return laLigaMatches
    case leagueName = 'Bundesliga':
      return bundesligaMatches
    case leagueName = 'Serie A':
      return serieAMatches
    case leagueName = 'Ligue 1':
      return ligue1Matches
    default:
      return []
  }
}

@Builder
function header() {
  Column() {
    Text('Matches')
      .fontSize(28)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#D6C2FF')
  }
}


@Entry
@Component
export struct Matches {
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))
  @State matchList: MatchScore[] = getMatchesByLeagueName();
  private uiContext: UIContext = this.getUIContext()
  private promptAction: PromptAction = this.uiContext.getPromptAction()

  @Builder
  descriptionBuilderImage() {
    Image($r('sys.media.ohos_ic_public_clock')).width(10).height(10).fillColor('#FFD700')
  }

  aboutToAppear() {
   this.intervalSet()
  }

  build() {
    Flex() {
      Row() {
        Column() {
          ArcList({ header: this.header }) {
            ForEach(getMatchesByLeagueName(), (itemData: MatchScore) => {
              ArcListItem() {
                Row({ space: 10 }) {
                  Image(itemData.homeLogo)
                    .width(32)
                    .height(32)
                    .objectFit(ImageFit.Contain)
                    .margin({ right: 10 })
                  CustomText({ title: itemData.goalHome.toString() })
                  CustomText({ title: '-' })
                  CustomText({ title: itemData.goalDep.toString() })
                  Image(itemData.depLogo)
                    .width(32)
                    .height(32)
                    .objectFit(ImageFit.Contain)
                  Gauge({ value: SecondsService.getInstance().second, min: 0, max: 30 })
                    .description(this.descriptionBuilderImage)
                    .startAngle(235)
                    .endAngle(125)
                    .colors('#FFD700')
                    .width('20%')
                    .height('20%')
                    .strokeWidth(4)
                    .trackShadow({ radius: 10, offsetX: 7, offsetY: 7 })

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
                .onClick(() => {
                  router.pushUrl({ url: 'pages/Second' })
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
  showToast(){
    try {
      this.promptAction.showToast({
        message: 'GOOOOAAAALLL!!!',
        duration: 500
      });
    } catch (error) {
      console.error(`showToast args error code is =, message is`);
    };
  }

  intervalSet(){
    setInterval(() => {
      this.matchList[0].goalHome++;
      this.matchList[1].goalDep++;
      this.matchList[2].goalHome++;
      this.matchList[3].goalDep++;
      this.showToast();
    }, 10000);
  }
}


