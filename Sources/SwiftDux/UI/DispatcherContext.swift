import SwiftUI
import Combine

/// Provides the application's store to views in the environment.
///
/// Typically you should use the `Store<_>.connect(updateOn:wrapper:)` method.
public class DispatcherContext : BindableObject {
  public var didChange = PassthroughSubject<Void, Never>()
  var dispatcher: ActionDispatcher {
    didSet { didChange.send() }
  }
  
  init(dispatcher: ActionDispatcher) {
    self.dispatcher = dispatcher
  }
}
