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

=head2  add() - Add info

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

  my $WHERE = $self->search_former( $attr, [
      [ 'ID', 'INT', 'id', 1],
      [ 'DATE_OF_CREATION', 'DATE', 'date_of_creation', 1 ],
      [ 'DATE_OF_EXECUTION', 'DATE', 'date_of_execution', 1 ],
      [ 'AID', 'INT', 'AID', 1 ],
      [ 'DESCRIPTION', 'STR', 'description', 1 ],
      [ 'STATUS', 'INT', 'status', 1 ],
      [ 'BUDGET', 'INT', 'budget', 1 ],
      [ 'UID', 'INT', 'uid', 1 ],
      [ 'BUILDS_ID', 'INT', 'builds_id', 1 ],
      [ 'COMMENT', 'STR', 'comment', 1 ],
      [ 'CREATOR', 'INT', 'creator', 1 ],
    ],
    { WHERE => 1,
    }
  );

  $self->query2(
    "SELECT id, date_of_creation, date_of_execution, aid, description, status, budget, uid, builds_id, comment, creator
     FROM work_planning
     $WHERE;",
    undef,
    { COLS_NAME => 1 }
  );

  return $self->{list};
}


#**********************************************************

=head2 change($attr) - change

=cut

#**********************************************************

sub change {
  my $self = shift;
  my ($attr) = @_;

  $self->changes2(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'work_planning',
      DATA         => $attr,
    }
  );

  return $self->{result};
}
