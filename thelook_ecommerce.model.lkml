connection: "sample_bigquery_connection"


include: "*.view.lkml"                # include all views
include: "*.dashboard.lookml"         # include all dashboard files

explore: orders {
  label: "Orders Analysis"
  # Standard joins would go here if you add more views (users, products)
}
