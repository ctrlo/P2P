use utf8;
package P2P::Schema::Result::Item;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

P2P::Schema::Result::Item

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<item>

=cut

__PACKAGE__->table("item");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 price

  data_type: 'decimal'
  is_nullable: 1
  size: [15,2]

=head2 currency

  data_type: 'char'
  is_nullable: 1
  size: 3

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "price",
  { data_type => "decimal", is_nullable => 1, size => [15, 2] },
  "currency",
  { data_type => "char", is_nullable => 1, size => 3 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 invoice_items

Type: has_many

Related object: L<P2P::Schema::Result::InvoiceItem>

=cut

__PACKAGE__->has_many(
  "invoice_items",
  "P2P::Schema::Result::InvoiceItem",
  { "foreign.item_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-05-22 17:17:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:p8KtrV0cWs2Q07c/Lj2Rfw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
