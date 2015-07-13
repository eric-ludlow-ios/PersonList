//
//  PersonDetailViewController.m
//  PersonList
//
//  Created by Rutan on 7/13/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PersonDetailViewController.h"
#import "Person.h"

@interface PersonDetailViewController ()

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *phoneLabel;
@property (nonatomic, strong) IBOutlet UILabel *jobLabel;

@end

@implementation PersonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateWithPerson:self.person];
    
}

- (void)updateWithPerson:(Person *)person {
    
    self.nameLabel.text = person.name;
    self.phoneLabel.text = person.phoneNumber;
    self.jobLabel.text = person.job;
}

- (void)setPerson:(Person *)person {
    _person = person;
    [self updateWithPerson:person];
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
