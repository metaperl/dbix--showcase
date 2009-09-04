package DMSchema;
use strict;
use warnings;
use DBIx::DataModel;

DBIx::DataModel  # no semicolon (intentional)

#---------------------------------------------------------------------#
#                         SCHEMA DECLARATION                          #
#---------------------------------------------------------------------#
->Schema('DMSchema')

#---------------------------------------------------------------------#
#                         TABLE DECLARATIONS                          #
#---------------------------------------------------------------------#
#          Class        Table         PK                 
#          =====        =====         ==                 
->Table(qw/Actor        actor         actor_id           /)
->Table(qw/Address      address       address_id         /)
->Table(qw/Category     category      category_id        /)
->Table(qw/City         city          city_id            /)
->Table(qw/Country      country       country_id         /)
->Table(qw/Customer     customer      customer_id        /)
->Table(qw/Film         film          film_id            /)
->Table(qw/FilmActor    film_actor    actor_id film_id   /)
->Table(qw/FilmCategory film_category category_id film_id/)
->Table(qw/FilmText     film_text     film_id            /)
->Table(qw/Inventory    inventory     inventory_id       /)
->Table(qw/Language     language      language_id        /)
->Table(qw/Payment      payment       payment_id         /)
->Table(qw/Rental       rental        rental_id          /)
->Table(qw/Staff        staff         staff_id           /)
->Table(qw/Store        store         store_id           /)

#---------------------------------------------------------------------#
#                      ASSOCIATION DECLARATIONS                       #
#---------------------------------------------------------------------#
#     Class        Role            Mult Join                
#     =====        ====            ==== ====                
->Association(
  [qw/Actor        actor           1    actor_id            /],
  [qw/FilmActor    filmsActors     *    actor_id            /])

->Association(
  [qw/Address      addres          1    address_id          /],
  [qw/Customer     customers       *    address_id          /])

->Association(
  [qw/Address      addres          1    address_id          /],
  [qw/Staff        staffs          *    address_id          /])

->Association(
  [qw/Address      addres          1    address_id          /],
  [qw/Store        stores          *    address_id          /])

->Association(
  [qw/Category     category        1    category_id         /],
  [qw/FilmCategory filmsCategorys  *    category_id         /])

->Association(
  [qw/City         city            1    city_id             /],
  [qw/Address      addresss        *    city_id             /])

->Association(
  [qw/Country      country         1    country_id          /],
  [qw/City         citys           *    country_id          /])

->Association(
  [qw/Customer     customer        1    customer_id         /],
  [qw/Payment      payments        *    customer_id         /])

->Association(
  [qw/Customer     customer        1    customer_id         /],
  [qw/Rental       rentals         *    customer_id         /])

->Association(
  [qw/Film         film            1    film_id             /],
  [qw/FilmActor    filmsActors     *    film_id             /])

->Association(
  [qw/Film         film            1    film_id             /],
  [qw/FilmCategory filmsCategorys  *    film_id             /])

->Association(
  [qw/Film         film            1    film_id             /],
  [qw/Inventory    inventorys      *    film_id             /])

->Association(
  [qw/Inventory    inventory       1    inventory_id        /],
  [qw/Rental       rentals         *    inventory_id        /])

->Association(
  [qw/Language     language        1    language_id         /],
  [qw/Film         films           *    original_language_id/])

->Association(
  [qw/Language     language        1    language_id         /],
  [qw/Film         films           *    language_id         /])

->Association(
  [qw/Rental       rental          1    rental_id           /],
  [qw/Payment      payments        *    rental_id           /])

->Association(
  [qw/Staff        staff           1    staff_id            /],
  [qw/Payment      payments        *    staff_id            /])

->Association(
  [qw/Staff        staff           1    staff_id            /],
  [qw/Rental       rentals         *    staff_id            /])

->Association(
  [qw/Staff        staff           1    staff_id            /],
  [qw/Store        stores          *    manager_staff_id    /])

->Association(
  [qw/Store        store           1    store_id            /],
  [qw/Customer     customers       *    store_id            /])

->Association(
  [qw/Store        store           1    store_id            /],
  [qw/Inventory    inventorys      *    store_id            /])

->Association(
  [qw/Store        store           1    store_id            /],
  [qw/Staff        staffs          *    store_id            /])

;

#---------------------------------------------------------------------#
#                             COLUMN TYPES                            #
#---------------------------------------------------------------------#
# DMSchema->ColumnType(ColType_Example =>
#   fromDB => sub {...},
#   toDB   => sub {...});

# DMSchema::SomeTable->ColumnType(ColType_Example =>
#   qw/column1 column2 .../);



1;
