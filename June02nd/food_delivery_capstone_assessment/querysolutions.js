// 1
db.customers.find();

// 2
db.restaurants.find();

// 3
db.customers.find(
    {},
    { _id: 0, name: 1, city: 1, membership: 1 }
);

// 4
db.customers.find({ city: "Hyderabad" });

// 5
db.customers.find({ membership: "Gold" });

// 6
db.restaurants.find({ rating: { $gt: 4.5 } });

// 7
db.orders.find({ order_amount: { $gt: 500 } });

// 8
db.orders.find({ order_status: "Delivered" });

// 9
db.orders.find({ order_status: "Cancelled" });

// 10
db.customers.find({ phone: null });

// 11
db.orders.find({
    order_amount: {
        $gte: 400,
        $lte: 700
    }
});

// 12
db.customers.find({
    city: {
        $in: ["Hyderabad", "Delhi", "Mumbai"]
    }
});

// 13
db.restaurants.find({
    cuisine: {
        $in: ["Indian", "Fast Food"]
    }
});

// 14
db.orders.find({
    "payment.status": {
        $ne: "Success"
    }
});

// 15
db.orders.find({ delivery_time_minutes: null });

// 16
db.orders.find({
    order_rating: {
        $gte: 4
    }
});

// 17
db.restaurants.find({
    city: {
        $nin: ["Bangalore", "Chennai"]
    }
});

// 18
db.orders.find({
    "items.item_name": "Biryani"
});

// 19
db.orders.find({
    "items.item_name": "Pizza"
});

// 20
db.orders.find({
    "items.quantity": {
        $gt: 1
    }
});

// 21
db.orders.find({
    "items.price": {
        $gt: 300
    }
});

// 22
db.orders.find(
    {},
    {
        _id: 0,
        order_id: 1,
        items: 1
    }
);

// 23
db.restaurants.find().sort({ rating: -1 });

// 24
db.restaurants.find()
    .sort({ rating: -1 })
    .limit(3);

// 25
db.orders.find().sort({ order_amount: -1 });

// 26
db.orders.find()
    .sort({ order_amount: -1 })
    .limit(2);

// 27
db.delivery_partners.find().sort({ rating: -1 });

// 28
db.customers.updateOne(
    { customer_id: 1 },
    {
        $set: {
            membership: "Platinum"
        }
    }
);

// 29
db.restaurants.updateOne(
    { restaurant_id: 104 },
    {
        $set: {
            rating: 4.1
        }
    }
);

// 30
db.orders.updateOne(
    { order_id: 1003 },
    {
        $set: {
            order_status: "Delivered"
        }
    }
);

// 31
db.orders.updateOne(
    { order_id: 1003 },
    {
        $set: {
            delivery_time_minutes: 45
        }
    }
);

// 32
db.customers.updateMany(
    {},
    {
        $set: {
            active: true
        }
    }
);

// 33
db.customers.updateMany(
    {},
    {
        $unset: {
            active: ""
        }
    }
);

// 34
db.orders.updateOne(
    { order_id: 1006 },
    {
        $push: {
            items: {
                item_name: "Curd Rice",
                quantity: 1,
                price: 120
            }
        }
    }
);

// 35
db.orders.deleteMany({
    order_status: "Cancelled"
});

// 36
db.restaurants.deleteMany({
    rating: {
        $lt: 4.0
    }
});

// 37
db.customers.countDocuments();

// 38
db.orders.countDocuments();

// 39
db.orders.countDocuments({
    order_status: "Delivered"
});

// 40
db.orders.countDocuments({
    "payment.status": "Failed"
});

// 41
db.customers.distinct("city");

// 42
db.restaurants.distinct("cuisine");

// 43
db.orders.distinct("payment.mode");

// 44
db.orders.aggregate([
    {
        $group: {
            _id: "$payment.mode",
            totalRevenue: {
                $sum: "$order_amount"
            }
        }
    }
]);

// 45
db.orders.aggregate([
    {
        $group: {
            _id: "$order_status",
            totalRevenue: {
                $sum: "$order_amount"
            }
        }
    }
]);

// 46
db.orders.aggregate([
    {
        $match: {
            order_status: "Delivered"
        }
    },
    {
        $group: {
            _id: null,
            avgDeliveryTime: {
                $avg: "$delivery_time_minutes"
            }
        }
    }
]);

// 47
db.orders.aggregate([
    {
        $group: {
            _id: "$customer_id",
            totalOrders: {
                $sum: 1
            },
            totalAmount: {
                $sum: "$order_amount"
            }
        }
    }
]);

// 48
db.orders.aggregate([
    {
        $group: {
            _id: "$restaurant_id",
            totalOrders: {
                $sum: 1
            },
            totalRevenue: {
                $sum: "$order_amount"
            }
        }
    }
]);

// 49
db.orders.aggregate([
    {
        $group: {
            _id: "$restaurant_id",
            averageRating: {
                $avg: "$order_rating"
            }
        }
    }
]);

// 50
db.orders.aggregate([
    {
        $group: {
            _id: "$customer_id",
            totalSpending: {
                $sum: "$order_amount"
            }
        }
    },
    {
        $match: {
            totalSpending: {
                $gt: 700
            }
        }
    }
]);

// 51
db.orders.aggregate([
    {
        $lookup: {
            from: "customers",
            localField: "customer_id",
            foreignField: "customer_id",
            as: "customer"
        }
    }
]);

// 52
db.orders.aggregate([
    {
        $lookup: {
            from: "restaurants",
            localField: "restaurant_id",
            foreignField: "restaurant_id",
            as: "restaurant"
        }
    }
]);

// 53
db.orders.aggregate([
    {
        $lookup: {
            from: "delivery_partners",
            localField: "partner_id",
            foreignField: "partner_id",
            as: "partner"
        }
    }
]);

// 54
db.orders.aggregate([
    {
        $lookup: {
            from: "customers",
            localField: "customer_id",
            foreignField: "customer_id",
            as: "customer"
        }
    },
    {
        $lookup: {
            from: "restaurants",
            localField: "restaurant_id",
            foreignField: "restaurant_id",
            as: "restaurant"
        }
    },
    {
        $lookup: {
            from: "delivery_partners",
            localField: "partner_id",
            foreignField: "partner_id",
            as: "partner"
        }
    }
]);