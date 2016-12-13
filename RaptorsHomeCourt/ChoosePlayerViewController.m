//
//  ChoosePlayerViewController.m
//  RaptorsHomeCourt
//
//  Created by Xcode User on 2016-12-13.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "ChoosePlayerViewController.h"
#import "AppDelegate.h"
#import "SiteCell.h"

@interface ChoosePlayerViewController ()

@end

@implementation ChoosePlayerViewController
@synthesize listData,siteData,imageData;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.listData = [[NSArray alloc] initWithObjects:@"Bruno Coboclo",
                     @"Demarre Carroll",
                     @"DeMar DeRozan",
                     @"Cory Joseph",
                     @"Kyle Lowry",
                     @"Lucas Noguiera",
                     @"Patrick Patterson",
                     @"Jake Poeltl",
                     @"Norman Powell",
                     @"Terrence Ross",
                     @"Pascal Siakam",
                     @"Jared Sullinger",
                     @"Jonas Valancuinas",
                     @"Fred Vanvleet",
                     @"Delon Wright",nil];
    
    self.imageData = [[NSArray alloc] initWithObjects:@"bruno.png",
                     @"carroll.png",
                     @"derozan.png",
                     @"joseph.png",
                     @"lowry.png",
                     @"lucas.png",
                     @"patterson.png",
                     @"poeltl.png",
                     @"powell.png",
                     @"ross.png",
                     @"siakam.png",
                     @"sullinger.png",
                     @"jonas.png",
                     @"vanvleet.png",
                     @"wright.png",nil];
    
    self.siteData = [[NSArray alloc]initWithObjects:
                     @"http://www.espn.com/nba/player/_/id/3113297/bruno-caboclo",
                     @"http://www.espn.com/nba/player/_/id/3970/demarre-carroll",
                     @"http://www.espn.com/nba/player/_/id/3978/demar-derozan",
                     @"http://www.espn.com/nba/player/_/id/6446/cory-joseph",
                     @"http://www.espn.com/nba/player/_/id/3012/kyle-lowry",
                     @"http://www.espn.com/nba/player/_/id/3032980/lucas-nogueira",
                     @"http://www.espn.com/nba/player/_/id/4264/patrick-patterson",
                     @"http://www.espn.com/nba/player/_/id/3134908/jakob-poeltl",
                     @"http://www.espn.com/nba/player/_/id/2595516/norman-powell",
                     @"http://www.espn.com/nba/player/_/id/6619/terrence-ross",
                     @"http://www.espn.com/nba/player/_/id/3149673/pascal-siakam",
                     @"http://www.espn.com/nba/player/_/id/6624/jared-sullinger",
                     @"http://www.espn.com/nba/player/_/id/6477/jonas-valanciunas",
                     @"http://www.espn.com/nba/player/_/id/2991230/fred-vanvleet",
                     @"http://www.espn.com/nba/player/_/id/3064447/delon-wright", nil];
    
    
    
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

#pragma mark Table Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listData count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"Cell";
    
    SiteCell *cell = (SiteCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil)
        cell = [[SiteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    NSInteger row = indexPath.row;
    cell.primaryLabel.text = [listData objectAtIndex:row];
    cell.secondaryLabel.text = [siteData objectAtIndex:row];
    cell.myImageView.image = [UIImage imageNamed:[imageData objectAtIndex:row]];

    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * selectedURL = [self.siteData objectAtIndex:indexPath.row];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:selectedURL]];
    
    //AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    //mainDelegate.selectedURL = [siteData objectAtIndex:indexPath.row];
    
    
}

@end












