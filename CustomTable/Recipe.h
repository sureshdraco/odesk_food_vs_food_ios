//
//  Recipe.h
//  RecipeApp
//
//  Created by Eswar on 19/10/14.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *portionsize; // portion size
@property (nonatomic, strong) NSString *image; // image filename of recipe
@property (nonatomic, strong) NSString *perhundered; // per 100 grams (3.5 oz)
@property (nonatomic, strong) NSArray *energycontent; // energycontent (3.5 oz)


@end
