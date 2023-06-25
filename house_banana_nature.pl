#!/usr/bin/perl -w

use strict;
use warnings;

my %menu;
my ($lunch, $dinner);

# Breakfast
$menu{'Breakfast'} = {
    'Fruit Salad' => 'Organic fruits, yogurt, and honey',
    'Smoothie Bowl' => 'Frozen berries, banana, and almond milk',
    'Toast & Egg' => 'Buttered toast, poached egg, and fresh fruit'
};

# Lunch
$lunch = {
    'Grilled Chicken' => 'Grilled chicken, quinoa, and steamed vegetables',
    'Taco Salad' => 'Grilled vegetables, black beans, and crispy tortillas',
    'Cheeseburger' => 'Grass-fed beef, lettuce, and tomatoes'
};
$menu{'Lunch'} = $lunch;

# Dinner
$dinner = {
    'Grilled Fish' => 'Grilled fish, sweet potato, and steamed vegetables',
    'Vegetable Curry' => 'Curry, brown rice, and sauteed vegetables',
    'Veggie Burrito' => 'Brown rice, black beans, and grilled vegetables'
};
$menu{'Dinner'} = $dinner;

sub show_menu {
    my $meal = shift;
    print "\n$meal\n";
    print "-" x length($meal);
    print "\n";
    foreach my $item (keys %{$menu{$meal}}) {
        print "$item: $menu{$meal}{$item}\n";
    }
    print "\n";
}

# Show menu
foreach my $item (keys %menu) {
    show_menu($item);
}