use utf8;
package App::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

App::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 age

  data_type: 'integer'
  is_nullable: 0

=head2 firstname

  data_type: 'text'
  is_nullable: 0

=head2 lastname

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "age",
  { data_type => "integer", is_nullable => 0 },
  "firstname",
  { data_type => "text", is_nullable => 0 },
  "lastname",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-02-03 01:08:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hKDsZ5O4/ZrLcWHGqWX4Mw

sub fullname {
    my $self = shift;
    return $self->firstname . ' ' . $self->lastname;
}

1;
