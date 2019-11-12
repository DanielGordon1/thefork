puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    stars:        5,
    chef:         'Dordon Gamsey'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    stars:        4,
    chef:         'Vincent LaFromage'
  },
  {
    name:         'Miznon',
    address:      'Melbs',
    description:  'Delicious, Israeli streed food, yum yum',
    stars:         5,
    chef:         'Gin Atkins'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
