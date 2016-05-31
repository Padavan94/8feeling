<?php echo $header; ?>
<div class="content <?php echo $class; ?>" id="content" >
    <div class="banner">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <?php echo $content_top; ?><?php echo $content_bottom; ?>
        <?php echo $column_right; ?>
    </div>
</div>
    
<?php echo $footer; ?>