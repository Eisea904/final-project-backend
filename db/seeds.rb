# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shop.destroy_all
Shop.reset_pk_sequence
Item.destroy_all
Item.reset_pk_sequence
InventoryItem.destroy_all
InventoryItem.reset_pk_sequence

array_of_shops = [
    {
      name: "The Party",
      image: "http://5e.tools/img/adventure/CoS/Ireena%20Kolyana.jpg?v=1.114.1",
      bio: "Add session notes here"
    },
    {
      name: "3 Non Blondes",
      image: "http://5e.tools/img/adventure/CoS/Morgantha.jpg?v=1.114.1",
      bio: "Just three nice women who run an orphanage and sell pastries, definitely not a witch coven."
    },
    {
      name: "Die Biere bie Berez",
      image: "http://preview.redd.it/vu84ig2as0351.jpg?auto=webp&s=e09af868537b2641827020faa3cdbb6b747a5bef"
    },
    {
      name: "Odd's Ends",
      bio: "Formerly 'Bildrath's Mercantile'",
      image: "http://1.bp.blogspot.com/-O203XaPYvlo/VAvnLz3bo6I/AAAAAAAACXQ/8xv37bonmwQ/s1600/pharmacy_by_realnam-d6rvlo6.jpg"
    },
    {
      name: "Blood of the Vine Tavern",
      image: "http://5e.tools/img/adventure/CoS/Ismark-the-Lesser.jpg?v=1.114.1"
    },
    {
      name: "A Mary Bed and Breakfast",
      image: "http://5e.tools/img/adventure/CoS/Mad%20Mary.jpg?v=1.114.1"
    },
    {
      name: "Church of the Morning Lord: Father Donavich",
      image: "http://5e.tools/img/adventure/CoS/Donavich.jpg?v=1.114.1"
    }
]

    Shop.create(array_of_shops)

array_of_items = [
    {
      item_name: "Chest",
      description: "PHB153, 4'x3'x3', could be left locked in your room with important items.  Protect or hide it maybe? ... Monster Hunter's Pack, Diplomat's Pack"
    },
    {
      item_name: "Crowbar",
      description: "PHB151, Break open or break locks, jamb door... Monster Hunter's Pack, Burglar's Pack, Dungeoneer's Pack",
    },
    {
      item_name: "Backpack",
      description: "PHB153... Burglar's Pack, Dungeoneer's Pack, Entertainer's Pack, Explorer's Pack, Priest's Pack, Scholar's Pack",
      weight: 5,
      cost: 2
    },
    {
      item_name: "Bag of 1,000 Ball Bearings",
      description: "PHB151, 10' square area, DC 10 Dex or fall prone, A creature moving through the area at half speed doesn't need to make the saving throw... Burglar's Pack",
      weight: 2,
      cost: 1
    },
    {
      item_name: "10 Feet of String",
      description: "... Burglar's Pack PHB151"
    },
    {
      item_name: "Bell",
      description: "PHB150... Burglar's Pack",
      cost: 1
    },
    {
      item_name: "Candle",
      description: "PHB151, 1 hour a candle sheds bright light in a 5-foot radius and dim light for an additional 5 feet... Burglar's Pack x5, Entertainer's Pack x5, Priest's Pack x10"
    }
]

    Item.create(array_of_items)

array_of_inventory_items = [
    {
      shop_id: 1,
      item_id: 1
    },
    {
      shop_id: 1,
      item_id: 2
    },
    {
      shop_id: 1,
      item_id: 3
    },
    {
      shop_id: 2,
      item_id: 4
    },
    {
      shop_id: 2,
      item_id: 5
    },
    {
      shop_id: 2,
      item_id: 6
    }

]

  InventoryItem.create(array_of_inventory_items)