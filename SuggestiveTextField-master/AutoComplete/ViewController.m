//
//  ViewController.m
//  
//
//  Created by Eswar on 19/10/14.
//


#import "ViewController.h"

@interface ViewController ()

@property(assign) IBOutlet SuggestiveTextField *textField;

@end

@implementation ViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    
    //Defining suggestions to use
    NSArray *array = @[@"Bagel(1 average)",@"Biscuit digestives",@"Jaffa cake",@"Bread white (thick slice)",@"Bread wholemeal (thick)",@"Chapatis",@"Cornflakes",@"Crackerbread",@"Cream crackers",@"Crumpets",@"Flapjacks basic fruit mix",@"Macaroni (boiled)",@"Muesli",@"Naan bread (normal)",@"Noodles (boiled)",@"Pasta ( normal boiled )",@"Pasta (wholemeal boiled )",@"Porridge oats (with water)",@"Potatoes** (boiled)",@"Potatoes** (roast)",@"Rice (white boiled)",@"Rice (egg-fried)",@"Rice ( Brown )",@"Rice cakes",@"Ryvita Multi grain",@"Ryvita + seed & Oats",@"Spaghetti (boiled)"];

    //Assigning to searchfield
    [_textField setSuggestions:array];

}



@end
