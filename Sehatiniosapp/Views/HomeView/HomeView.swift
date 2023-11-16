import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_vector_indigo_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(4.0))
                                    .onTapGesture {
                                        homeViewModel.isMenuViewShow = true
                                    }
                                Spacer()
                                HStack {
                                    Image("img_vector_indigo_900_19x22")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(19.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    ZStack(alignment: .topTrailing) {
                                        Image("img_vector_indigo_900_22x19")
                                            .resizable()
                                            .frame(width: getRelativeWidth(19.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(6.0),
                                                   height: getRelativeWidth(6.0),
                                                   alignment: .topTrailing)
                                            .overlay(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                                    bottomLeft: 3.0,
                                                                    bottomRight: 3.0)
                                                    .stroke(ColorConstants.Gray50,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                                       bottomLeft: 3.0,
                                                                       bottomRight: 3.0)
                                                    .fill(ColorConstants.RedA700))
                                            .padding(.bottom, getRelativeHeight(17.0))
                                            .padding(.leading, getRelativeWidth(12.62))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(23.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(33.0))
                                }
                                .frame(width: getRelativeWidth(74.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(319.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(319.0), height: getRelativeHeight(23.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(23.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 0) {
                                Group {
                                    ZStack(alignment: .topTrailing) {
                                        ZStack(alignment: .bottomTrailing) {
                                            FSPagerViewSUI($homeViewModel
                                                .slidermaskgroupCurrentPage,
                                                homeViewModel.sliderData) { item in
                                                    ZStack(alignment: .leading) {
                                                        Image("img_maskgroup_gray_51")
                                                            .resizable()
                                                            .frame(width: getRelativeWidth(335.0),
                                                                   height: getRelativeHeight(131.0),
                                                                   alignment: .center)
                                                            .scaledToFit()
                                                            .clipped()
                                                        VStack(alignment: .leading, spacing: 0) {
                                                            Text(StringConstants.kMsgSolusiKesehat)
                                                                .font(FontScheme
                                                                    .kGilroyExtrabold(size: getRelativeHeight(18.0)))
                                                                .fontWeight(.heavy)
                                                                .foregroundColor(ColorConstants
                                                                    .Indigo900)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.leading)
                                                                .frame(width: getRelativeWidth(186.0),
                                                                       height: getRelativeHeight(23.0),
                                                                       alignment: .topLeading)
                                                                .padding(.trailing)
                                                            Text(StringConstants.kMsgUpdateInformas)
                                                                .font(FontScheme
                                                                    .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                                                .fontWeight(.regular)
                                                                .foregroundColor(ColorConstants
                                                                    .Bluegray500)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.leading)
                                                                .frame(width: getRelativeWidth(190.0),
                                                                       height: getRelativeHeight(26.0),
                                                                       alignment: .topLeading)
                                                                .padding(.top,
                                                                         getRelativeHeight(7.0))
                                                            Button(action: {}, label: {
                                                                HStack(spacing: 0) {
                                                                    Text(StringConstants
                                                                        .kLblSelengkapnya)
                                                                        .font(FontScheme
                                                                            .kGilroySemibold(size: getRelativeHeight(12.0)))
                                                                        .fontWeight(.semibold)
                                                                        .padding(.trailing,
                                                                                 getRelativeWidth(17.0))
                                                                        .padding(.leading,
                                                                                 getRelativeWidth(13.0))
                                                                        .padding(.vertical,
                                                                                 getRelativeHeight(8.0))
                                                                        .foregroundColor(ColorConstants
                                                                            .WhiteA700)
                                                                        .minimumScaleFactor(0.5)
                                                                        .multilineTextAlignment(.center)
                                                                        .frame(width: getRelativeWidth(110.0),
                                                                               height: getRelativeHeight(32.0),
                                                                               alignment: .center)
                                                                        .background(RoundedCorners(topLeft: 8.0,
                                                                                                   topRight: 8.0,
                                                                                                   bottomLeft: 8.0,
                                                                                                   bottomRight: 8.0)
                                                                                .fill(ColorConstants
                                                                                    .Indigo900))
                                                                        .shadow(color: ColorConstants
                                                                            .Bluegray9003d,
                                                                            radius: 24, x: 0,
                                                                            y: 16)
                                                                        .padding(.top,
                                                                                 getRelativeHeight(11.0))
                                                                        .padding(.trailing,
                                                                                 getRelativeWidth(10.0))
                                                                }
                                                            })
                                                            .frame(width: getRelativeWidth(110.0),
                                                                   height: getRelativeHeight(32.0),
                                                                   alignment: .center)
                                                            .background(RoundedCorners(topLeft: 8.0,
                                                                                       topRight: 8.0,
                                                                                       bottomLeft: 8.0,
                                                                                       bottomRight: 8.0)
                                                                    .fill(ColorConstants.Indigo900))
                                                            .shadow(color: ColorConstants
                                                                .Bluegray9003d,
                                                                radius: 24, x: 0, y: 16)
                                                            .padding(.top, getRelativeHeight(11.0))
                                                            .padding(.trailing,
                                                                     getRelativeWidth(10.0))
                                                        }
                                                        .frame(width: getRelativeWidth(190.0),
                                                               height: getRelativeHeight(100.0),
                                                               alignment: .leading)
                                                        .padding(.leading, getRelativeWidth(15.0))
                                                        .padding(.trailing, getRelativeWidth(130.0))
                                                    }
                                                    .hideNavigationBar()
                                                    .frame(width: getRelativeWidth(335.0),
                                                           height: getRelativeHeight(131.0))
                                                    .background(RoundedCorners(topLeft: 16.0,
                                                                               topRight: 16.0,
                                                                               bottomLeft: 16.0,
                                                                               bottomRight: 16.0)
                                                            .fill(ColorConstants.WhiteA700))
                                                    .shadow(color: ColorConstants.Indigo9003d,
                                                            radius: 24, x: 0, y: 16)
                                                }
                                            PageIndicator(numPages: homeViewModel.sliderData.count,
                                                          currentPage: $homeViewModel
                                                              .slidermaskgroupCurrentPage,
                                                          selectedColor: ColorConstants.WhiteA700,
                                                          unSelectedColor: ColorConstants
                                                              .WhiteA700Cc,
                                                          spacing: 10.0)
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(335.0),
                                               height: getRelativeHeight(131.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(29.0))
                                        Image("img_group11466")
                                            .resizable()
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(100.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(60.0))
                                            .padding(.leading, getRelativeWidth(220.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(160.0), alignment: .center)
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    ZStack(alignment: .topTrailing) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLblLayananKhusus)
                                                .font(FontScheme
                                                    .kGilroySemibold(size: getRelativeHeight(18.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(128.0),
                                                       height: getRelativeHeight(23.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(28.0))
                                                .padding(.horizontal, getRelativeWidth(15.0))
                                            Text(StringConstants.kMsgTesCovid19C)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Bluegray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(149.0),
                                                       height: getRelativeHeight(29.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(10.0))
                                                .padding(.horizontal, getRelativeWidth(15.0))
                                            HStack {
                                                Text(StringConstants.kLblDaftarTes)
                                                    .font(FontScheme
                                                        .kGilroyBold(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(ColorConstants.Indigo900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(67.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .topLeading)
                                                Image("img_arrowright_indigo_900")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(9.0),
                                                           height: getRelativeWidth(9.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.top, getRelativeHeight(5.0))
                                                    .padding(.leading, getRelativeWidth(11.0))
                                            }
                                            .frame(width: getRelativeWidth(87.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(12.0))
                                            .padding(.bottom, getRelativeHeight(14.0))
                                            .padding(.horizontal, getRelativeWidth(15.0))
                                        }
                                        .frame(width: getRelativeWidth(335.0),
                                               height: getRelativeHeight(137.0),
                                               alignment: .bottomLeading)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                                y: 16)
                                        .padding(.top, getRelativeHeight(27.0))
                                        Image("img_group11479")
                                            .resizable()
                                            .frame(width: getRelativeWidth(119.0),
                                                   height: getRelativeHeight(120.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(44.0))
                                            .padding(.leading, getRelativeWidth(197.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(164.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(19.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    ZStack(alignment: .topLeading) {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgTrackPemeriksa)
                                                .font(FontScheme
                                                    .kGilroySemibold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(131.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(6.0))
                                                .padding(.horizontal, getRelativeWidth(80.0))
                                            Text(StringConstants.kMsgKamuDapatMeng)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Bluegray500)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(171.0),
                                                       height: getRelativeHeight(28.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(8.0))
                                                .padding(.horizontal, getRelativeWidth(39.0))
                                            HStack {
                                                Text(StringConstants.kLblTrack)
                                                    .font(FontScheme
                                                        .kGilroyBold(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(ColorConstants.Indigo900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(35.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .topLeading)
                                                Image("img_arrowright_indigo_900")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(8.0),
                                                           height: getRelativeWidth(8.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.top, getRelativeHeight(5.0))
                                                    .padding(.bottom, getRelativeHeight(4.0))
                                                    .padding(.leading, getRelativeWidth(10.0))
                                            }
                                            .frame(width: getRelativeWidth(54.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(9.0))
                                            .padding(.bottom, getRelativeHeight(12.0))
                                            .padding(.horizontal, getRelativeWidth(124.0))
                                        }
                                        .frame(width: getRelativeWidth(335.0),
                                               height: getRelativeHeight(104.0),
                                               alignment: .bottomLeading)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                                y: 16)
                                        .padding(.top, getRelativeHeight(13.0))
                                        Image("img_group11520")
                                            .resizable()
                                            .frame(width: getRelativeWidth(80.0),
                                                   height: getRelativeHeight(66.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(51.0))
                                            .padding(.trailing, getRelativeWidth(235.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(117.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(40.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_group47")
                                        })
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeWidth(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                                y: 16)
                                        Spacer()
                                        HStack {
                                            TextField(StringConstants.kLblSearch,
                                                      text: $homeViewModel.groupfortyeight)
                                                .font(FontScheme
                                                    .kProximaNovaRegular(size: getRelativeHeight(16.0)))
                                                .foregroundColor(ColorConstants.Gray400)
                                                .padding()
                                            Image("img_search_indigo_900")
                                                .resizable()
                                                .frame(width: getRelativeWidth(12.0),
                                                       height: getRelativeWidth(12.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .clipShape(Capsule())
                                                .padding(.top, getRelativeHeight(13.0))
                                                .padding(.bottom, getRelativeHeight(14.0))
                                                .padding(.leading, getRelativeWidth(30.0))
                                                .padding(.trailing, getRelativeWidth(22.0))
                                            Spacer()
                                        }
                                        .frame(width: getRelativeWidth(265.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .shadow(color: ColorConstants.Gray4003d, radius: 24, x: 0,
                                                y: 16)
                                    }
                                    .frame(width: getRelativeWidth(335.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(40.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack {
                                            Text(StringConstants.kLblAllProduct)
                                                .font(FontScheme
                                                    .kProximaNovaBold(size: getRelativeHeight(12.0)))
                                                .fontWeight(.bold)
                                                .padding(.horizontal, getRelativeWidth(24.0))
                                                .padding(.bottom, getRelativeHeight(7.0))
                                                .padding(.top, getRelativeHeight(8.0))
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(111.0),
                                                       height: getRelativeHeight(30.0),
                                                       alignment: .center)
                                                .background(ColorConstants.Indigo900)
                                                .shadow(color: ColorConstants.Indigo9003d,
                                                        radius: 24, x: 0, y: 16)
                                            HStack {
                                                TextField(StringConstants.kMsgLayananKesehat,
                                                          text: $homeViewModel.groupfortyfiveText)
                                                    .font(FontScheme
                                                        .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                                    .foregroundColor(ColorConstants.Indigo900)
                                                    .padding()
                                            }
                                            .frame(width: getRelativeWidth(142.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 15.0,
                                                                       topRight: 15.0,
                                                                       bottomLeft: 15.0,
                                                                       bottomRight: 15.0)
                                                    .fill(ColorConstants.WhiteA700))
                                            .shadow(color: ColorConstants.Gray4003d, radius: 24,
                                                    x: 0, y: 16)
                                            .padding(.leading, getRelativeWidth(20.0))
                                            HStack {
                                                TextField(StringConstants.kLblAlatKesehatan,
                                                          text: $homeViewModel.groupfortyfourText)
                                                    .font(FontScheme
                                                        .kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                                                    .foregroundColor(ColorConstants.Indigo900)
                                                    .padding()
                                            }
                                            .frame(width: getRelativeWidth(120.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 15.0,
                                                                       topRight: 15.0,
                                                                       bottomLeft: 15.0,
                                                                       bottomRight: 15.0)
                                                    .fill(ColorConstants.WhiteA700))
                                            .shadow(color: ColorConstants.Gray4003d, radius: 24,
                                                    x: 0, y: 16)
                                            .padding(.leading, getRelativeWidth(20.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(30.0),
                                               alignment: .trailing)
                                    }
                                    .padding(.top, getRelativeHeight(40.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    ColumnvectorCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(335.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(26.0))
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                    Text(StringConstants.kMsgPilihTipeLaya)
                                        .font(FontScheme
                                            .kGilroySemibold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(245.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(39.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kLblSatuan)
                                                    .font(FontScheme
                                                        .kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.semibold)
                                                    .padding(.trailing, getRelativeWidth(19.0))
                                                    .padding(.leading, getRelativeWidth(15.0))
                                                    .padding(.vertical, getRelativeHeight(7.0))
                                                    .foregroundColor(ColorConstants.Indigo900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(78.0),
                                                           height: getRelativeHeight(28.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 14.0,
                                                                               topRight: 14.0,
                                                                               bottomLeft: 14.0,
                                                                               bottomRight: 14.0)
                                                            .fill(ColorConstants.Cyan500))
                                                    .padding(.leading, getRelativeWidth(4.0))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(78.0),
                                               height: getRelativeHeight(28.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                                   bottomLeft: 14.0,
                                                                   bottomRight: 14.0)
                                                .fill(ColorConstants.Cyan500))
                                        .padding(.leading, getRelativeWidth(4.0))
                                        Text(StringConstants.kMsgPaketPemeriksa)
                                            .font(FontScheme
                                                .kProximaNovaRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(118.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                            .padding(.bottom, getRelativeHeight(8.0))
                                            .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: getRelativeWidth(228.0),
                                           height: getRelativeHeight(34.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 17.0, topRight: 17.0,
                                                               bottomLeft: 17.0, bottomRight: 17.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0,
                                            y: 16)
                                    .padding(.top, getRelativeHeight(21.0))
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                }
                                Group {
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    RowpcrswabtestCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(335.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(40.0))
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                    HStack {
                                        Image("img_group_gray_400")
                                            .resizable()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeWidth(15.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kMsgTampilkanLebih)
                                            .font(FontScheme
                                                .kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(146.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: getRelativeWidth(174.0),
                                           height: getRelativeHeight(16.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(30.0))
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                    ZStack(alignment: .center) {
                                        Image("img_subtract")
                                            .resizable()
                                            .frame(width: UIScreen.main.bounds.width,
                                                   height: getRelativeHeight(107.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        HStack {
                                            Text(StringConstants.kMsgInginMendapat)
                                                .font(FontScheme
                                                    .kGilroyBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.Orange50)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(172.0),
                                                       height: getRelativeHeight(39.0),
                                                       alignment: .topLeading)
                                            ZStack(alignment: .bottomTrailing) {
                                                Image("img_ornamen1")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(42.0),
                                                           height: getRelativeHeight(40.0),
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
                                                        .frame(width: getRelativeWidth(55.0),
                                                               height: getRelativeHeight(31.0),
                                                               alignment: .topTrailing)
                                                    Image("img_arrowright")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(9.0),
                                                               height: getRelativeWidth(9.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.leading, getRelativeWidth(19.0))
                                                }
                                                .frame(width: getRelativeWidth(87.0),
                                                       height: getRelativeHeight(31.0),
                                                       alignment: .bottomTrailing)
                                                .padding(.top, getRelativeHeight(20.46))
                                                .padding(.leading, getRelativeWidth(23.09))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(111.0),
                                                   height: getRelativeHeight(52.0),
                                                   alignment: .center)
                                            .padding(.leading, getRelativeWidth(53.0))
                                        }
                                        .frame(width: getRelativeWidth(336.0),
                                               height: getRelativeHeight(54.0), alignment: .center)
                                        .padding(.bottom, getRelativeHeight(35.0))
                                        .padding(.leading, getRelativeWidth(22.0))
                                        .padding(.trailing, getRelativeWidth(17.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(107.0), alignment: .leading)
                                    .background(ColorConstants.Indigo900)
                                    .shadow(color: ColorConstants.Indigo90028, radius: 24, x: 0,
                                            y: -16)
                                    .padding(.top, getRelativeHeight(39.0))
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            if homeViewModel.isMenuViewShow {
                DrawerView(isShowing: $homeViewModel.isMenuViewShow,
                           isLeft: $homeViewModel.isLeftMenuView,
                           content: {
                               MenuView()
                           })
            }
        }
        .hideNavigationBar()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
