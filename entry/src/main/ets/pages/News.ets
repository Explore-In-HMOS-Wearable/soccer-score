import image from '@ohos.multimedia.image';

class MyDataSource implements IDataSource {
  private list: Resource[] = [];

  constructor(list: Resource[]) {
    this.list = list;
  }

  totalCount(): number {
    return this.list.length;
  }

  getData(index: number): Resource {
    return this.list[index];
  }

  registerDataChangeListener(listener: DataChangeListener): void {
  }

  unregisterDataChangeListener() {
  }
}

@Reusable
@Component
export struct ItemComponent {
  @Prop introduce: Resource;

  build() {
    Image(this.introduce)
  }
}

@Component
export struct News {
  private data: MyDataSource = new MyDataSource([]);
  swiperController : SwiperController = new  SwiperController ();
  cacheCount: number = 1;
  @Consume('pathStack') pathStack: NavPathStack;
  @Prop introduce: Resource;

  aboutToAppear(): void {
    let imageList: Resource[] = [
      $r('app.media.barcanews'),
      $r('app.media.citynews'),
      $r('app.media.imagefener')
    ];
    this.data = new MyDataSource(imageList);
  }

  build() {
    NavDestination() {
      Column({ space: 5 }) {
        Swiper() {
          LazyForEach(this.data, (item: Resource) => {
            ItemComponent({introduce:item})
              .width('90%')
              .height('90%')
              .border({ width: 2, color: '#2E1F3C' })
              .borderRadius('50%')
              .clip(true)
          },
            (item: string) => item)
        }
        .onAnimationStart((index: number, targetIndex: number) => {
          if (targetIndex !== index) {
            try {
              // Get the resourceManager
              const resourceMgr = this.getUIContext().getHostContext()?.resourceManager;
              // Get the ArrayBuffer of icon.png in the rawfile folder
              let str = 'item' + (targetIndex + this.cacheCount + 2) + '.jpg';
              resourceMgr?.getRawFileContent(str).then((value) => {
                // Create imageSource
                const imageSource = image.createImageSource(value.buffer);
                imageSource.createPixelMap().then((value) => {
                })
              })
            } catch (err) {
              console.error('error code');
            }
          }
        })
        .cachedCount(2)
        .index(0)
        .autoPlay(true)
        .interval(8000)
        .indicator(Indicator.digit()
          .top(200)
          .fontColor(Color.Gray)
          .selectedFontColor(Color.Gray)
          .digitFont({ size: 20, weight: FontWeight.Bold })
          .selectedDigitFont({ size: 20, weight: FontWeight.Normal }))
        .itemSpace(0)
        .displayArrow(true, false)

      }.width('100%').backgroundColor('#1B1325').height('100%')
    }
    .hideTitleBar(true)
    .hideToolBar(true)
    .hideBackButton(true)
  }
}