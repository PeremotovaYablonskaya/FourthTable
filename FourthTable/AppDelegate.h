//
//  AppDelegate.h
//  FourthTable
//
//  Created by fpmi on 03.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "PYBasket.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) PYBasket *basket;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

