import SwiftUI

struct RegisterView: View {
    @StateObject var registerViewModel = RegisterViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                Text(StringConstants.kMsgHaiSelamatDa)
                                    .font(FontScheme
                                        .kGilroyExtrabold(size: getRelativeHeight(28.0)))
                                    .fontWeight(.heavy)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(258.0),
                                           height: getRelativeHeight(35.0), alignment: .topLeading)
                                    .padding(.trailing)
                                ZStack(alignment: .topLeading) {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(273.0),
                                               height: getRelativeHeight(154.0),
                                               alignment: .bottomTrailing)
                                        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                    .LightBlue700,
                                                ColorConstants
                                                    .Indigo900]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing))
                                        .padding(.top, getRelativeHeight(54.89))
                                        .padding(.leading, getRelativeWidth(81.0))
                                    Text(StringConstants.kMsgSilahkanLogin)
                                        .font(FontScheme
                                            .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Bluegray500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(178.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(214.0))
                                        .padding(.trailing, getRelativeWidth(177.0))
                                    ZStack(alignment: .bottomLeading) {
                                        ZStack(alignment: .bottomLeading) {
                                            VStack(alignment: .leading, spacing: 0) {
                                                HStack {
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(4.0),
                                                               height: getRelativeWidth(4.0),
                                                               alignment: .bottom)
                                                        .background(RoundedCorners(topLeft: 2.245,
                                                                                   topRight: 2.245,
                                                                                   bottomLeft: 2.245,
                                                                                   bottomRight: 2.245)
                                                                .fill(ColorConstants.WhiteA700))
                                                        .padding(.vertical, getRelativeHeight(4.0))
                                                        .padding(.leading, getRelativeWidth(7.0))
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(4.0),
                                                               height: getRelativeWidth(4.0),
                                                               alignment: .bottom)
                                                        .background(RoundedCorners(topLeft: 2.245,
                                                                                   topRight: 2.245,
                                                                                   bottomLeft: 2.245,
                                                                                   bottomRight: 2.245)
                                                                .fill(ColorConstants.WhiteA70066))
                                                        .padding(.vertical, getRelativeHeight(4.0))
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(4.0),
                                                               height: getRelativeWidth(4.0),
                                                               alignment: .bottom)
                                                        .background(RoundedCorners(topLeft: 2.245,
                                                                                   topRight: 2.245,
                                                                                   bottomLeft: 2.245,
                                                                                   bottomRight: 2.245)
                                                                .fill(ColorConstants.WhiteA70033))
                                                        .padding(.vertical, getRelativeHeight(4.0))
                                                    Spacer()
                                                }
                                                .frame(width: getRelativeWidth(226.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0)
                                                        .fill(ColorConstants
                                                            .Gray900))
                                                HStack {
                                                    VStack {
                                                        Image("img_vector_bluegray_100")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(4.0),
                                                                   height: getRelativeHeight(5.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(2.0))
                                                        Button(action: {}, label: {
                                                            Image("img_group4")
                                                        })
                                                        .frame(width: getRelativeWidth(10.0),
                                                               height: getRelativeWidth(10.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 4.0,
                                                                                   topRight: 4.0,
                                                                                   bottomLeft: 4.0,
                                                                                   bottomRight: 4.0)
                                                                .fill(ColorConstants.Indigo900))
                                                        .padding(.top, getRelativeHeight(7.0))
                                                        Image("img_vector_bluegray_100_5x5")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(5.0),
                                                                   height: getRelativeWidth(5.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.top, getRelativeHeight(7.0))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(2.0))
                                                    }
                                                    .frame(width: getRelativeWidth(10.0),
                                                           height: getRelativeHeight(35.0),
                                                           alignment: .top)
                                                    .padding(.vertical, getRelativeHeight(52.0))
                                                    Spacer()
                                                    VStack(alignment: .trailing, spacing: 0) {
                                                        HStack {
                                                            Image("img_riwayatmedisa")
                                                                .resizable()
                                                                .frame(width: getRelativeWidth(95.0),
                                                                       height: getRelativeHeight(9.0),
                                                                       alignment: .center)
                                                                .scaledToFit()
                                                                .clipped()
                                                            Spacer()
                                                            HStack {
                                                                Image("img_group10377")
                                                                    .resizable()
                                                                    .frame(width: getRelativeWidth(10.0),
                                                                           height: getRelativeHeight(9.0),
                                                                           alignment: .center)
                                                                    .scaledToFit()
                                                                    .clipped()
                                                                Image("img_ellipse145_10x3")
                                                                    .resizable()
                                                                    .frame(width: getRelativeWidth(3.0),
                                                                           height: getRelativeHeight(10.0),
                                                                           alignment: .center)
                                                                    .scaledToFit()
                                                                    .clipped()
                                                                    .clipShape(Capsule())
                                                                    .padding(.leading,
                                                                             getRelativeWidth(4.0))
                                                            }
                                                            .frame(width: getRelativeWidth(18.0),
                                                                   height: getRelativeHeight(10.0),
                                                                   alignment: .center)
                                                        }
                                                        .frame(width: getRelativeWidth(203.0),
                                                               height: getRelativeHeight(10.0),
                                                               alignment: .leading)
                                                        Image("img_group11451_109x190")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(190.0),
                                                                   height: getRelativeHeight(109.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                            .padding(.top, getRelativeHeight(11.0))
                                                            .padding(.leading,
                                                                     getRelativeWidth(10.0))
                                                    }
                                                    .frame(width: getRelativeWidth(203.0),
                                                           height: getRelativeHeight(131.0),
                                                           alignment: .center)
                                                    .padding(.vertical, getRelativeHeight(19.0))
                                                }
                                                .frame(width: getRelativeWidth(226.0),
                                                       height: getRelativeHeight(165.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(bottomLeft: 10.0,
                                                                           bottomRight: 10.0)
                                                        .fill(ColorConstants.WhiteA700))
                                            }
                                            .frame(width: getRelativeWidth(226.0),
                                                   height: getRelativeHeight(179.0),
                                                   alignment: .trailing)
                                            .shadow(color: ColorConstants.Indigo90028, radius: 36,
                                                    x: 0, y: 8)
                                            .padding(.leading, getRelativeWidth(79.84))
                                            Image("img_group1444")
                                                .resizable()
                                                .frame(width: getRelativeWidth(110.0),
                                                       height: getRelativeHeight(37.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.top, getRelativeHeight(115.72))
                                                .padding(.trailing, getRelativeWidth(196.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(306.0),
                                               height: getRelativeHeight(179.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(32.3))
                                        Image("img_maskgroup")
                                            .resizable()
                                            .frame(width: getRelativeWidth(17.0),
                                                   height: getRelativeWidth(17.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(200.06))
                                            .padding(.trailing, getRelativeWidth(219.02))
                                        Image("img_search_104x105")
                                            .resizable()
                                            .frame(width: getRelativeWidth(105.0),
                                                   height: getRelativeHeight(104.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(114.0))
                                            .padding(.leading, getRelativeWidth(200.77))
                                        Image("img_subtract")
                                            .resizable()
                                            .frame(width: getRelativeWidth(102.0),
                                                   height: getRelativeHeight(130.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(71.0))
                                            .padding(.trailing, getRelativeWidth(172.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(306.0),
                                           height: getRelativeHeight(218.0), alignment: .trailing)
                                    .padding(.leading, getRelativeWidth(49.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(355.0),
                                       height: getRelativeHeight(226.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                                HStack {
                                    Text(StringConstants.kLblNamaDepan)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(99.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblNamaBelakang)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(119.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(86.0))
                                }
                                .frame(width: getRelativeWidth(304.0),
                                       height: getRelativeHeight(20.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(29.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    HStack {
                                        TextField(StringConstants.kLblJhon,
                                                  text: $registerViewModel.groupsixtytwoText)
                                            .font(FontScheme
                                                .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    Spacer()
                                    HStack {
                                        TextField(StringConstants.kLblDoe,
                                                  text: $registerViewModel.groupsixtyoneText)
                                            .font(FontScheme
                                                .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.leading, getRelativeWidth(35.0))
                                }
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kLblNoKtp)
                                    .font(FontScheme.kGilroySemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(56.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(38.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    TextField(StringConstants.kMsgMasukkanNoKt,
                                              text: $registerViewModel.groupsixtyText)
                                        .font(FontScheme
                                            .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.Gray700)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(40.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0, y: 16)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                Text(StringConstants.kLblEmail)
                                    .font(FontScheme.kGilroySemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(38.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Group {
                                    HStack {
                                        TextField(StringConstants.kMsgMasukkanEmail,
                                                  text: $registerViewModel.groupfiftynineText)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Gray700)
                                            .padding()
                                            .keyboardType(.emailAddress)
                                    }
                                    .onChange(of: registerViewModel
                                        .groupfiftynineText) { newValue in

                                            registerViewModel.isValidGroupfiftynineText = newValue
                                                .isValidEmail(isMandatory: true)
                                    }
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    if !registerViewModel.isValidGroupfiftynineText {
                                        Text("Please enter valid email.")
                                            .foregroundColor(Color.red)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .frame(width: getRelativeWidth(335.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .leading)
                                    }
                                }
                            }
                            Group {
                                Text(StringConstants.kLblNoTelpon)
                                    .font(FontScheme.kGilroySemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(77.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(39.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    TextField(StringConstants.kMsgMasukkanNoTelepon,
                                              text: $registerViewModel.groupsixtyText)
                                        .font(FontScheme
                                            .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                        .foregroundColor(ColorConstants.Gray700)
                                        .padding()
                                }
                                Text(StringConstants.kLblPassword)
                                    .font(FontScheme.kGilroySemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(70.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(38.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Group {
                                    HStack {
                                        TextField(StringConstants.kMsgMasukkanPasswo,
                                                  text: $registerViewModel.groupfiftysevenText)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Gray700)
                                            .padding()
                                            .keyboardType(.default)
                                        Image("img_group")
                                            .resizable()
                                            .frame(width: getRelativeWidth(13.0),
                                                   height: getRelativeHeight(8.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(16.0))
                                            .padding(.leading, getRelativeWidth(30.0))
                                            .padding(.trailing, getRelativeWidth(25.0))
                                        Spacer()
                                    }
                                    .onChange(of: registerViewModel
                                        .groupfiftysevenText) { newValue in

                                            registerViewModel.isValidGroupfiftysevenText = newValue
                                                .isValidPassword(isMandatory: true)
                                    }
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    if !registerViewModel.isValidGroupfiftysevenText {
                                        Text("Please enter valid password.")
                                            .foregroundColor(Color.red)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .frame(width: getRelativeWidth(335.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .leading)
                                    }
                                }
                                Text(StringConstants.kMsgKonfirmasiPass)
                                    .font(FontScheme.kGilroySemibold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(151.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(38.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                Group {
                                    HStack {
                                        TextField(StringConstants.kMsgKonfirmasiPass2,
                                                  text: $registerViewModel.groupfiftysixText)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Gray700)
                                            .padding()
                                            .keyboardType(.default)
                                        Image("img_group")
                                            .resizable()
                                            .frame(width: getRelativeWidth(13.0),
                                                   height: getRelativeHeight(8.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(16.0))
                                            .padding(.leading, getRelativeWidth(30.0))
                                            .padding(.trailing, getRelativeWidth(25.0))
                                        Spacer()
                                    }
                                    .onChange(of: registerViewModel.groupfiftysixText) { newValue in

                                        registerViewModel.isValidGroupfiftysixText = newValue
                                            .isValidPassword(isMandatory: true)
                                    }
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    if !registerViewModel.isValidGroupfiftysixText {
                                        Text("Please enter valid password.")
                                            .foregroundColor(Color.red)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .frame(width: getRelativeWidth(335.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .leading)
                                    }
                                }
                                HStack {
                                    Text(StringConstants.kLblRegister)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(68.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .padding(.leading, getRelativeWidth(133.0))
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(14.0),
                                               height: getRelativeWidth(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(95.0))
                                }
                                .onTapGesture {
                                    registerViewModel.showAlert("Success", "Register Success")
                                }
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.Indigo900))
                                .shadow(color: ColorConstants.Black90019, radius: 50, x: 0, y: 20)
                                .padding(.top, getRelativeHeight(40.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Text(StringConstants.kMsgSudahPunyaAku)
                                        .font(FontScheme
                                            .kProximaNovaRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(125.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblLoginSekarang)
                                        .font(FontScheme
                                            .kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(11.0))
                                        .onTapGesture {
                                            registerViewModel.nextScreen = "LoginView"
                                        }
                                }
                                .frame(width: getRelativeWidth(232.0),
                                       height: getRelativeHeight(16.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(32.0))
                                .padding(.horizontal, getRelativeWidth(51.0))
                            }
                            Group {
                                HStack {
                                    Image("img_vector")
                                        .resizable()
                                        .frame(width: getRelativeWidth(13.0),
                                               height: getRelativeWidth(13.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kMsgSilkAllRight)
                                        .font(FontScheme
                                            .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(123.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(9.0))
                                }
                                .frame(width: getRelativeWidth(145.0),
                                       height: getRelativeHeight(13.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(41.0))
                                .padding(.horizontal, getRelativeWidth(95.0))
                            }
                        }
                        .frame(width: getRelativeWidth(355.0), alignment: .topLeading)
                    }
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(355.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $registerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                .alert(isPresented: $registerViewModel.isAlertShow,
                       content: { Alert(title: Text(registerViewModel.alertTitle),
                                        message: Text(registerViewModel.alertDescription),
                                        dismissButton: .default(Text("OK"))) })
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .padding(.top, 50)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
