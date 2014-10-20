//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Eswar on 19/10/14.
//

#import "RecipeTableViewController.h"
#import "RecipeTableCell.h"
#import "RecipeDetailViewController.h"
#import "Recipe.h"

@interface RecipeTableViewController ()

@end

@implementation RecipeTableViewController
{
    NSArray *recipes;
    NSArray *searchResults;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Initialize the recipes array
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Bagel (1 average)";
    recipe1.portionsize= @"140 cals (45g)";
    recipe1.perhundered= @"310 cals";
    recipe1.image = @"Bagel.jpg";
    recipe1.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 140 cals (45g)", @"￼per 100 grams (3.5 oz) : 310 cals", @"￼ ￼ energy content : Medium", nil];
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Biscuit digestives";
    recipe2.portionsize= @"86 cals (per biscuit)";
    recipe2.perhundered= @"480 cals";
    recipe2.image = @"Biscuit_digestives.jpg";
    recipe2.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 86 cals (per biscuit)", @"￼per 100 grams (3.5 oz) : 480 cals", @"￼ ￼ energy content : High", nil];
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Jaffa cake";
    recipe3.portionsize= @"48 cals (per biscuit)";
    recipe3.perhundered= @"370 cals";
    recipe3.image = @"Jaffa_cake.jpg";
    recipe3.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 48 cals (per biscuit)", @"￼per 100 grams (3.5 oz) : 370 cals", @"￼ ￼ energy content : Med-High", nil];
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Bread white (thick slice)";
    recipe4.portionsize= @"96 cals (1 slice 40g)";
    recipe4.perhundered= @"240 cals";
    recipe4.image = @"Bread_white(thick_slice).jpg";
    recipe4.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 96 cals (1 slice 40g)", @"￼per 100 grams (3.5 oz) : 240 cals", @"￼ ￼ energy content : Medium", nil];
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Bread wholemeal (thick)";
    recipe5.portionsize= @"88 cals (1 slice 40g)";
    recipe5.perhundered= @"220 cals";
    recipe5.image = @"Bread_wholemeal(thick).jpg";
    recipe5.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 88 cals (1 slice 40g)", @"￼per 100 grams (3.5 oz) : 220 cals", @"￼ ￼ energy content : Low-med", nil];
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Chapatis";
    recipe6.portionsize= @"250 cals";
    recipe6.perhundered= @"300 cals";
    recipe6.image = @"Chapatis.jpg";
    recipe6.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 250 cals", @"￼per 100 grams (3.5 oz) : 300 cals", @"￼ ￼ energy content : Medium", nil];
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"Cornflakes";
    recipe7.portionsize= @"130 cals (35g)";
    recipe7.perhundered= @"370 cals";
    recipe7.image = @"Cornflakes.jpg";
    recipe7.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 130 cals (35g)", @"￼per 100 grams (3.5 oz) : 370 cals", @"￼ ￼ energy content : Med-High", nil];
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Crackerbread";
    recipe8.portionsize= @"17 cals per slice";
    recipe8.perhundered= @"325 cals";
    recipe8.image = @"Crackerbread.jpg";
    recipe8.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 17 cals per slice", @"￼per 100 grams (3.5 oz) : 325 cals", @"￼ ￼ energy content : Low Calorie", nil];
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Cream crackers";
    recipe9.portionsize= @"35 cals (per cracker)";
    recipe9.perhundered= @"440 cals";
    recipe9.image = @"Cream_crackers.jpg";
    recipe9.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 35 cals (per cracker)", @"￼per 100 grams (3.5 oz) : 440 cals", @"￼ ￼ energy content : Low / portion", nil];
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Crumpets";
    recipe10.portionsize= @"93 cals (per crumpet)";
    recipe10.perhundered= @"198 cals";
    recipe10.image = @"Crumpets.jpg";
    recipe10.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 93 cals (per crumpet)", @"￼per 100 grams (3.5 oz) : 198 cals", @"￼ ￼ energy content : Low-Med", nil];
    
    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"Flapjacks basic fruit mix";
    recipe11.portionsize= @"320 cals";
    recipe11.perhundered= @"500 cals";
    recipe11.image = @"Flapjacks_basic_fruit_mix.jpg";
    recipe11.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 320 cals", @"￼per 100 grams (3.5 oz) : 500 cals", @"￼ ￼ energy content : High", nil];
    
    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"Macaroni (boiled)";
    recipe12.portionsize= @"238 cals (250g)";
    recipe12.perhundered= @"95 cals";
    recipe12.image = @"Macaroni(boiled).jpg";
    recipe12.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 238 cals (250g)", @"￼per 100 grams (3.5 oz) : 95 cals", @"￼ ￼ energy content : Low calorie", nil];
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"Muesli";
    recipe13.portionsize= @"195 cals (50g)";
    recipe13.perhundered= @"390 cals";
    recipe13.image = @"Muesli.jpg";
    recipe13.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 195 cals (50g)", @"￼per 100 grams (3.5 oz) : 390 cals", @"￼ ￼ energy content : Med-high", nil];
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"Naan bread (normal)";
    recipe14.portionsize= @"300 cals (small plate size)";
    recipe14.perhundered= @"320 cals";
    recipe14.image = @"Naan_bread(normal).jpg";
    recipe14.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 300 cals (small plate size)", @"￼per 100 grams (3.5 oz) : 320 cals", @"￼ ￼ energy content : Medium", nil];
    
    Recipe *recipe15 = [Recipe new];
    recipe15.name = @"Noodles (boiled)";
    recipe15.portionsize= @"175 cals (250g)";
    recipe15.perhundered= @"70 cals";
    recipe15.image = @"Noodles(boiled).jpg";
    recipe15.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 175 cals (250g)", @"￼per 100 grams (3.5 oz) : 70 cals", @"￼ ￼ energy content : Low calorie", nil];
    
    Recipe *recipe16 = [Recipe new];
    recipe16.name = @"Pasta ( normal boiled )";
    recipe16.portionsize= @"330 cals (300g)";
    recipe16.perhundered= @"110 cals";
    recipe16.image = @"Pasta(normal boiled).jpg";
    recipe16.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 330 cals (300g)", @"￼per 100 grams (3.5 oz) : 110 cals", @"￼ ￼ energy content : Low calorie", nil];
    
    Recipe *recipe17 = [Recipe new];
    recipe14.name = @"Pasta (wholemeal boiled )";
    recipe14.portionsize= @"315 cals (300g)";
    recipe14.perhundered= @"105 cals";
    recipe14.image = @"Pasta(wholemeal boiled).jpg";
    recipe14.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 315 cals (300g)", @"￼per 100 grams (3.5 oz) : 105 cals", @"￼ ￼ energy content : Low calorie", nil];
    
    Recipe *recipe18 = [Recipe new];
    recipe15.name = @"Porridge oats (with water)";
    recipe15.portionsize= @"193 cals (350g)";
    recipe15.perhundered= @"55 cals";
    recipe15.image = @"Porridge_oats(with water).jpg";
    recipe15.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 193 cals (350g)", @"￼per 100 grams (3.5 oz) : 55 cals", @"￼ ￼ energy content : Low calorie", nil];
    
    Recipe *recipe19 = [Recipe new];
    recipe16.name = @"Potatoes** (roast)";
    recipe16.portionsize= @"420 cals (300g)";
    recipe16.perhundered= @"140 cals";
    recipe16.image = @"Pasta(normal boiled).jpg";
    recipe16.energycontent = [NSArray arrayWithObjects:@"￼Portion size : 420 cals (300g)", @"￼per 100 grams (3.5 oz) : 140 cals", @"￼ ￼ energy content : Potatoes(roast)", nil];

    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16,recipe17, recipe18, recipe19,  nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
        
    } else {
        return [recipes count];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 71;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomTableCell";
    RecipeTableCell *cell = (RecipeTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[RecipeTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Display recipe in the table cell
    Recipe *recipe = nil;
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        recipe = [searchResults objectAtIndex:indexPath.row];
    } else {
        recipe = [recipes objectAtIndex:indexPath.row];
    }
    
    cell.nameLabel.text = recipe.name;
    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
    cell.prepTimeLabel.text = recipe.portionsize;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        NSIndexPath *indexPath = nil;
        Recipe *recipe = nil;
        
        if (self.searchDisplayController.active) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            recipe = [searchResults objectAtIndex:indexPath.row];
        } else {
            indexPath = [self.tableView indexPathForSelectedRow];
            recipe = [recipes objectAtIndex:indexPath.row];
        }
        
        RecipeDetailViewController *destViewController = segue.destinationViewController;
        destViewController.recipe = recipe;
    }
}

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
    searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}


@end
