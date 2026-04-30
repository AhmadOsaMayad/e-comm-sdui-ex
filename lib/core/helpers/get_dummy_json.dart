const kGetDummyJson = {
  "type": "screen",
  "version": 1,
  "props": {"title": "Home"},
  "children": [
    {
      "type": "banner",
      "props": {
        "headline": "Weekend Deals",
        "subtitle": "Up to 40% off",
        "ctaText": "Shop now",
      },
    },
    {
      "type": "section",
      "props": {"title": "Recommended for you"},
      "children": [
        {
          "type": "product_card",
          "props": {
            "id": "p1",
            "name": "Running Shoes",
            "price": 79.99,
            "imageUrl": "https://example.com/shoe.png",
          },
        },
      ],
    },
  ],
};
