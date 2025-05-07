//
//  ViewController.m
//  todomaster
//
// 
//

#import "ViewController.h"
#import "Fruits.h"
#import "FruitImageViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray<Fruits *> *fruits;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupFruits];
    [self setupNavigationBar];
    [self setupTableView];
    
}

- (void) setupTableView {
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cellId"];
}

- (void) setupNavigationBar {
    self.navigationItem.title = @"Fruits";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

- (void) setupFruits {
    self.fruits = NSMutableArray.new;
    
    Fruits *orange = Fruits.new;
    orange.name = @"orange";
    orange.numberOfFruits = @1;
    [self.fruits addObject:orange];
    
    Fruits *apple = Fruits.new;
    apple.name = @"apple";
    apple.numberOfFruits = @2;
    [self.fruits addObject:apple];
    
    Fruits *mango = Fruits.new;
    mango.name = @"strawberry";
    mango.numberOfFruits = @3;
    [self.fruits addObject:mango];
    
    Fruits *banana = Fruits.new;
    banana.name = @"banana";
    banana.numberOfFruits = @4;
    [self.fruits addObject:banana];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.fruits.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    Fruits *fruit = self.fruits[indexPath.row];
    cell.backgroundColor = UIColor.brownColor;
    cell.textLabel.textColor = UIColor.whiteColor;
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", fruit.numberOfFruits, fruit.name];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Fruits *selectedFruit = self.fruits[indexPath.row];
    
    FruitImageViewController *imageVC = [[FruitImageViewController alloc] init];
    imageVC.fruit = selectedFruit;
    imageVC.title = selectedFruit.name;
    
    [self.navigationController pushViewController:imageVC animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
 {
     CGFloat contentHeight = 44.0;
     CGFloat padding = 16.0;
     return contentHeight + padding;
 }
@end
