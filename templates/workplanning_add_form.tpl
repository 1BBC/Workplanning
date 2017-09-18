<div class='box box-theme box-form'>
  <div class='box-header with-border'><h4 class='box-title'>_{ADD}_</h4></div>
  <div class='box-body'>
        <form name='%SUBMIT_BTN_ACTION%' id='form_%SUBMIT_BTN_ACTION%' method='post' class='form form-horizontal' value='1'>
        <input type='hidden' name='index' value='$index' />
        <input type='hidden' name='%SUBMIT_BTN_ACTION%' value='1' />
        <input type='hidden' name='CREATOR' value='%CREATOR%' />
        <input type='hidden' name='DATE_OF_CREATION' value='%DATE_OF_CREATION%' />
      
      <div class='form-group'>
        <label class='control-label col-md-3' for='DATE_OF_EXECUTION_ID'>_{DATE_OF_EXECUTION}_</label>
        <div class='col-md-9'>
            %DATE_OF_EXECUTION%
        </div>
      </div>

      <div class='form-group'>
        <label class='control-label col-md-3' for='AID_ID'>_{RESPONSIBLE}_</label>
        <div class='col-md-9'>
            <select class="form-control" name='STATUS'>
              %OPTION%
            </select>
        </div>
      </div>

      <div class='form-group'>
          <label class='control-label col-md-3' for='DESCRIPTION_ID'>_{DESCRIPTION}_</label>
          <div class='col-md-9'>
              <textarea class='form-control col-md-9'  rows='5'  name='DESCRIPTION' id='DESCRIPTION_ID'>%DESCRIPTION%</textarea>
          </div>
      </div>

      <div class='form-group'>
        <label class='control-label col-md-3' for='STATUS'>_{STATUS}_</label>
        <div class='col-md-9'>
          <select class="form-control" name='STATUS'>
            <option value="1">открыта</option>
            <option value="2">не выполнена</option>
            <option value="3">выполнена</option>
            <option value="4">отложена</option>
          </select>
        </div>
      </div>

      <div class='form-group'>
        <label class='control-label col-md-3' for='BUDGET_ID'>_{BUDGET}_</label>
        <div class='col-md-9'>
            <input type='text' class='form-control' value='%BUDGET%'  name='BUDGET'  id='BUDGET_ID'  />
        </div>
      </div>

      <div class='form-group'>
        <label class='control-label col-md-3' for='SUBSCRIBER_ID'>_{SUBSCRIBER}_</label>
        <div class='col-md-9'>
            <input type='text' class='form-control' value='%SUBSCRIBER%'  name='SUBSCRIBER'  id='SUBSCRIBER_ID'  />
        </div>
      </div>

      <div class='form-group'>
        <label class='control-label col-md-3' for='BUILDS_ID_ID'>_{LOCATION}_</label>
        <div class='col-md-9'>
            <input type='text' class='form-control' value='%BUILDS_ID%'  name='BUILDS_ID'  id='BUILDS_ID_ID'  />
        </div>
      </div>

      <div class='form-group'>
          <label class='control-label col-md-3' for='COMMENT_ID'>_{COMMENT}_</label>
          <div class='col-md-9'>
              <textarea class='form-control col-md-9'  rows='2'  name='COMMENT' id='COMMENT_ID'>%COMMENT%</textarea>
          </div>
      </div>

      %BUILDS%

    </form>

  </div>
  <div class='box-footer text-center'>
      <input type='submit' form='form_%SUBMIT_BTN_ACTION%' class='btn btn-primary' name='submit' value='_{ADD}_'>
  </div>
</div>
