use strict;
use warnings;

use Cpanel::JSON::XS;

use feature 'say';
use Data::Dumper;



my $json = '[
          {
             "category_id" : "CAT26322",
             "out_of_stock" : false,
             "full_product_code" : "LH5T010001",
             "high_velocity_inventory_status" : 0,
             "price" : 72,
             "product_code" : "LH5T01",
             "request_prod_cat_id" : "158938",
             "temporary_out_stock" : false,
             "inventory_status" : 1,
             "shoppable" : true,
             "sku_base_id" : 158938,
             "product_id" : "PROD108129",
             "is_high_velocity" : false
          },
          {
             "out_of_stock" : false,
             "category_id" : "CAT25969",
             "full_product_code" : "LEW8010001",
             "price" : 70,
             "high_velocity_inventory_status" : 0,
             "product_code" : "LEW801",
             "request_prod_cat_id" : "130824",
             "temporary_out_stock" : false,
             "inventory_status" : 1,
             "shoppable" : true,
             "sku_base_id" : 130824,
             "product_id" : "PROD86747",
             "is_high_velocity" : false
          },
          {
             "out_of_stock" : false,
             "category_id" : "CAT25946",
             "full_product_code" : "LEG2010001",
             "price" : 102,
             "high_velocity_inventory_status" : 0,
             "product_code" : "LEG201",
             "request_prod_cat_id" : "124801",
             "temporary_out_stock" : false,
             "inventory_status" : 1,
             "shoppable" : true,
             "sku_base_id" : 124801,
             "product_id" : "PROD82194",
             "is_high_velocity" : false
          }
       ]';

say Dumper decode_json($json);
