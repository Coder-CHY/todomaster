//
//  FruitsViewController.m
//  todomaster
//
//
//

#import "FruitImageViewController.h"

@interface FruitImageViewController ()

@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation FruitImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    [self setupImageView];
}

- (void) setupUI {
    self.view.backgroundColor = UIColor.whiteColor;
    self.title = self.fruit.name.capitalizedString;
}

- (void) setupImageView {
    self.imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    NSString *imageName = [NSString stringWithFormat:@"%@.jpg", self.fruit.name.lowercaseString];
    self.imageView.image = [UIImage imageNamed:imageName];
    [self.view addSubview:self.imageView];
}

@end
