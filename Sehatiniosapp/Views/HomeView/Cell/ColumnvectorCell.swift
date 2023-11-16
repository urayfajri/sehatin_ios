import SwiftUI

struct ColumnvectorCell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            VStack(alignment: .trailing, spacing: 0) {
                HStack {
                    ZStack(alignment: .bottomLeading) {
                        Image("img_vector_yellow_a400")
                            .resizable()
                            .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.bottom, getRelativeHeight(78.0))
                            .padding(.leading, getRelativeWidth(77.73))
                        Image("img_untitled11")
                            .resizable()
                            .frame(width: getRelativeWidth(78.0), height: getRelativeWidth(80.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.top, getRelativeHeight(13.67))
                            .padding(.trailing, getRelativeWidth(14.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(93.0),
                           alignment: .leading)
                    Text(StringConstants.kLbl5)
                        .font(FontScheme.kProximaNovaSemibold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(1.0))
                        .padding(.leading, getRelativeWidth(5.0))
                }
                .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(93.0),
                       alignment: .leading)
                .padding(.leading)
                .padding(.leading)
                .padding(.trailing, getRelativeWidth(10.0))
                Text(StringConstants.kLblSuntikSteril)
                    .font(FontScheme.kProximaNovaSemibold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.leading, getRelativeWidth(10.0))
                    .padding(.trailing, getRelativeWidth(80.0))
                HStack {
                    Text(StringConstants.kLblRp10000)
                        .font(FontScheme.kProximaNovaSemibold(size: getRelativeHeight(12.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Amber900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(6.0))
                    Spacer()
                    Text(StringConstants.kLblReadyStok)
                        .font(FontScheme.kProximaNovaRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .padding(.horizontal, getRelativeWidth(5.0))
                        .padding(.top, getRelativeHeight(4.0))
                        .foregroundColor(ColorConstants.Green900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .background(ColorConstants.GreenA100)
                }
                .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(3.0))
                .padding(.horizontal, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(158.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                       bottomRight: 16.0)
                    .fill(ColorConstants.WhiteA700))
            .shadow(color: ColorConstants.Gray40028, radius: 24, x: 0, y: 16)
        }
        .hideNavigationBar()
    }
}

/* struct ColumnvectorCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnvectorCell()
 }
 } */
