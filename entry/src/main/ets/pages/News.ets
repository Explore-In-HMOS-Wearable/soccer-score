import { getTopScorersByLeagueName } from '../viewmodel/TopScorerViewmodel'
import { TopPlayerModel } from '../model/PlayerModel'
import { ArcList, ArcListItem, ComponentContent } from '@kit.ArkUI'



@Entry
@Component
export struct TopScorers {
  watchSize: string = '466px'


  build() {
    Column() {
      Text('HEYHEY')
      Image($r('app.media.Adana_Demirspor')).width('%100')
    }
  }
}
