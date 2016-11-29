//
//  MapViewController.h
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-29.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController{
    MKMapView *mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

-(IBAction)setMap:(id)sender;
-(IBAction)getLocation:(id)sender;
-(IBAction)Direction:(id)sender;

@end
