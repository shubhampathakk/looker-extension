view: orders {
  sql_table_name: `pso-gdc-japac-wedevelop-df.thelook_ecommerce_demo.orders` ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_id;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.last_name]
  }
}
