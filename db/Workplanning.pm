package Workplanning;

=head2

  Workplanning

=cut

use strict;
use parent 'main';
my $MODULE = 'Workplanning';

#**********************************************************
# Init
#**********************************************************
sub new {
  my $class = shift;
  my ($db, $admin, $CONF) = @_;

  my $self = {};
  bless($self, $class);

  $admin->{MODULE} = $MODULE;
  $self->{db}      = $db;
  $self->{admin}   = $admin;
  $self->{conf}    = $CONF;

  return $self;
}

#**********************************************************

=head2  add()

=cut

#**********************************************************
sub add {
  my $self = shift;
  my ($attr) = @_;

  $self->query_add('work_planning', $attr);

  return $self;
}

#**********************************************************

=head2  del() - Delete info

=cut

#**********************************************************
sub del {
  my $self = shift;
  my ($id) = @_;

  $self->query_del('work_planning', { ID => $id });

  return $self->{result};
}

#**********************************************************

=head2 list($attr) - list

=cut

#**********************************************************
sub list {
  my $self = shift;
  my ($attr) = @_;

  my $SORT = ($attr->{SORT}) ? $attr->{SORT} : 1;
  my $DESC = ($attr->{DESC}) ? $attr->{DESC} : '';

  $self->query2(
    "SELECT id, date_of_creation, date_of_execution, aid, description, status, budget, subscriber, builds_id, comment, creator
     FROM work_planning;",
    undef,
    { COLS_NAME => 1 }
  );

  return $self->{list};
}