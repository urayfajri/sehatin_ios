import Foundation
import SwiftUI

/**
  DrawerView provide show view in form of drawer view with minimum to maximum flexible height.

  # Input Variable: #

  - `isShowing`: variable is wrapped with @Binding to open and close drawer with offset value.

  - `isLeft`: variable is wrapped with @Binding to add alignment of drawer.

  - `offset`: variable is wrapped with @Binding to open and close drawer with offset value.

  - `size`: variable is wrapped with @Binding to add size of drawer.

  - `staticWidth`: variable for storing the previous width when it is appeared..

  - `content`: provide 'some view' content here.

  - `dragOffset`: for dragGesture animation to hide the drawer.

  - `position`: for position of view with height and width.

  # Example #
 ```

    DrawerView(isShowing: $isShowing, isLeft: $isLeft, content: {
        [YOUR_VIEW_NAME]()
    })

 ```
 */

struct DrawerView<Content: View>: View {
    @Binding var isShowing: Bool
    @Binding var isLeft: Bool
    @State var offset: CGFloat = 0.0
    @State var size: CGSize = .zero
    @State var staticWidth: CGFloat = 0.0
    let content: Content
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero

    init(isShowing: Binding<Bool>, isLeft: Binding<Bool>, @ViewBuilder content: () -> Content) {
        _isShowing = isShowing
        _isLeft = isLeft
        self.content = content()
    }

    var body: some View {
        HStack(spacing: 0) {
            content
        }
        .frame(width: UIScreen.main.bounds.width, alignment: isLeft ? .leading : .trailing)
        .offset(x: offset < (position.width + dragOffset.width) ?
            (position.width + dragOffset.width) : offset,
            y: 0)
        .getSize {
            size = $0
            offset = $0.width
            self.staticWidth = offset
            offset = 0
        }
        .gesture(DragGesture()
            .onEnded { value in
                if isLeft {
                    if value.startLocation.x > value.location.x {
                        offset(value: value.location.x)
                    }
                } else {
                    if value.startLocation.x < value.location.x {
                        offset(value: value.location.x)
                    }
                }
            })
        .onChange(of: isShowing, perform: { value in
            if value {
                offset = size.width
            } else {
                offset = 0
            }
        })
    }

    private func offset(value: CGFloat) {
        if isLeft {
            if value > (staticWidth / 2) {
                offset = 0
                isShowing = false
            } else {
                offset = staticWidth
                isShowing = true
            }
        } else {
            if value < (staticWidth / 2) {
                offset = 0
                isShowing = false
            } else {
                offset = staticWidth
                isShowing = true
            }
        }
    }
}

struct SizePreferenceKeyForDrawer: PreferenceKey {
    struct SizePreferenceDataForDrawer {
        let bounds: Anchor<CGRect>
    }

    static var defaultValue: [SizePreferenceDataForDrawer] = []

    static func reduce(value: inout [SizePreferenceDataForDrawer],
                       nextValue: () -> [SizePreferenceDataForDrawer])
    {
        value.append(contentsOf: nextValue())
    }
}

struct SizePreferenceModifierForDrawer: ViewModifier {
    let onAppear: (CGSize) -> Void

    func body(content: Content) -> some View {
        content
            .anchorPreference(key: SizePreferenceKeyForDrawer.self,
                              value: .bounds,
                              transform: {
                                  [SizePreferenceKeyForDrawer
                                      .SizePreferenceDataForDrawer(bounds: $0)]
                              })
            .backgroundPreferenceValue(SizePreferenceKeyForDrawer.self) { _ in
                GeometryReader { geo in
                    Color.clear
                        .onAppear {
                            let size = CGSize(width: geo.size.width, height: geo.size.height)
                            onAppear(size)
                        }
                }
            }
    }
}

extension View {
    func getSize(_ onAppear: @escaping (CGSize) -> Void) -> some View {
        return modifier(SizePreferenceModifierForDrawer(onAppear: onAppear))
    }
}
