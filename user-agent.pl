use strict;
use warnings;
use Mojo::UserAgent;
use Mojo::URL;
use Mojo::JSON qw( decode_json );

my $url =  Mojo::URL->new();

$url->userinfo('TEST-cad797f9-a5cf-4716-bda4-03c8015fe102:testsecreteveryoneknows');
$url->scheme('https');
$url->host('e.maccosmetics.emea2.fr.cmanu.eng.ncsa6.elcdev.net');
$url->path('/rest/api/v1/cseml/integrated_transactions');
$url->query(brand => 1, region => 5);

my $ua  = Mojo::UserAgent->new;

my $json ='{
       "transaction" : {
          "override_trans_total" : "106.50",
          "override_trans_subtotal" : "90.75",
          "override_order_tax_rate" : "1",
          "override_freight_amount" : "10.50",
          "order" : {
             "ship_address" : {
                "last_name" : "Valjan",
                "address2" : "Avenue des Pr",
                "address1" : "79",
                "title" : "MME",
                "postal_code" : "75016",
                "city" : "Paris",
                "phone1" : "5058662378",
                "first_name" : "Louie"
             },
             "cart_items" : [
                {
                   "item_quantity" : 1,
                   "override_unit_price" : "47.50",
                   "product_code" : "",
                   "sku_base_id" : 70274,
                   "override_item_tax_amount" : "2.25"
                }
             ]
          },
          "pos_token" : "1234ABCDE",
          "email_address" : "cornel.manu@softvision.com",
          "override_pp_ref" : "1234",
          "override_trans_tax" : "5.25",
          "test_order_flag" : true
       }
    }';
my $hash = decode_json($json);

my $tx = $ua->insecure(1)->post($url => {Accept => '*/*'} => json => $hash );

my $res = $tx->result;

print "|" . $res->is_success() . "|\n";
print "|" . $res->body() . "|\n";
print "Request\n", '-' x 50, "\n", join( ' ', $tx->req->method, $tx->req->url->path, 'HTTP/' . $tx->req->version ), "\n", $tx->req->headers->to_string;
print "\n";
print "Reponse\n", '-' x 50 , "\n";
print $res->body();
