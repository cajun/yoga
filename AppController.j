
@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // The end result of this layout will be the kind of master/detail/auxilliary view
    // found in iTunes, Mail, and many other apps.

    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    var navigationArea = [[CPImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, CGRectGetHeight([contentView bounds]))];

    var image_nav = [[CPImage alloc] initWithContentsOfFile:"Resources/woody.jpg" size:CGSizeMake(20, 20)]; 
    [navigationArea setImage:image_nav];
    //[navigationArea setBackgroundColor:[CPColor redColor]];

    // This view will grow in height, but stay fixed width attached to the left side of the screen.
    [navigationArea setAutoresizingMask:CPViewHeightSizable | CPViewMaxXMargin];

    [contentView addSubview:navigationArea];

    var contentArea = [[CPImageView alloc] initWithFrame:CGRectMake(200.0, 0.0, CGRectGetWidth([contentView bounds]) - 150.0, CGRectGetHeight([contentView bounds]))];

    var image = [[CPImage alloc] initWithContentsOfFile:"Resources/cork.jpg" size:CGSizeMake(20, 20)]; 
    [contentArea setImage:image];

    //[contentArea setBackgroundColor:[CPColor greenColor]];

    // This view will grow in both height an width.
    [contentArea setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

    [contentView addSubview:contentArea];

    [theWindow orderFront:self];
}

@end
