- dashboard: ecommerce_kpi_dashboard
  title: Ecommerce KPI Dashboard
  layout: newspaper
  elements:
    - name: total_orders
      title: Total Orders
      model: thelook_ecommerce
      explore: orders
      type: single_value
      fields: [orders.count]
      limit: 500

    - name: orders_by_status
      title: Orders by Status
      model: thelook_ecommerce
      explore: orders
      type: looker_pie
      fields: [orders.status, orders.count]
      sorts: [orders.count desc]
      limit: 500

    - name: orders_over_time
      title: Orders Over Time
      model: thelook_ecommerce
      explore: orders
      type: looker_line
      fields: [orders.created_month, orders.count]
      sorts: [orders.created_month]
      limit: 500
