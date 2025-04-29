connection: "thelook"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: mtr_isidro256_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mtr_isidro256_default_datagroup

explore: countries {}

explore: customer {}

explore: day_of_week {}



explore: employees {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: fakeorders {
  join: orders {
    type: left_outer
    sql_on: ${fakeorders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: fatal_error_user_derived_base {}

explore: flights {}

explore: foo {}

explore: human {}

explore: hundred_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: incremental_pdts_test {}

explore: ints {}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: jdbc_connection_usage {}



explore: jdbc_statement_usage {}



explore: korean_string {}



explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_vijaya {
  join: orders {
    type: left_outer
    sql_on: ${order_items_vijaya.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items_vijaya.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_status_vijaya {}

explore: pegdates {}

explore: person {}

explore: persons {}

explore: persons2 {}

explore: products {}


explore: sample_data {}

explore: sample_table {}

explore: sandbox_scratch {}

explore: saralooker {
  join: users {
    type: left_outer
    sql_on: ${saralooker.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: schema_migrations {}

explore: sequel_database_usage_v1 {}

explore: sequel_database_usage_v2 {}

explore: sindhu {
  join: users {
    type: left_outer
    sql_on: ${sindhu.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: special_charaters {}

explore: demo_db_temporary {}

explore: ten_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${ten_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: test {}

explore: testing_blob {}

explore: testing_blob_type {}

explore: test_bit {}

explore: test_bits {}

explore: test_date {}

explore: test_lav {}

explore: test_space_in_column_name {}

explore: thor {}

explore: users {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: viet {}

explore: vvimgsrc1onerroralert2ll {}
