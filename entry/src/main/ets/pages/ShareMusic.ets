
@CustomDialog
@Entry
export struct ShareMusicDialog{
  private controller:CustomDialogController;
   private name:string[]=["无声","时钟滴答-Free","雨声-普通版-Free","雨声-无损-Free","静心沉思-高清","笔触书香-无损"];
  private color:string []=["#c4c6f0","#FFB6DDE6","#FF81B4D0","#FF5DB5E5","#FFEDE7B7","#FFB9A67F"]
 build(){
     Column(){
        Row(){
          Text("默认背景音乐|白噪音")
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
        }.width("100%")
        .height("16%")
        .justifyContent(FlexAlign.Center)
        ForEach(this.name,(value:string,index:number)=>{
          Row(){
            Text(value)
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor("#fff")

          }.width("100%")
          .height("14%")
         .justifyContent(FlexAlign.Center)
          .backgroundColor(this.color[index])
          .onClick(()=>{

          })
        })

      }.width("55%")
      .height("50%")
      .backgroundColor("#e6e6e6")
     .borderRadius(25)
   }
 }
