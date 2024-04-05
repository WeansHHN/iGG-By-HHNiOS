#import "IGGView.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIAlertView.h>
#import <UIKit/UIControl.h>
#import "Offset.h"
#import "mahoa.h"

#include <substrate.h>
#import "JRMemory.framework/Headers/MemScan.h"


//project by hhnios
//https://hhnios.github.io
//Địt mẹ con chó rách🐧

@interface IGGView()
@end
UIButton *closeButton;
UIView *menuView;
@implementation IGGView

#pragma mark -------------------------------------View-------------------------------------------

+ (void)load
{
//info




dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        IGGView *view = [IGGView View];
        [view show];
        [[[[UIApplication sharedApplication] windows]lastObject] addSubview:view];
//New Application Windows
      UIWindow*Window = [UIApplication sharedApplication].keyWindow;
//Open menu with 3 finger

  UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 2;      // MultiTouch
    tap.numberOfTouchesRequired = 3;   // Number finger touch
    [Window addGestureRecognizer:tap];
    [tap addTarget:self action:@selector(expand)]; // Check status
//}];

    });


}

+ (instancetype)View
{
    return [[IGGView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = NO;
  
    }
    return self;
}

- (void)show
{
    self.hidden = NO;

}
#pragma mark -------------------------------------Event-------------------------------------------

//Start creating menu
+ (void)expand {

     //New menu view
    UIWindow*mainWindow;
    mainWindow = [UIApplication sharedApplication].keyWindow;

      



UILabel *myLabel1 = [[UILabel alloc]
initWithFrame:CGRectMake(20, 325.5, 300, 30)];
myLabel1.textColor = [UIColor cyanColor];
myLabel1.font = [UIFont fontWithName:@"AvenirNext-HeavyItalic" size:13];
myLabel1.numberOfLines = 1;
myLabel1.text = [NSString stringWithFormat:@"‍Weans"];
myLabel1.textAlignment = NSTextAlignmentCenter;
myLabel1.shadowColor = [UIColor whiteColor];
myLabel1.shadowOffset = CGSizeMake(0.70,0.70); 
[mainWindow addSubview:myLabel1];



    menuView = [[UIView alloc] 
    initWithFrame:CGRectMake(210, 90, 300, 190)];//menu size height
    menuView.backgroundColor=[UIColor colorWithRed: 0.00 green: 0.00 blue: 0.00 alpha: 0.60];//Color
    menuView.layer.cornerRadius = 15;//Radious corner
    menuView.hidden=NO;//whether to hide
    [mainWindow addSubview:menuView];  
    //Create a close menu button
   closeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    closeButton.frame = CGRectMake(265, 2, 30, 30);
    [closeButton setTitle:@"❌" forState:UIControlStateNormal];
    [closeButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(closeMenu) forControlEvents:UIControlEventTouchUpInside];
    closeButton.hidden = NO; 
    [menuView addSubview:closeButton];
 

UILabel *myLabel2 = [[UILabel alloc]
initWithFrame:CGRectMake(65, 1, 170, 30)];
myLabel2.textColor = [UIColor cyanColor];
myLabel2.font = [UIFont systemFontOfSize:17]; 
myLabel2.numberOfLines = 1;
myLabel2.text = [NSString stringWithFormat:@"‍ℙ𝕌𝔹𝔾 𝕍ℕ𝔾"];
myLabel2.textAlignment = NSTextAlignmentCenter;
myLabel2.shadowColor = [UIColor colorWithRed: 0.9686 green: 0.3961 blue: 0.8549 alpha: 1];
myLabel2.shadowOffset = CGSizeMake(0.70,0.70); 
[mainWindow addSubview:myLabel2];
 [menuView addSubview: myLabel2];


UILabel *myLabel3 = [[UILabel alloc]
initWithFrame:CGRectMake(40, 13, 170, 30)];
//myLabel3.textColor = [UIColor cyanColor];
myLabel3.font = [UIFont systemFontOfSize:8]; 
myLabel3.numberOfLines = 1;
//myLabel3.text = [NSString stringWithFormat:@"‍Copyright © by Ninh"];
myLabel3.text = [NSString stringWithFormat:@"‍Copyright by Ninh (HHNiOS)"];
myLabel3.textAlignment = NSTextAlignmentCenter;
myLabel3.textColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0.60];
myLabel3.shadowOffset = CGSizeMake(0.70,0.70); 
[mainWindow addSubview:myLabel3];
 [menuView addSubview: myLabel3];
[UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
    CGRect frame = myLabel3.frame;
    frame.origin.x += 50;
    myLabel3.frame = frame;
} completion:nil];




UILabel *myLabel4 = [[UILabel alloc]
initWithFrame:CGRectMake(0, 70, 300, 80)];
//myLabel3.textColor = [UIColor cyanColor];
myLabel4.font = [UIFont systemFontOfSize:14]; 
myLabel4.numberOfLines = 1;
myLabel4.text = [NSString stringWithFormat:@"‍Tại sao lại chơi game bằng chân,"];
myLabel4.textAlignment = NSTextAlignmentCenter;
myLabel4.textColor = [UIColor whiteColor];
myLabel4.shadowOffset = CGSizeMake(0.70,0.70); 
[mainWindow addSubview:myLabel4];
 [menuView addSubview: myLabel4];


UILabel *myLabel5 = [[UILabel alloc]
initWithFrame:CGRectMake(34, 89, 230, 80)];
//myLabel5.textColor = [UIColor cyanColor];
myLabel5.font = [UIFont systemFontOfSize:14]; 
myLabel5.numberOfLines = 1;
myLabel5.text = [NSString stringWithFormat:@"‍Làm thế để làm gì vậy bro?"];
myLabel5.textAlignment = NSTextAlignmentCenter;
myLabel5.textColor = [UIColor whiteColor];
myLabel5.shadowOffset = CGSizeMake(0.70,0.70); 
[mainWindow addSubview:myLabel5];
 [menuView addSubview: myLabel5];

UILabel *myLabel6 = [[UILabel alloc]
initWithFrame:CGRectMake(104, 115, 230, 80)];
//myLabel6.textColor = [UIColor cyanColor];
myLabel6.font = [UIFont systemFontOfSize:15]; 
myLabel6.numberOfLines = 1;
myLabel6.text = [NSString stringWithFormat:@"‍-𝕿𝖆̂𝖒 𝖘𝖚̛̣ 𝖈𝖚̉𝖆 𝕳𝖆𝖈𝖐-"];
myLabel6.textAlignment = NSTextAlignmentCenter;
myLabel6.textColor = [UIColor redColor];
myLabel6.shadowOffset = CGSizeMake(0.70,0.70); 
[mainWindow addSubview:myLabel6];
 [menuView addSubview: myLabel6];




       //Define to store multiple data


     NSUserDefaults*defaults = [NSUserDefaults standardUserDefaults];
    [defaults synchronize];

    //添加开关功能
    UISwitch* SW1 = [[UISwitch alloc] initWithFrame:CGRectMake(80, 53, 51, 31)];
    SW1.thumbTintColor = [UIColor cyanColor];
    SW1.onTintColor = [UIColor colorWithRed: 0.9686 green: 0.3961 blue: 0.8549 alpha: 1];
    SW1.tintColor = [UIColor clearColor];
    [SW1 addTarget:self action:@selector(feature1:)  forControlEvents:UIControlEventValueChanged];
    [menuView addSubview:SW1];
   //定义开关默认开启
   BOOL sw1 = [defaults boolForKey:@"sw1"];
    if (sw1 == YES) { [SW1 setOn:YES];   } 
    else { [SW1 setOn:NO];     }
      UILabel* AL1 = [[UILabel alloc] initWithFrame:CGRectMake(141, 48, 100, 40)];
      [AL1 setText:@"ᴬᴺᵀᴱᴺᴬ"];
      [AL1 setTextColor:[UIColor whiteColor] ];
      [AL1 setBackgroundColor:[UIColor clearColor]];
       AL1.font = [UIFont systemFontOfSize:18];
      [menuView addSubview:AL1];
[UIView animateWithDuration:0.5 // Thời gian một chu kỳ nhấp nháy là 0.5 giây
                      delay:0.0 // Không có độ trễ
                    options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse // Lặp lại hiệu ứng và đảo ngược khi kết thúc
                 animations:^{
                     AL1.alpha = 0.5; // Thay đổi alpha từ 1.0 (hiển thị đầy đủ) sang 0.0 (nó sẽ ẩn hoàn toàn)
                 }
                 completion:nil];

}

  
//无后
+ (void)feature1:(UISwitch *)SW1 {
    
    if ([SW1 isOn]) {
//开启
 
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    [defaults setBool:YES forKey:@"sw1"];

    [defaults synchronize];


JRMemoryEngine engine = JRMemoryEngine(mach_task_self());
        AddrRange range = (AddrRange){0x00000000,0x200000000};
        uint64_t search = -4410762456449774017;
        engine.JRScanMemory(range, &search, JR_Search_Type_ULong);
        uint64_t search1 = 5360320512;
        engine.JRNearBySearch(0x20, &search1, JR_Search_Type_ULong);
        uint64_t search2 = 5360320512;
        engine.JRScanMemory(range, &search2, JR_Search_Type_ULong);
        vector<void*>results = engine.getAllResults();
        uint64_t modify = 5443796992;
        uint64_t modifyAllResults = 5443796992;
        for(int i = 0;i < results.size();i++){
    if(i == 2&&4&&6)engine.JRWriteMemory((unsigned long long)(results[i]),&modify,JR_Search_Type_ULong);
            engine.JRWriteMemory((unsigned long long)(results[i]),&modifyAllResults,JR_Search_Type_ULong);
        }

        } else {


    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    [defaults setBool:NO forKey:@"sw1"];

    [defaults synchronize];



}}

//创建关闭菜单
+ (void)closeMenu { menuView.hidden = YES; } 




@end

