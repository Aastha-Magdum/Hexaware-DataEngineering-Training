db.createCollection("restaurants")
{ ok: 1 }
db.restaurants.insertMany([
{
restaurant_id: 1,
name: "Spice Hub",
city: "Hyderabad",
cuisine: "Indian",
rating: 4.5,
avg_order_value: 450,
delivery_available: true,
tags: ["biryani", "north indian", "family"],
contact: {
phone: "9876543210",
email: "spicehub@mail.com"
}
},
{
restaurant_id: 2,
name: "Pizza Corner",
city: "Bangalore",

cuisine: "Italian",
rating: 4.2,
avg_order_value: 600,
delivery_available: true,
tags: ["pizza", "fast food", "cheese"],
contact: {
phone: "9876543211",
email: "pizza@mail.com"
}
},
{
restaurant_id: 3,
name: "Green Bowl",
city: "Chennai",
cuisine: "Healthy",
rating: 4.7,
avg_order_value: 350,
delivery_available: false,
tags: ["salad", "vegan", "healthy"],
contact: {
phone: null,
email: "greenbowl@mail.com"
}
},
{
restaurant_id: 4,
name: "Burger Street",
city: "Hyderabad",
cuisine: "Fast Food",
rating: 3.9,
avg_order_value: 300,
delivery_available: true,
tags: ["burger", "fries", "fast food"],
contact: {
phone: "9876543213",
email: null
}
},
{
restaurant_id: 5,
name: "Royal Tandoor",
city: "Delhi",
cuisine: "Indian",
rating: 4.8,

avg_order_value: 800,
delivery_available: true,
tags: ["tandoor", "north indian", "premium"],
contact: {
phone: "9876543214",
email: "royal@mail.com"
}
},
{
restaurant_id: 6,
name: "Tea Tales",
city: "Pune",
cuisine: "Cafe",
rating: 4.1,
avg_order_value: 200,
delivery_available: false,
tags: ["tea", "snacks", "cafe"],
contact: {
phone: "9876543215",
email: "tea@mail.com"
}
},
{
restaurant_id: 7,
name: "Ocean Grill",
city: "Mumbai",
cuisine: "Seafood",
rating: 4.6,
avg_order_value: 900,
delivery_available: true,
tags: ["fish", "grill", "premium"],
contact: {
phone: "9876543216",
email: "ocean@mail.com"
}
},
{
restaurant_id: 8,
name: "Dosa Point",
city: "Chennai",
cuisine: "South Indian",
rating: 4.3,
avg_order_value: 250,
delivery_available: true,

tags: ["dosa", "idli", "breakfast"],
contact: {
phone: null,
email: null
}
}
])

// Question 1
db.restaurants.find()

// Question 2
db.restaurants.find(
    {},
    {
        _id: 0,
        name: 1,
        city: 1,
        cuisine: 1
    }
)

// Question 3
db.restaurants.find(
    {
        city: "Hyderabad"
    }
)

// Question 4
db.restaurants.find(
    {
        cuisine: "Indian"
    }
)

// Question 5
db.restaurants.find(
    {
        delivery_available: true
    }
)

// Question 6
db.restaurants.find(
    {
        rating: { $gt: 4.5 }
    }
)

// Question 7
db.restaurants.find(
    {
        avg_order_value: { $lt: 400 }
    }
)

// Question 8
db.restaurants.find(
    {
        rating: {
            $gte: 4.0,
            $lte: 4.7
        }
    }
)

// Question 9
db.restaurants.find(
    {
        avg_order_value: { $gte: 600 }
    }
)

// Question 10
db.restaurants.find(
    {
        city: "Hyderabad",
        delivery_available: true
    }
)

// Question 11
db.restaurants.find(
    {
        $or: [
            { city: "Chennai" },
            { cuisine: "Indian" }
        ]
    }
)

// Question 12
db.restaurants.find(
    {
        delivery_available: false
    }
)

// Question 13
db.restaurants.find({
    city: { $in: ["Hyderabad", "Delhi", "Mumbai"] }
})

// Question 14
db.restaurants.find({
    cuisine: { $in: ["Indian", "Italian", "Cafe"] }
})

// Question 15
db.restaurants.find({
    city: { $nin: ["Hyderabad", "Bangalore"] }
})

// Question 16
db.restaurants.find({
    name: /^P/
})

// Question 17
db.restaurants.find({
    name: /Point/
})

// Question 18
db.restaurants.find({
    cuisine: /Food/
})

// Question 19
db.restaurants.find({
    "contact.phone": null
})

// Question 20
db.restaurants.find({
    "contact.email": null
})

// Question 21
db.restaurants.find({
    $or: [
        { "contact.phone": null },
        { "contact.email": null }
    ]
})

// Q22
db.restaurants.find({
    tags: "premium"
})

// Q23
db.restaurants.find({
    tags: "fast food"
})

// Q24
db.restaurants.find({
    tags: { $all: ["north indian", "premium"] }
})

// Q25
db.restaurants.find().sort({
    rating: -1
})

// Q26
db.restaurants.find().sort({
    rating: -1
}).limit(3)

// Q27
db.restaurants.find().sort({
    avg_order_value: 1
})

// Q28
db.restaurants.find().sort({
    avg_order_value: -1
}).limit(2)

// Q29
db.restaurants.updateOne(
    { name: "Burger Street" },
    { $set: { rating: 4.0 } }
)

// Q30
db.restaurants.updateOne(
    { name: "Tea Tales" },
    { $set: { delivery_available: true } }
)

// Q31
db.restaurants.updateMany(
    {},
    { $set: { active: true } }
)

// Q32
db.restaurants.updateOne(
    { name: "Spice Hub" },
    { $push: { tags: "popular" } }
)

// Q33
db.restaurants.updateMany(
    {},
    { $unset: { active: "" } }
)

// Q34
db.restaurants.deleteOne({
    restaurant_id: 6
})

// Q35
db.restaurants.deleteMany({
    rating: { $lt: 4.0 }
})

// Q36
db.restaurants.countDocuments()

// Q37
db.restaurants.countDocuments({
    delivery_available: true
})

// Q38
db.restaurants.distinct("city")

// Q39
db.restaurants.distinct("cuisine")

// Q40
db.restaurants.aggregate([
    {
        $group: {
            _id: "$city",
            total_restaurants: { $sum: 1 }
        }
    }
])

// Q41
db.restaurants.aggregate([
    {
        $group: {
            _id: "$cuisine",
            total_restaurants: { $sum: 1 }
        }
    }
])

// Q42
db.restaurants.aggregate([
    {
        $group: {
            _id: "$cuisine",
            average_rating: { $avg: "$rating" }
        }
    }
])

// Q43
db.restaurants.aggregate([
    {
        $group: {
            _id: "$city",
            average_order_value: { $avg: "$avg_order_value" }
        }
    }
])

// Q44
db.restaurants.aggregate([
    {
        $group: {
            _id: "$cuisine",
            highest_avg_order_value: { $max: "$avg_order_value" }
        }
    }
])

// Q45
db.restaurants.aggregate([
    {
        $group: {
            _id: "$cuisine",
            total_restaurants: { $sum: 1 }
        }
    },
    {
        $match: {
            total_restaurants: { $gt: 1 }
        }
    }
])