//
//  ViewController.m
//  font
//
//  Created by mac on 2020/10/15.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    NSArray *familyNames = [UIFont familyNames];
//       for (NSString *failyName in familyNames) {
////           NSLog(@"----failyName-------%@\n",failyName);
//           NSArray *fontNames = [UIFont fontNamesForFamilyName:failyName];
//           for(NSString *fontName in fontNames){
//               NSLog(@"fontName----%@\n",fontName);
//      }
//    }
    
    
        for (NSString *familyname in [UIFont familyNames])
        {
            NSLog(@"family = %@",familyname);
            for(NSString *fontName in [UIFont fontNamesForFamilyName:familyname])
            {
                NSLog(@"fontName = %@",fontName);
            }
            NSLog(@"\n\n");
        }
    
    /*
      family = ChanYuMengXinTi
      fontName = CYMXT--GB1-0
     
     family = FZZangYiHanTiS-R-GB
     fontName = FZZYHTJW--GB1-0
     
     family = FZHuangTingJianXingShuJF
     fontName = FZHUANGTJXSJF--GBK1-0
     */
    
    
    
    
    UILabel * topLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, 400, 120)];
    topLabel.font = [UIFont fontWithName:@"CYMXT--GB1-0" size:18];
    topLabel.numberOfLines = 0;
    topLabel.text = @"qwertyuiop\nQWERTYUIOP\n0123456789\n唐人街的乞丐----更换字体";
    [self.view addSubview:topLabel];
    
    UILabel * midLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 250, 400, 120)];
    midLabel.numberOfLines = 0;
    midLabel.text = @"qwertyuiop\nQWERTYUIOP\n0123456789\n唐人街的乞丐----更换字体";
    midLabel.font = [UIFont fontWithName:@"FZZYHTJW--GB1-0" size:18];
    [self.view addSubview:midLabel];
    
    UILabel * btmLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 400, 400, 120)];
    btmLabel.numberOfLines = 0;
    btmLabel.text = @"qwertyuiop\nQWERTYUIOP\n0123456789\n唐人街的乞丐----更换字体";
    btmLabel.font = [UIFont fontWithName:@"FZHUANGTJXSJF--GBK1-0" size:18];
    [self.view addSubview:btmLabel];
}


@end
