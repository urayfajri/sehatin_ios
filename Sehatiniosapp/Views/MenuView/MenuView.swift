import SwiftUI

struct MenuView: View {
    @StateObject var menuViewModel = MenuViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ZStack {
                        Image("img_vector_white_a700")
                            .resizable()
                            .frame(width: 20.0, height: getRelativeWidth(20.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(752.0))
                            .padding(.leading, getRelativeWidth(24.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                    }
                    .hideNavigationBar()
                    .frame(width: 55.0, height: UIScreen.main.bounds.height, alignment: .topLeading)
                    .background(ColorConstants.Indigo900A2)
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Button(action: {}, label: {
                                Image("img_group9")
                            })
                            .frame(width: 40.0, height: getRelativeWidth(40.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Gray100))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblAnggaPraja)
                                    .font(FontScheme
                                        .kSFProDisplayBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 81.0, height: getRelativeHeight(17.0),
                                           alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kLblMembershipBblk)
                                    .font(FontScheme
                                        .kProximaNovaSemibold(size: getRelativeHeight(11.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Indigo9008c)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 91.0, height: getRelativeHeight(11.0),
                                           alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: 91.0, height: getRelativeHeight(32.0), alignment: .center)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: 147.0, height: getRelativeHeight(40.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(122.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                        HStack {
                            Text(StringConstants.kLblProfileSaya)
                                .font(FontScheme
                                    .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: 64.0, height: getRelativeHeight(12.0),
                                       alignment: .topLeading)
                            Image("img_arrowright_gray_600")
                                .resizable()
                                .frame(width: 5.0, height: getRelativeHeight(8.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(68.0))
                        }
                        .onTapGesture {
                            menuViewModel.nextScreen = "ProfileView"
                        }
                        .frame(width: 137.0, height: getRelativeHeight(12.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(37.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                        HStack {
                            Text(StringConstants.kLblPengaturan)
                                .font(FontScheme
                                    .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: 62.0, height: getRelativeHeight(12.0),
                                       alignment: .topLeading)
                            Image("img_arrowright_gray_600")
                                .resizable()
                                .frame(width: 5.0, height: getRelativeHeight(8.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(70.0))
                        }
                        .frame(width: 137.0, height: getRelativeHeight(12.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                        VStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblLogout)
                                        .font(FontScheme
                                            .kSFProDisplayRegular(size: getRelativeHeight(11.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(7.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 131.0, height: getRelativeHeight(28.0),
                                               alignment: .center)
                                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                                   bottomLeft: 14.0,
                                                                   bottomRight: 14.0)
                                                .fill(ColorConstants.RedA701))
                                }
                            })
                            .frame(width: 131.0, height: getRelativeHeight(28.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.RedA701))
                        }
                        .frame(width: 131.0, height: getRelativeHeight(28.0), alignment: .leading)
                        .clipShape(Capsule())
                        .padding(.top, getRelativeHeight(43.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                        HStack {
                            Text(StringConstants.kLblIkutiKamiDi)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: 87.0, height: getRelativeHeight(20.0),
                                       alignment: .topLeading)
                            Image("img_vector_indigo_900_12x12")
                                .resizable()
                                .frame(width: 12.0, height: getRelativeWidth(12.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(4.0))
                                .padding(.leading, getRelativeWidth(12.0))
                            Image("img_vector_indigo_900_10x10")
                                .resizable()
                                .frame(width: 10.0, height: getRelativeWidth(10.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.bottom, getRelativeHeight(4.0))
                                .padding(.leading, getRelativeWidth(9.0))
                            Image("img_vector_12x12")
                                .resizable()
                                .frame(width: 12.0, height: getRelativeWidth(12.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(4.0))
                                .padding(.leading, getRelativeWidth(10.0))
                        }
                        .frame(width: 154.0, height: getRelativeHeight(20.0), alignment: .center)
                        .padding(.top, getRelativeHeight(78.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                        HStack {
                            Text(StringConstants.kLblFaq)
                                .font(FontScheme.kProximaNovaBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray4008f)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: 29.0, height: getRelativeHeight(16.0),
                                       alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kMsgTermsAndCondi)
                                .font(FontScheme.kProximaNovaBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray4008f)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: 140.0, height: getRelativeHeight(16.0),
                                       alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(48.0))
                        }
                        .frame(width: 217.0, height: getRelativeHeight(16.0), alignment: .center)
                        .padding(.vertical, getRelativeHeight(293.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                    }
                    .frame(width: 320.0, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: 320.0, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $menuViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: 320.0, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
