import { router } from '@kit.ArkUI'

@Entry
@Component

struct MainPage{
  build() {

  //根
    Column(){

      //login
      Column({space:7}){
        Row() {
          Image($r('app.media.login'))
            .width(60)
            .height(60)
            .margin({ top: 20 })
        }
        Row(){
          Text('登录界面')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
            .margin({top:16})
        }
        Row(){
          Text('登录以获取更多服务哟')
            .fontSize(16)
            .fontWeight(400)
            .margin({top:12})
        }

      }
      .width('100%')
      .height('30%')

      .margin({top:10})

      //输入框
      Column(){
        Column({ space: 17 }) {
          TextInput({ placeholder: '账号' })
            .width('100%')
            .height(45)
            .backgroundColor('#F1F3F5')
            .fontSize(45)
            .placeholderColor('#99182431')
            .margin({top:12})
            .padding({left:0})
            .maxLength(10)
            .type(InputType.Number)
          Line()
            .width('100%')
            .height(1)
            .backgroundColor(Color.Gray)
          TextInput({ placeholder: '密码' })
            .width('100%')
            .height(45)
            .backgroundColor('#F1F3F5')
            .fontSize(45)
            .placeholderColor('#99182431')
            .margin({top:12})
            .padding({left:0})
            .maxLength(8)
            .type(InputType.Password)
          Line()
            .width('100%')
            .height(1)
            .backgroundColor(Color.Gray)
          Row(){
            Row() {
              Text('短信验证码登录')
                .fontSize(16)
                .fontColor('#007DFF')
            }
            .width('50%')
            .justifyContent(FlexAlign.Start)

            Row() {
              Text('忘记密码')
                .fontSize(16)
                .fontColor('#007DFF')
            }
            .width('50%')
            .justifyContent(FlexAlign.End)
          }

        }

      }
      .width('100%')
      .height('30%')
      .margin({top:10})

      //其他方式
      Column(){

        Column({space:7}) {
          Button('登录')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.White)
            .width('40%')
          Button('注册账号')
            .fontColor('007dff')
            .fontWeight(500)
            .fontSize(18)
            .backgroundColor(Color.White)
            .onClick(() => {
              router.pushUrl({ url: 'pages/RegisterPage' })
            })
        }

        Row(){
          Text('其他登录方式')
            .fontSize(14)
            .fontColor('#99182431')
            .fontWeight(400)
        }
        .margin({top:20})
        Row(){
          Row(){
            Text('方式一')
              .borderRadius(400)
              .border({width:4})
              .width(70)
              .height(50)
              .textAlign(TextAlign.Center)
              .borderColor('#99182431')

          }

          Row(){
            Text('方式二')
              .borderRadius(400)
              .border({width:4})
              .width(70)
              .height(50)
              .textAlign(TextAlign.Center)
              .borderColor('#99182431')
          }
          Row(){
            Text('方式三')
              .borderRadius(400)
              .border({width:4})
              .width(70)
              .height(50)
              .textAlign(TextAlign.Center)
              .borderColor('#99182431')
          }
        }
        .margin({top:7})
        .justifyContent(FlexAlign.SpaceAround)
        .width('100%')
      }
      .width('100%')
      .height('30%')
      .margin({top:10})

    }
    .width('100%')
    .height('100%')
    .borderColor(Color.Red)

  }
}