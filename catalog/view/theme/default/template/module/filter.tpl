<div class="panel panel-default">
  <div class="panel-heading"><?php echo $heading_title; ?></div>
  <div class="list-group">
      <a class="list-group-item">Цена</a>
		<div class="list-group-item">
			<div id="filter-group1">
				<div id="scale-slider"></div>

			</div>
		</div>
      
    <?php foreach ($filter_groups as $filter_group) { ?>
    <a class="list-group-item"><?php echo $filter_group['name']; ?></a>
    <div class="list-group-item">
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">
          <label>
              <?php
              //var_dump(in_array($filter['filter_id']));
              //var_dump($filter['$filter_category']);
              ?>
            <?php if (in_array($filter['filter_id']. '.' .$filter_group['filter_group_id'], $filter_category)) { ?>
<!--            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />-->
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id'] . '.' .$filter_group['filter_group_id']; ?>" checked="checked" />
            <?php } else { ?>
<!--            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />-->
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id'] . '.' .$filter_group['filter_group_id']; ?>" />
            <?php } ?>
            <?php echo $filter['name']; ?> 
          </label>
        </div>
        <?php } ?>
      </div>
    </div>
    <?php } ?>
  </div>
  <div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
  </div>
</div>

<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});
//    $('input[name^=\'filter\']:hiden').val();


	location = '<?php echo $action; ?>&filter=' + filter.join(',') + '&price_start='+ $('.ui-state-default:first span.ui-slider-tip').text() + '&price_end='+ $('.ui-state-default:last span.ui-slider-tip').text();
});
//--></script>
