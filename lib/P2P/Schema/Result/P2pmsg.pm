use utf8;
package P2P::Schema::Result::P2pmsg;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

P2P::Schema::Result::P2pmsg

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

=head1 TABLE: C<p2pmsg>

=cut

__PACKAGE__->table("p2pmsg");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 deleted

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "deleted",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-05-22 17:52:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9JdmOmdO+vI/FV58GEdsVw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
