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

const kGetDummySheetJson = {
  "type": "form",
  "version": 1,
  "props": {
    "title": "Filter Products",
    "submitButtonLabel": "Apply Filters",
    "resetButtonLabel": "Reset",
  },
  "children": [
    {
      "type": "section",
      "props": {"title": "Price Range"},
      "children": [
        {
          "type": "slider",
          "props": {
            "field": "priceMin",
            "label": "Min price",
            "min": 0.0,
            "max": 1000.0,
            "step": 10.0,
          },
        },
        {
          "type": "slider",
          "props": {
            "field": "priceMax",
            "label": "Max price",
            "min": 0.0,
            "max": 1000.0,
            "step": 10.0,
          },
        },
      ],
    },
    {
      "type": "section",
      "props": {"title": "Category"},
      "children": [
        {
          "type": "toggle",
          "props": {"field": "isMen", "label": "Men", "group": "category"},
        },
        {
          "type": "toggle",
          "props": {"field": "isWomen", "label": "Women", "group": "category"},
        },
      ],
    },
    {
      "type": "section",
      "props": {"title": "Color"},
      "children": [
        {
          "type": "chip_group",
          "props": {"field": "colors", "multiple": true},
          "children": [
            {
              "type": "chip",
              "props": {"value": "red", "label": "Red", "colorHex": "#FF0000"},
            },
            {
              "type": "chip",
              "props": {
                "value": "blue",
                "label": "Blue",
                "colorHex": "#0000FF",
              },
            },
            {
              "type": "chip",
              "props": {
                "value": "green",
                "label": "Green",
                "colorHex": "#00FF00",
              },
            },
          ],
        },
      ],
    },
  ],
};
// const getDummySheetJson = {
//   "type": "form",
//   "version": 1,
//   "props": {"title": "Filter Products", "submitButtonLabel": "Apply Filters"},
//   "children": [
//     {
//       "type": "section",
//       "props": {"title": "Price Range"},
//       "children": [
//         {
//           "type": "slider",
//           "props": {
//             "field": "priceMin",
//             "label": "Min price",
//             "min": 0,
//             "max": 1000,
//             "step": 10,
//           },
//         },
//         {
//           "type": "slider",
//           "props": {
//             "field": "priceMax",
//             "label": "Max price",
//             "min": 0,
//             "max": 1000,
//             "step": 10,
//           },
//         },
//       ],
//     },
//     {
//       "type": "section",
//       "props": {"title": "Category"},
//       "children": [
//         {
//           "type": "toggle",
//           "props": {"field": "isMen", "label": "Men", "group": "category"},
//         },
//         {
//           "type": "toggle",
//           "props": {"field": "isWomen", "label": "Women", "group": "category"},
//         },
//       ],
//     },
//     {
//       "type": "section",
//       "props": {"title": "Color"},
//       "children": [
//         {
//           "type": "chip_group",
//           "props": {"field": "colors", "multiple": true},
//           "children": [
//             {
//               "type": "chip",
//               "props": {"value": "red", "label": "Red", "colorHex": "#FF0000"},
//             },
//             {
//               "type": "chip",
//               "props": {
//                 "value": "blue",
//                 "label": "Blue",
//                 "colorHex": "#0000FF",
//               },
//             },
//             {
//               "type": "chip",
//               "props": {
//                 "value": "green",
//                 "label": "Green",
//                 "colorHex": "#00FF00",
//               },
//             },
//           ],
//         },
//       ],
//     },
//     {
//       "type": "button",
//       "props": {
//         "field": "submit",
//         "label": "Apply Filters",
//         "colorToken": "primary",
//         "action": "SUBMIT_FILTERS",
//       },
//     },
//   ],
// };

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
