- dashboard: user_demographics
  title: User Demographics & Regional Analysis
  layout: newspaper
  tile_size: 100

  filters:
  - name: country_filter
    title: Country
    type: field_filter
    model: thelook_ecommerce
    explore: order_items
    field: users.country
    default_value: ''

  - name: gender_filter
    title: Gender
    type: field_filter
    model: thelook_ecommerce
    explore: order_items
    field: users.gender
    default_value: ''

  elements:
  - name: users_by_country
    title: Users by Country
    model: thelook_ecommerce
    explore: order_items
    type: looker_bar
    fields: [users.country, users.count]
    sorts: [users.count desc]
    limit: 10
    row: 0
    col: 0
    width: 12
    height: 8
    listen:
      country_filter: users.country
      gender_filter: users.gender

  - name: gender_breakdown
    title: Gender Breakdown
    model: thelook_ecommerce
    explore: order_items
    type: looker_pie
    fields: [users.gender, users.count]
    row: 0
    col: 12
    width: 12
    height: 8
    listen:
      country_filter: users.country
      gender_filter: users.gender

  - name: sales_by_country
    title: Total Sales by Country
    model: thelook_ecommerce
    explore: order_items
    type: looker_column
    fields: [users.country, order_items.total_sales]
    sorts: [order_items.total_sales desc]
    limit: 10
    row: 8
    col: 0
    width: 24
    height: 8
    listen:
      country_filter: users.country
      gender_filter: users.gender
