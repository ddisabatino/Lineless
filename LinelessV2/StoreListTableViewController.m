//
//  StoreListTableViewController.m
//  LineLess V2
//
//  Created by Devin DiSabatino on 1/18/15.
//  Copyright (c) 2015 Disabs. All rights reserved.
//

#import "StoreListTableViewController.h"
#import "StoreTableViewCell.h"
#import "Store.h"
#import "ViewController.h"

@interface StoreListTableViewController ()
@property (strong, nonatomic) NSMutableArray *storeList;

@end

@implementation StoreListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.storeList = [[NSMutableArray alloc] init];
    [self loadSampleData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    ViewController *source = [segue sourceViewController];
    
    //send slider value to server
    NSLog(@"Send slider value to server");
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// This method load sample data for the purpose of demonstration. Implement method to pull data from server

-(void)loadSampleData {
    Store *store1 = [[Store alloc] initWithName:@"Chipotle" wait:7 confidence:15];
    Store *store2 = [[Store alloc] initWithName:@"SweetGreen" wait:9 confidence:15];
    Store *store3 = [[Store alloc] initWithName:@"Magic Carpet" wait:3 confidence:15];
    Store *store4 = [[Store alloc] initWithName:@"Bobby's" wait:6 confidence:15];
    Store *store5 = [[Store alloc] initWithName:@"Tap House" wait:1 confidence:15];
    Store *store6 = [[Store alloc] initWithName:@"Starbucks" wait:9 confidence:15];
    Store *store7 = [[Store alloc] initWithName:@"Somewhere Else" wait:2 confidence:15];
    
    [self.storeList addObject:store1];
    [self.storeList addObject:store2];
    [self.storeList addObject:store3];
    [self.storeList addObject:store4];
    [self.storeList addObject:store5];
    [self.storeList addObject:store6];
    [self.storeList addObject:store7];
}

-(void)loadData {
    //This method should load data from the server into the mutable array "storeList"
    
    //IMPLEMENT
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.storeList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    StoreTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StoreCell" forIndexPath:indexPath];
    
    Store *currentStore = [self.storeList objectAtIndex:indexPath.row];
    cell.storeLabel.text = currentStore.name;
    cell.waitLabel.text = [NSString stringWithFormat:@"%d minute wait", currentStore.waitTime];
    cell.confidenceLabel.text = [NSString stringWithFormat:@"%d percent confidence", currentStore.confidenceInterval];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
