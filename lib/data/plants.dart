class Plant {
  final String image,
      thumb,
      name,
      type,
      price,
      description,
      humidity,
      height,
      temperature,
      size,
      difficulty;

  Plant({
    required this.image,
    required this.thumb,
    required this.name,
    required this.type,
    required this.price,
    required this.description,
    required this.humidity,
    required this.height,
    required this.temperature,
    required this.size,
    required this.difficulty,
  });
}

List<Plant> plants = [
  Plant(
    image: 'assets/images/plant-one.png',
    thumb: 'assets/images/plant-one-small.png',
    name: 'Sanseviera',
    type: 'Indoor',
    size: 'Medium',
    difficulty: 'Easy',
    price: r'$20.00',
    description:
        'Sanseviera is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria.',
    humidity: '50%',
    height: '“7,2”',
    temperature: '20-25 C',
  ),
  Plant(
    image: 'assets/images/plant-two.png',
    thumb: 'assets/images/plant-two-small.png',
    name: 'Philodendron',
    type: 'Indoor',
    size: 'Medium',
    difficulty: 'Easy',
    price: r'$20.00',
    description:
        'Philodendron is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria.',
    humidity: '50%',
    height: '“7,2”',
    temperature: '20-25 C',
  ),
  Plant(
    image: 'assets/images/plant-one-small.png',
    thumb: 'assets/images/plant-one-small.png',
    name: 'Aloe vera',
    type: 'Indoor',
    size: 'Medium',
    difficulty: 'Easy',
    price: r'$10.00',
    description:
        'Aloe vera is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria.',
    humidity: '50%',
    height: '“7,2”',
    temperature: '20-25 C',
  ),
  Plant(
    image: 'assets/images/plant-two-small.png',
    thumb: 'assets/images/plant-two-small.png',
    name: 'Cactus',
    type: 'Indoor',
    size: 'Medium',
    difficulty: 'Easy',
    price: r'$10.00',
    description:
        'Cactus is a species of flowering plant in the family Asparagaceae, native to tropical West Africa from Nigeria.',
    humidity: '50%',
    height: '“7,2”',
    temperature: '20-25 C',
  ),
];
