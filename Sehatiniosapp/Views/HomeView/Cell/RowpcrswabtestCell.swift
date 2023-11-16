import SwiftUI

struct RowpcrswabtestCell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgPcrSwabTest)
                        .font(FontScheme.kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(159.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                    Text(StringConstants.kLblRp1400000)
                        .font(FontScheme.kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Amber900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        Image("img_vector_indigo_900_14x12")
                            .resizable()
                            .frame(width: getRelativeWidth(10.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                            .scaledToFit()
                        Text(StringConstants.kMsgLenmarcSurabay)
                            .font(FontScheme.kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray701)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(7.0))
                    }
                    .frame(width: getRelativeWidth(128.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(21.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        Image("img_vector_indigo_900_11x9")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(11.0),
                                   alignment: .leading)
                            .scaledToFit()
                        Text(StringConstants.kMsgDukuhPakisSu)
                            .font(FontScheme.kProximaNovaRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(9.0))
                    }
                    .frame(width: getRelativeWidth(130.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(159.0), height: getRelativeHeight(124.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(21.0))
                Image("img_image6")
                    .resizable()
                    .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(149.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0))
                    .padding(.leading, getRelativeWidth(34.0))
            }
            .frame(width: getRelativeWidth(333.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                       bottomRight: 16.0)
                    .fill(ColorConstants.WhiteA700))
            .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0, y: 16)
        }
        .hideNavigationBar()
    }
}

/* struct RowpcrswabtestCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowpcrswabtestCell()
 }
 } */
