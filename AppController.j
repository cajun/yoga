
@import <Foundation/CPObject.j>
@import "Desk.j"

@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // The end result of this layout will be the kind of master/detail/auxilliary view
    // found in iTunes, Mail, and many other apps.

    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    var navigationArea = [[CPView alloc] initWithFrame:CGRectMake(0.0, 0.0, 150.0, CGRectGetHeight([contentView bounds]))];

    [navigationArea setBackgroundColor:[CPColor redColor]];

    // This view will grow in height, but stay fixed width attached to the left side of the screen.
    [navigationArea setAutoresizingMask:CPViewHeightSizable | CPViewMaxXMargin];

    [contentView addSubview:navigationArea];

    var contentArea = [[CPView alloc] initWithFrame:CGRectMake(150.0, 0.0, CGRectGetWidth([contentView bounds]) - 150.0, CGRectGetHeight([contentView bounds]))];

    [contentArea setBackgroundColor:[CPColor blueColor]];

    // This view will grow in both height an width.
    [contentArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

    [contentView addSubview:contentArea];

    [[[Desk alloc] init] orderFront:nil];

    [theWindow orderFront:self];
}

@end
