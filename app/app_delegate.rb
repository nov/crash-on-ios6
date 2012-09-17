class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    [
      UIControlStateNormal,
      UIControlStateHighlighted,
      UIControlStateDisabled
    ].each do |state|
      UIBarButtonItem.appearanceWhenContainedIn(UINavigationBar).tap do |custom|
        custom.setBackgroundImage(
          UIImage.imageNamed('hed_send.png').resizableImageWithCapInsets(
            [0, 7, 0, 7]
          ),
          forState: state,
          barMetrics: UIBarMetricsDefault
        )
      end
    end
    true
  end
end
