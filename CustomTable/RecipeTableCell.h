//
//  RecipeTableCell.h
//  RecipeApp
//
//  Created by Eswar on 19/10/14.
//

#import <UIKit/UIKit.h>

@interface RecipeTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
