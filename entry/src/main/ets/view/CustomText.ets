import { router } from '@kit.ArkUI';

@Component
export struct CustomText {
  @Prop title: string;
  @Prop router:string;


  build() {

    Text(this.title)
      .fontSize(15)
      .fontWeight(FontWeight.Medium)
      .fontColor('#D6C2FF')
      .onClick(() => {
        router.pushUrl({ url: this.router })
      })

  }
}