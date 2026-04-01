- dashboard: expanded_ecommerce_performance
  title: Expanded E-commerce Performance
  layout: newspaper
  tile_size: 100

  filters:
  - name: date_filter
    title: "Date Range"
    type: date_filter
    default_value: last 30 days

  elements:
    - name: total_sales
      title: Total Sales Revenue
      model: thelook_ecommerce
      explore: order_items
      type: single_value
      fields: [order_items.total_sales]
      filters:
        orders.created_date: '30 days'

    - name: sales_by_category
      title: Sales by Category
      model: thelook_ecommerce
      explore: order_items
      type: looker_pie
      fields: [products.category, order_items.total_sales]
      sorts: [order_items.total_sales desc]
