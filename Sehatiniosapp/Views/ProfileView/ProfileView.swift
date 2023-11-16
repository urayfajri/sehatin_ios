import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            ZStack(alignment: .leading) {
                                Image("img_vector_indigo_900")
                                    .resizable()
                                    .frame(width: 19.0, height: getRelativeHeight(14.0),
                                           alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        profileViewModel.isMenuViewShow = true
                                    }
                                Image("img_vector_indigo_900")
                                    .resizable()
                                    .frame(width: 19.0, height: getRelativeHeight(14.0),
                                           alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .hideNavigationBar()
                            .frame(width: 19.0, height: getRelativeHeight(14.0), alignment: .top)
                            .padding(.bottom, getRelativeHeight(5.0))
                            Spacer()
                            HStack {
                                Image("img_vector_indigo_900_19x22")
                                    .resizable()
                                    .frame(width: 22.0, height: getRelativeHeight(19.0),
                                           alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                ZStack(alignment: .topTrailing) {
                                    Image("img_vector_indigo_900_22x19")
                                        .resizable()
                                        .frame(width: 19.0, height: getRelativeHeight(22.0),
                                               alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: 6.0, height: getRelativeWidth(6.0),
                                               alignment: .topTrailing)
                                        .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                                bottomLeft: 3.0, bottomRight: 3.0)
                                                .stroke(ColorConstants.Gray50,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                                   bottomLeft: 3.0,
                                                                   bottomRight: 3.0)
                                                .fill(ColorConstants.RedA700))
                                        .padding(.bottom, getRelativeHeight(16.0))
                                        .padding(.leading, getRelativeWidth(14.62))
                                }
                                .hideNavigationBar()
                                .frame(width: 20.0, height: getRelativeHeight(22.0),
                                       alignment: .center)
                                .padding(.leading, getRelativeWidth(33.0))
                            }
                            .frame(width: 76.0, height: getRelativeHeight(22.0), alignment: .center)
                        }
                        .frame(width: getRelativeWidth(320.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(30.0))
                    }
                    .frame(width: 320.0, height: getRelativeHeight(100.0), alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            HStack {
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblProfileSaya)
                                            .font(FontScheme
                                                .kProximaNovaSemibold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.semibold)
                                            .padding(.horizontal, getRelativeWidth(22.0))
                                            .padding(.vertical, getRelativeHeight(9.0))
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 129.0, height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 17.5,
                                                                       topRight: 17.5,
                                                                       bottomLeft: 17.5,
                                                                       bottomRight: 17.5)
                                                    .fill(ColorConstants.Cyan500))
                                            .padding(.leading, getRelativeWidth(4.0))
                                    }
                                })
                                .frame(width: 129.0, height: getRelativeHeight(35.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                           bottomLeft: 17.5, bottomRight: 17.5)
                                        .fill(ColorConstants.Cyan500))
                                .padding(.leading, getRelativeWidth(4.0))
                                Text(StringConstants.kLblPengaturan)
                                    .font(FontScheme
                                        .kProximaNovaRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 81.0, height: getRelativeHeight(18.0),
                                           alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(13.0))
                                    .padding(.leading, getRelativeWidth(21.0))
                                    .padding(.trailing, getRelativeWidth(26.0))
                            }
                            .frame(width: 261.0, height: getRelativeHeight(41.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0, y: 16)
                            .padding(.horizontal, getRelativeWidth(32.0))
                            VStack {
                                Group {
                                    ZStack(alignment: .topLeading) {
                                        VStack {
                                            Text(StringConstants.kMsgLengkapiProfil)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: 243.0,
                                                       height: getRelativeHeight(29.0),
                                                       alignment: .topLeading)
                                                .padding(.vertical, getRelativeHeight(11.0))
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                        }
                                        .frame(width: 311.0, height: getRelativeHeight(48.0),
                                               alignment: .bottomLeading)
                                        .background(RoundedCorners(topLeft: 20.0, bottomLeft: 20.0,
                                                                   bottomRight: 20.0)
                                                .fill(ColorConstants.Indigo901))
                                        .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                                y: 16)
                                        .padding(.top, getRelativeHeight(114.0))
                                        ZStack(alignment: .leading) {
                                            Image("img_maskgroup_white_a700")
                                                .resizable()
                                                .frame(width: 311.0,
                                                       height: getRelativeHeight(114.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            HStack {
                                                Button(action: {}, label: {
                                                    Image("img_group9")
                                                })
                                                .frame(width: 40.0, height: getRelativeWidth(40.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0)
                                                        .fill(ColorConstants.Gray100))
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Text(StringConstants.kLblAnggaPraja)
                                                        .font(FontScheme
                                                            .kSFProDisplayBold(size: getRelativeHeight(20.0)))
                                                        .fontWeight(.bold)
                                                        .foregroundColor(ColorConstants.WhiteA700)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: 115.0,
                                                               height: getRelativeHeight(24.0),
                                                               alignment: .topLeading)
                                                    Text(StringConstants.kLblMembershipBblk)
                                                        .font(FontScheme
                                                            .kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.WhiteA7008c)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: 116.0,
                                                               height: getRelativeHeight(14.0),
                                                               alignment: .topLeading)
                                                }
                                                .frame(width: 116.0,
                                                       height: getRelativeHeight(41.0),
                                                       alignment: .center)
                                                .padding(.leading, getRelativeWidth(16.0))
                                            }
                                            .frame(width: 172.0, height: getRelativeHeight(41.0),
                                                   alignment: .leading)
                                            .padding(.leading, getRelativeWidth(25.0))
                                            .padding(.trailing, getRelativeWidth(114.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: 311.0, height: getRelativeHeight(114.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(48.0))
                                        Image("img_ornamen1")
                                            .resizable()
                                            .frame(width: 44.0, height: getRelativeHeight(42.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(77.0))
                                            .padding(.leading, getRelativeWidth(243.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: 311.0, height: getRelativeHeight(162.0),
                                           alignment: .leading)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.Indigo900))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    Text(StringConstants.kMsgPilihDataYang)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 228.0, height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(14.0))
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_group16")
                                        })
                                        .frame(width: 36.0, height: getRelativeWidth(36.0),
                                               alignment: .center)
                                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                                   bottomLeft: 18.0,
                                                                   bottomRight: 18.0)
                                                .fill(ColorConstants.Cyan500))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLblDataDiri)
                                                .font(FontScheme
                                                    .kGilroySemibold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Bluegray901)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: 58.0, height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                                .padding(.trailing)
                                            Text(StringConstants.kMsgDataDiriAnda)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray401)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: 112.0,
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: 112.0, height: getRelativeHeight(31.0),
                                               alignment: .top)
                                        .padding(.bottom, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(12.0))
                                        Button(action: {}, label: {
                                            Image("img_group17")
                                        })
                                        .frame(width: 36.0, height: getRelativeWidth(36.0),
                                               alignment: .center)
                                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                                   bottomLeft: 18.0,
                                                                   bottomRight: 18.0)
                                                .fill(ColorConstants.Indigo50))
                                        .padding(.leading, getRelativeWidth(20.0))
                                        Spacer()
                                    }
                                    .frame(width: 216.0, height: getRelativeHeight(36.0),
                                           alignment: .leading)
                                    .padding(.top, getRelativeHeight(19.0))
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    Text(StringConstants.kLblNamaDepan)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 99.0, height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(40.0))
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                    HStack {
                                        TextField(StringConstants.kLblJhon,
                                                  text: $profileViewModel.groupfifteenText)
                                            .font(FontScheme
                                                .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .padding()
                                    }
                                    .frame(width: 251.0, height: getRelativeHeight(40.0),
                                           alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    Text(StringConstants.kLblNamaBelakang)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 119.0, height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(29.0))
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                    HStack {
                                        TextField(StringConstants.kLblDoe,
                                                  text: $profileViewModel.groupfourteenText)
                                            .font(FontScheme
                                                .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .padding()
                                    }
                                    .frame(width: 251.0, height: getRelativeHeight(40.0),
                                           alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    Text(StringConstants.kLblEmail)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 40.0, height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(28.0))
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                }
                                Group {
                                    Group {
                                        HStack {
                                            TextField(StringConstants.kMsgMasukkanEmail,
                                                      text: $profileViewModel.groupthirteenText)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                                .foregroundColor(ColorConstants.Gray400)
                                                .padding()
                                                .keyboardType(.emailAddress)
                                        }
                                        .onChange(of: profileViewModel
                                            .groupthirteenText) { newValue in

                                                profileViewModel.isValidGroupthirteenText = newValue
                                                    .isValidEmail(isMandatory: true)
                                        }
                                        .frame(width: 251.0, height: getRelativeHeight(40.0),
                                               alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                                y: 16)
                                        .padding(.top, getRelativeHeight(16.0))
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        if !profileViewModel.isValidGroupthirteenText {
                                            Text("Please enter valid email.")
                                                .foregroundColor(Color.red)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                                .frame(width: 251.0,
                                                       height: getRelativeHeight(40.0),
                                                       alignment: .center)
                                        }
                                    }
                                    Text(StringConstants.kLblNoTelpon2)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 74.0, height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(29.0))
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                    HStack {
                                        TextField(StringConstants.kMsgMasukkanNoTel2,
                                                  text: $profileViewModel.grouptwelveText)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Gray400)
                                            .padding()
                                    }
                                    .frame(width: 251.0, height: getRelativeHeight(40.0),
                                           alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    Text(StringConstants.kLblNoKtp)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 56.0, height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(28.0))
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                    HStack {
                                        TextField(StringConstants.kMsgMasukkanNoKtp,
                                                  text: $profileViewModel.groupelevenText)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Gray400)
                                            .padding()
                                    }
                                    .frame(width: 251.0, height: getRelativeHeight(40.0),
                                           alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    HStack {
                                        Image("img_vector_indigo_900_16x16")
                                            .resizable()
                                            .frame(width: 16.0, height: getRelativeWidth(16.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(2.0))
                                        Text(StringConstants.kMsgPastikanProfil)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray701)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: 218.0, height: getRelativeHeight(30.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: 246.0, height: getRelativeHeight(30.0),
                                           alignment: .center)
                                    .padding(.top, getRelativeHeight(40.0))
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    HStack {
                                        TextField(StringConstants.kLblSimpanProfile,
                                                  text: $profileViewModel.groupeightText)
                                            .font(FontScheme
                                                .kGilroySemibold(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .padding()
                                        Image("img_vector_white_a700_12x12")
                                            .resizable()
                                            .frame(width: 12.0, height: getRelativeWidth(12.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(12.0))
                                            .padding(.leading, getRelativeWidth(30.0))
                                            .padding(.trailing, getRelativeWidth(27.0))
                                        Spacer()
                                    }
                                    .frame(width: 251.0, height: getRelativeHeight(36.0),
                                           alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Indigo900))
                                    .shadow(color: ColorConstants.Black90019, radius: 50, x: 0,
                                            y: 20)
                                    .padding(.vertical, getRelativeHeight(31.0))
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                }
                            }
                            .frame(width: 311.0, height: UIScreen.main.bounds.height,
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0, y: 16)
                            .padding(.horizontal, getRelativeWidth(32.0))
                            ZStack(alignment: .center) {
                                Image("img_subtract")
                                    .resizable()
                                    .frame(width: 320.0, height: getRelativeHeight(107.0),
                                           alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                HStack {
                                    Text(StringConstants.kMsgInginMendapat)
                                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Orange50)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 172.0, height: getRelativeHeight(39.0),
                                               alignment: .topLeading)
                                    ZStack(alignment: .bottomTrailing) {
                                        Image("img_ornamen1")
                                            .resizable()
                                            .frame(width: 42.0, height: getRelativeHeight(40.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(12.0))
                                            .padding(.trailing, getRelativeWidth(69.0))
                                        HStack {
                                            Text(StringConstants.kMsgDapatkanNotifi)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Orange50)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.trailing)
                                                .frame(width: 55.0, height: getRelativeHeight(31.0),
                                                       alignment: .topTrailing)
                                            Image("img_arrowright")
                                                .resizable()
                                                .frame(width: 9.0, height: getRelativeWidth(9.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(19.0))
                                        }
                                        .frame(width: 87.0, height: getRelativeHeight(31.0),
                                               alignment: .bottomTrailing)
                                        .padding(.top, getRelativeHeight(20.46))
                                        .padding(.leading, getRelativeWidth(23.09))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: 111.0, height: getRelativeHeight(52.0),
                                           alignment: .center)
                                    .padding(.leading, getRelativeWidth(53.0))
                                }
                                .frame(width: 336.0, height: getRelativeHeight(54.0),
                                       alignment: .center)
                                .padding(.bottom, getRelativeHeight(35.0))
                                .padding(.leading, getRelativeWidth(22.0))
                                .padding(.trailing, getRelativeWidth(17.0))
                            }
                            .hideNavigationBar()
                            .frame(width: 320.0, height: getRelativeHeight(107.0),
                                   alignment: .leading)
                            .background(ColorConstants.Indigo900)
                            .shadow(color: ColorConstants.Indigo90028, radius: 24, x: 0, y: -16)
                            .padding(.top, getRelativeHeight(77.0))
                        }
                        .frame(width: 320.0, alignment: .topLeading)
                    }
                }
                .frame(width: 320.0, alignment: .topLeading)
                .background(ColorConstants.Gray52)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: 320.0, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray52)
            .ignoresSafeArea()
            if profileViewModel.isMenuViewShow {
                DrawerView(isShowing: $profileViewModel.isMenuViewShow,
                           isLeft: $profileViewModel.isLeftMenuView,
                           content: {
                               MenuView()
                           })
            }
        }
        .hideNavigationBar()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
