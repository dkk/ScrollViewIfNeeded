// MIT License
//
// Copyright (c) 2021 Daniel Klöck
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import SwiftUI

/// Puts the content in a ScrollViewIfNeeded
struct ScrollViewIfNeededViewModifier: ViewModifier {
    let axes: Axis.Set
    let showIndicators: Bool
    
    init(_ axes: Axis.Set, showIndicators: Bool) {
        self.axes = axes
        self.showIndicators = showIndicators
    }
    
    func body(content: Content) -> some View {
        ScrollViewIfNeeded(axes, showsIndicators: showIndicators) {
            content
        }
    }
}

public extension View {
    /// Makes the current View scrollable if it doesn't fit in the superview.
    /// Places the current View into a ScrollViewIfNeeded.
    ///
    /// - Parameters:
    ///   - axes: The scroll view's scrollable axis. The default axis is the
    ///    vertical axis.
    ///   - showsIndicators: A Boolean value that indicates whether the scroll
    ///   view displays the scrollable component of the content offset, in a way
    ///   suitable for the platform. The default value for this parameter is
    ///   `true`.
    func makeScrollableIfNeeded(_ axes: Axis.Set = .vertical, showIndicators: Bool = false) -> some View {
        self.modifier(ScrollViewIfNeededViewModifier(axes, showIndicators: showIndicators))
    }
}

