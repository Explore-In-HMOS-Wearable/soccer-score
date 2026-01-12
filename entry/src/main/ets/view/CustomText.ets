@Component
export struct CustomText {
  @Prop title: string;

  build() {

    Text(this.title)
      .fontSize(15)
      .fontWeight(FontWeight.Medium)
      .fontColor('#D6C2FF')


  }
}