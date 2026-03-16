// OP1: insertMany() — insert all 3 documents from sample_documents.json

db.products.insertMany([
{
  product_id: "E201",
  name: "iPhone 15",
  category: "Electronics",
  price: 75000,
  brand: "Apple",
  specifications: {
    screen_size: "6.1 inch",
    storage: "128GB",
    battery: "3349mAh"
  },
  warranty_years: 1,
  features: ["5G", "Face ID", "Wireless Charging"]
},

{
  product_id: "C301",
  name: "Men's Formal Blazer",
  category: "Clothing",
  price: 4999,
  brand: "Zara",
  size_options: ["S", "M", "L", "XL"],
  material: "Polyester Blend",
  colors: ["Black", "Navy Blue", "Grey"],
  gender: "Men"
},

{
  product_id: "G401",
  name: "Basmati Rice",
  category: "Groceries",
  price: 1200,
  brand: "IndiaGate",
  weight: "5kg",
  expiry_date: "2025-12-31",
  nutrition: {
    calories: 365,
    protein: "7.1g",
    carbohydrates: "80g"
  }
}
]);


// OP2- retrieve all Electronics products with price > 20000
db.products.find({category:"Electronics",price:{$gt:20000}});

// OP3- retrieve all Groceries expiring before 2025-01-01
db.products.find({category:"Groceries",expiry_date:{$lt:new Date("2025-01-01")}});

// OP4 add a "discount_percent" field to a specific product
db.products.updateOne({product_id:"E201"},{$set:{discount_percent:10}});

// OP5 create an index on category field and explain why
db.products.createIndex({category:1});