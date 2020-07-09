puts 'Destroying flats...'
Flat.destroy_all

puts 'Creating flats...'
Flat.create(address: '16 Villa Gaudelet, Paris', name: 'Le Wagon HQ')
Flat.create(address: '2-11-3 Meguro, Tokyo 153-0063', name: 'Le Wagon Tokyo')
Flat.create(address: 'Doi Inthanon, Thailand', name: "Chi's Zoom background")
Flat.create(address: 'Kuala Lumpur, Malaysia', name: 'Pins somewhere around there?')