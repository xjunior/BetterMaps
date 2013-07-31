#import "MKMapView+BetterMaps.h"

@implementation MKMapView (ZoomToFitAnnotations)

- (void)zoomToFitAnnotationsAnimated:(BOOL)animated {
    MKMapRect zoomRect = MKMapRectNull;
    for (id <MKAnnotation> annotation in self.annotations)
    {
        MKMapPoint annotationPoint = MKMapPointForCoordinate(annotation.coordinate);
        MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0.1, 0.1);
        zoomRect = MKMapRectUnion(zoomRect, pointRect);
    }
    [self setVisibleMapRect:zoomRect animated:YES];
}

@end
