@import <AppKit/CPPanel.j>

@import "Sticky.j"

@implementation Desk : CPPanel
{
}

- (id)init
{
  self = [self initWithContentRect:CGRectMake(50.0, 50.0, 250.0, 360.0)
                  styleMask:CPHUDBackgroundWindowMask | CPClosableWindowMask | CPResizableWindowMask];

  if( self )
  {
    [self setTitle:@"Stickies"];
    [self setFloatingPanel:YES];

    var contentView = [self contentView],
        bounds      = [contentView bounds];

    bounds.size.height -= 20.0;

    var stikiesView = [[CPCollectionView alloc] initWithFrame:bounds];

    [stikiesView setAutoresizeMask:CPViewWidthSizeable];
    [stikiesView setMinItemSize:CGSizeMake(10,10)];
    [stikiesView setMaxItemSize:CGSizeMake(100,100)];

    var itemPrototype = [[CPCollectionViewItem alloc] init],
      stickyView      = [[StickyView alloc] initWithFrame:CGRectMakeZero()];

    var scrollView = [[CPScrollView alloc] initWithFrame:bounds];

    [scrollView setDocumentView:stickyView];
    //[scrollView setAutoresizeing 
  }

  return self;
}
@end
