@Entry
@CustomDialog
export default struct FocusDataDialog {
  private controller:CustomDialogController
  @State private time :Date=new Date();
  @State private year:number=this.time.getFullYear() ;
  @State private month:string=this.time.getMonth()<10?"0"+this.time.getMonth():""+this.time.getMonth();
  @State private day:string=this.time.getDay()<10?"0"+this.time.getDay():""+this.time.getDay();
  @State private timeText:string=this.year+"年"+this.month+"月"+this.day+"日";
  @State private allTime:number=0;
  @State private count:number=0;
  private getTime(){
   this. year=this.time.getFullYear() ;
    this. month=this.time.getMonth()<10?"0"+this.time.getMonth():""+this.time.getMonth();
  this. day=this.time.getDay()<10?"0"+this.time.getDay():""+this.time.getDay();
  this.timeText=this.year+"年"+this.month+"月"+this.day+"日";
  }

  build() {
    Row(){
      Column() {
        Row(){
          Text("打卡 保存")
            .fontColor("#fff")
            .fontWeight(FontWeight.Bold)
            .margin({left:15,top:20})
            .fontSize(20)
          Image($r("app.media.load"))
            .width(25)
            .margin({left:110,top:20})
          Image($r("app.media.share"))
            .width(25)
            .margin({left:15,top:20})
          Image($r("app.media.guanbi"))
            .width(25)
            .margin({left:15,top:20})
        }.width("100%")
        .justifyContent(FlexAlign.Start)
        Row(){
          Text(this.timeText)
            .fontColor("#fff")
            .margin({left:15,top:20})
            .fontSize(28)
            .fontWeight(FontWeight.Bold)
        }.width("100%")
        .justifyContent(FlexAlign.Start)
       Row(){
         Column(){
            Row(){
              Text("累计专注")
                .fontColor($r("app.color.sharefont"))
                .margin({left:15,top:10})
                .fontSize(15)
              Text(this.timeText)
                .fontSize(10)
                .fontColor($r("app.color.sharefont"))
                .fontWeight(FontWeight.Bold)
                .margin({left:10,top:10})
              Image($r("app.media.left"))
                .width(20)
                .margin({left:70,top:10})
                .onClick(()=>{
                  this.time.setDate(this.time.getDate()-1)
                  this.getTime();
                  console.log(this.time+"")
                })
              Image($r("app.media.left"))
                .width(20)
                .rotate({angle:180})
                .margin({left:5,top:10})
                .onClick(()=>{
                  this.time.setDate(this.time.getDate()+1)
                  this.getTime();
                  console.log(this.time+"")
                })

            }.width("100%")
           Row(){
             Column({space:5}){
               Text("次数")
                 .fontSize(10)
                 .fontColor($r("app.color.sharefont"))
               Text(this.count+"")
                 .fontColor($r("app.color.sharefont"))
             }
             Column({space:5}){
               Text("时长")
                 .fontSize(10)
                 .fontColor($r("app.color.sharefont"))
               Text(this.allTime+"")
                 .fontColor($r("app.color.sharefont"))
             }
           }.width("100%")
           .justifyContent(FlexAlign.SpaceAround)
           .margin({top:20})
         }.backgroundColor("#fff")
         .width("90%")
         .height("100%")
         .borderRadius(20)

       }.width("100%")
        .height("20%")
        .justifyContent(FlexAlign.Center)
        .margin({top:15})
        Row(){
          Column(){
            Row(){
              Text("专注时长分布")
                .fontColor($r("app.color.sharefont"))
                .margin({left:15,top:10})
                .fontSize(15)
              Text(this.timeText)
                .fontSize(10)
                .fontColor($r("app.color.sharefont"))
                .fontWeight(FontWeight.Bold)
                .margin({left:10,top:10})
              Image($r("app.media.left"))
                .width(20)
                .margin({left:45,top:10})
              Image($r("app.media.left"))
                .width(20)
                .rotate({angle:180})
                .margin({left:5,top:10})

            }.width("100%")
            Row(){
             Text("   日   |   周   |   年   |  自定义")
               .fontColor($r("app.color.sharefont"))
               .width("70%")
               .borderWidth(1)
               .borderColor($r("app.color.sharefont"))
               .borderRadius(10)
            }.width("100%")
            .justifyContent(FlexAlign.SpaceAround)
            .margin({top:20})
            Row(){
              Text("暂无专注数据，点击代办上的开始按钮来专注计时吧")
                .fontSize(10)
            }.width("100%")
            .height("60%")
            .justifyContent(FlexAlign.Center)
          }.backgroundColor("#fff")
          .width("90%")
          .height("100%")
          .borderRadius(20)

        }.width("100%")
        .height("45%")
        .justifyContent(FlexAlign.Center)
        .margin({top:15})
      }.width("90%")
      .height("70%")
      .backgroundColor("#90e6e6e6")
      .borderRadius(20)
    }.width("100%")
    .height("100%")
    .backgroundColor("#ffb6ad3d")
  }
}