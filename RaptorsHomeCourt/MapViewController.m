//
//  MapViewController.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-11-29.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "MapViewController.h"
#import "MapPin.h"
@import CoreLocation;

@interface MapViewController () <CLLocationManagerDelegate>
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation MapViewController
@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MKCoordinateRegion region001 = {{0.0,0.0},{0.0,0.0}};
    region001.center.latitude = 43.643541;
    region001.center.longitude = -79.379097;
    region001.span.longitudeDelta = 0.010f;
    region001.span.latitudeDelta = 0.010f;
    [mapView setRegion:region001 animated:YES];
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    // Check for iOS 8. Without this guard the code will crash with "unknown selector" on iOS 7.
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    [self.locationManager startUpdatingLocation];
    
    
    MapPin *ann = [[MapPin alloc] init];
    ann.title = @"Air Canada Center";
    ann.subtitle = @"Home of the Toronto Raptors";
    ann.coordinate = region001.center;
    [mapView addAnnotation:ann];
    
}

-(IBAction)setMap:(id)sender; {
    
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            mapView.mapType = MKMapTypeStandard;
            break;
            
        case 1:
            mapView.mapType = MKMapTypeSatellite;
            break;
            
        case 2:
            mapView.mapType = MKMapTypeHybrid;
            break;
            
        default:
            break;
    }
    
}

// Location Manager Delegate Methods
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@", [locations lastObject]);
}

-(IBAction)getLocation:(id)sender {
    mapView.showsUserLocation = YES;
}

-(IBAction)Direction:(id)sender {
    NSString *urlstring = @"http://maps.apple.com/maps?daddr=43.643541,-79.379097";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlstring]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
