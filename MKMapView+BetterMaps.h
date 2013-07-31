#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MKMapView (ZoomToFitAnnotations)
- (void)zoomToFitAnnotationsAnimated:(BOOL)animated;
@end
