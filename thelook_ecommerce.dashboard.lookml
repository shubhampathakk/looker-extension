- dashboard: expanded_ecommerce_performance
  title: Expanded E-commerce Performance
  layout: newspaper
  tile_size: 100

  filters:
  - name: date_filter
    title: "Date Range"
    type: date_filter
    default_value: last 30 days

  - name: category_filter
    title: "Product Category"
    type: field_filter
    model: thelook_ecommerce
    explore: order_items
    field: products.category

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
      listen:
        category_filter: products.category

    - name: orders_by_status
      title: Orders by Status
      model: thelook_ecommerce
      explore: order_items
      type: looker_bar
      fields: [orders.status, orders.count]
      sorts: [orders.count desc]
      listen:
        date_filter: orders.created_date
        category_filter: products.category
