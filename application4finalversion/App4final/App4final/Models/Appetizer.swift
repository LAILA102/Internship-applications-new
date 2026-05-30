//
//  Appetizer.swift
//  App4final
//
//  Created by AUC on 26/05/2026.
//

import Foundation


struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}


struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Bruschetta",
                                           description: "Toasted bread topped with fresh tomatoes, garlic, and basil.",
                                           price: 7.99,
                                           imageURL: "image2",
                                           calories: 150,
                                           protein: 4,
                                           carbs: 20)
    
    static let appetizers = [
        Appetizer(id: 001, name: "Crispy Wontons", description: "Golden fried wontons served with a sweet chili dipping sauce.", price: 7.99, imageURL: "image5", calories: 210, protein: 6, carbs: 24),
        Appetizer(id: 002, name: "Shrimp Puff Pastry", description: "Flaky puff pastry cups filled with creamy shrimp and herb mixture.", price: 13.99, imageURL: "image9", calories: 180, protein: 10, carbs: 16),
        Appetizer(id: 003, name: "Taco Bites", description: "Crispy tortilla chips topped with seasoned beef, cheese, and sour cream.", price: 9.99, imageURL: "image3", calories: 320, protein: 14, carbs: 28),
        Appetizer(id: 004, name: "Bruschetta", description: "Toasted bread topped with olives, melted cheese, and fresh herbs.", price: 8.99, imageURL: "image4", calories: 160, protein: 5, carbs: 18),
        Appetizer(id: 005, name: "Melon Prosciutto Skewers", description: "Fresh cantaloupe and mozzarella wrapped in prosciutto on skewers.", price: 12.99, imageURL: "image6", calories: 150, protein: 9, carbs: 10),
        Appetizer(id: 006, name: "Caprese Skewers", description: "Cherry tomatoes, fresh mozzarella, and basil drizzled with balsamic glaze.", price: 10.99, imageURL: "image7", calories: 130, protein: 7, carbs: 8),
        Appetizer(id: 007, name: "Taco Cups", description: "Mini tortilla cups loaded with seasoned beef, cheese, lettuce, and tomato.", price: 11.99, imageURL: "image8", calories: 290, protein: 13, carbs: 26),
        Appetizer(id: 008, name: "Shrimp Stuffed Mushrooms", description: "Juicy mushrooms topped with guacamole and grilled shrimp.", price: 14.99, imageURL: "image2", calories: 200, protein: 16, carbs: 8),
        Appetizer(id: 009, name: "Spicy French Fries", description: "Crispy fries seasoned with smoky paprika and spicy seasoning blend.", price: 6.99, imageURL: "food-placeholder", calories: 380, protein: 5, carbs: 48),
        Appetizer(id: 010, name: "Deviled Eggs", description: "Classic deviled eggs topped with paprika and fresh dill.", price: 8.99, imageURL: "image1", calories: 120, protein: 8, carbs: 2)
    ]
}
