const kGetDummyJson = {
  "type": "screen",
  "version": 1,
  "props": {"title": "Home"},
  "children": [
    {
      "type": "section",
      "props": {
        "title": "Recommended for you",
        "scrollDirection": "vertical",
        "margin": 16,
      },
      "children": [
        {
          "type": "grid",
          "props": {"columns": 2, "gap": 8.0},
          "children": [
            {
              "type": "product_card",
              "props": {
                "id": "p1",
                "name": "Running Shoes",
                "price": 79.99,
                "imageUrl": "https://example.com/shoes.jpg",
                "colorToken": "secondary",
                "textStyle": "body",
              },
            },
            {
              "type": "product_card",
              "props": {
                "id": "p2",
                "name": "Sport Headphones",
                "price": 59.99,
                "imageUrl": "https://example.com/headphones.jpg",
                "colorToken": "success",
                "textStyle": "body",
              },
            },
          ],
        },
      ],
    },
    {
      "type": "section",
      "props": {"title": "Special Offer", "margin": 16},
      "children": [
        {
          "type": "banner",
          "props": {
            "headline": "Weekend Deals",
            "subtitle": "Up to 40% off selected items",
            "colorToken": "secondary",
            "textStyle": "heading1",
            "ctaText": "Shop now",
          },
        },
      ],
    },
  ],
};

// const kGetDummyJson = {
//   "type": "screen",
//   "version": 1,
//   "props": {"title": "Home"},
//   "children": [
//     {
//       "type": "banner",
//       "props": {
//         "headline": "Weekend Deals",
//         "subtitle": "Up to 40% off",
//         "ctaText": "Shop now",
//         "colorToken": "primary",
//       },
//     },
//     {
//       "type": "section",
//       "props": {"title": "Recommended for you"},
//       "children": [
//         {
//           "type": "product_card",
//           "props": {
//             "id": "p1",
//             "name": "Running Shoes",
//             "price": 79.99,
//             "imageUrl": "https://example.com/shoe.png",
//           },
//         },
//       ],
//     },
//   ],
// };
