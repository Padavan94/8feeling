

<?php echo $header; ?>

<?php if (($category_info['category_id'] !== "61")): ?>
<div class="content">
  <div class="collections">
    <div class="collections__box">
    <?php foreach ($posts as $key => $post) : ?>
      <div class="collections__item" style="background: url(<?php echo $post['post_thumbnail']; ?>); background-size: cover;">
        <div class="collections__info">
          <div class="collections__item__title">
            <h3><?php echo ucfirst($post['title']); ?></h3>
            <p><?php echo $post['content']; ?></p>
          </div>
          <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/single&amp;pid=<?php echo $post['ID']; ?>" class="collections__item__view">Перейти<?php //echo $text_readmore; ?></a>
        </div>
      </div>
      <?php endforeach; ?>
    </div>
  </div>
</div> 
<?php else: ?>

<div class="content">
  <section class="content__inner">
    <div class="blog">
      <div class="container">
        <div class="blog__container">
          <?php if(isset($posts) && $posts) : ?>
            <?php foreach ($posts as $post) : ?>
              <?php $day = date_parse($post['date_added']);
               ?>
          <article class="blog__item">
            <div class="blog__item__img">
              <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/single&amp;pid=<?php echo $post['ID']; ?>"><img src="<?php echo $post['post_thumbnail']; ?>" alt="img"></a>
            </div>
            <div class="blog__item__body">
              <h4 class="blog__item__title"><?php echo ucfirst($post['title']); ?></h4>
              <p class="blog__item__text">Led ut perspiciatis unde omnis iste natus error sit vouptatem accusantium doloremque laudantium, totam rem aperiam,</p>
              <div class="blog__item__buttons">
                <div class="blog__item__socials">
                  <span>Поеделиться:</span>
                  <a href="#"><i class="icon-vk"></i></a>
                  <a href="#"><i class="icon-facebook"></i></a>
                  <a href="#"><i class="icon-twitter"></i></a>
                  <a href="#"><i class="icon-inst"></i></a>
                  <a href="#"><i class="icon-youtube"></i></a>
                </div>
                <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/single&amp;pid=<?php echo $post['ID']; ?>" class="blog__item__more">Читать</a>
              </div>
            </div>
            <div class="blog__item__date"><strong><?php echo $day['day']; ?><span><?php echo getMonthName($day['month']);?></span></strong></div>
          </article>
          <?php endforeach; ?>
        <?php endif; ?>
          
        </div>

        <nav class="pagination-wrapper">
            <ul class="pagination">
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">6</a></li>
              <li><a href="#">7</a></li>
              <li><a href="#">8</a></li>
              <li><a href="#">9</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
      </div>
    </div>
  </section>

</div>

<?php endif; ?>





















<div id="blog-content" id="blog">

  <?php if(isset($category_info)) : ?>
  <div id="page-heading">
    <div class="container">
      <div class="content">
        <h1 class="title"><?php echo ucfirst($category_info['name']); ?></h1>
        <?php $description = strip_tags(html_entity_decode($category_info['description'])); ?>
        <?php if($description): ?>
          <p class="desc">
            <?php echo $description; ?>
          </p>
        <?php endif; ?>
      </div>
    </div>
  </div>
  <?php endif; ?>
  <!-- #category-info -->
  
  <?php if(count($breadcrumbs)) : ?>
  <div id="blog-breadcrumb">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <?php endif; ?>
  <!-- #blog-breadcrumb   -->
    
  <?php if(isset($success) && $success): ?>
  <div id="blog-message">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
            <?php if ($success) { ?>
              <div class="alert alert-succes"><?php echo $success; ?></div>
            <?php } ?>
        </div>
      </div>
    </div>
  </div>
  <?php endif; ?>
  <!-- #blog-alert -->

  <?php if(isset($error_warning) && $error_warning): ?>
  <div id="blog-warning">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
            <?php if ($error_warning) { ?>
              <div class="error_warning alert alert-succes"><?php echo $error_warning; ?></div>
            <?php } ?>
        </div>
      </div>
    </div>
  </div>
  <?php endif; ?>
  <!-- #blog-warning -->

  <div id="blog-topcontent" class="module-content">
      <div class="container">
          <?php echo $content_top; ?>
      </div>
  </div>
  <!-- #blog-topcontent -->

  <div id="blog-maincontent">
  <div class="container">
  <div class="row">

        <?php echo $column_left; ?>

        <?php 
          if($column_left AND $column_right) {
            $layout = 'col-sm-6';
          } else if ($column_left || $column_right ) {
            $layout = 'col-sm-9';
          } else {
            $layout = 'col-sm-12';
          }
        ?>

        <div class="<?php echo $layout; ?>">
        <div class="content">
        <div class="row">    
          <div class="col-sm-12">
          <?php if(isset($posts) && $posts) : ?>
          <ul class="post-list">
            <?php $inc = 0;
            foreach ($posts as $post) : ?>
              <li class="post">
               
                <?php $time = strtotime($post['date_added']); ?>
                <div class="datetime">
                  <?php var_dump(date_parse($post['date_added'])); ?>
                  <span class="date"><?php echo date('d',$time); ?>, <?php echo month_name(date('m',$time)); ?>, <?php echo date('Y',$time); ?></span>
                  <span class="time"><?php echo date('h',$time); ?>:<?php echo date('i',$time); ?>:<?php echo date('s',$time); ?></span>
                </div>

                <div class="post-heading">
                  <h2 class="post-title"><span class="fa fa-pencil"></span>&nbsp;<?php echo ucfirst($post['title']); ?></h2>
                </div>
                
                <div class="post-content">

                  <div class="post-meta">
                    <span><?php echo $text_author; ?><?php echo author($post['post_author'],'username'); ?></span>
                    <span><?php echo $text_comment; ?><?php echo $post['comment_count']; ?></span>
                    <span><?php echo sprintf($text_view,$post['view']); ?></span>
                  </div>

                  <?php if($config['post_thumbnail_visibility']) : ?>
                  <div class="post-thumbnail post-thumbnail-<?php echo $config['post_thumbnail_position']; ?>">
                    <?php if($config['post_thumbnail_type'] == 'static') : ?>
                      <img class="post-img" src="<?php echo $post['post_thumbnail']; ?>" alt="">
                    <?php elseif($config['post_thumbnail_type'] == 'slide') : ?>
                        <?php if(isset($post['images'])) : ?>
                          <ul class='thumbslider list-unstyled'>
                            <?php for ($i=0; $i < count($post['images']); $i++) : ?>
                              <li><img src="<?php echo $post['images'][$i]; ?>" alt=""></li>
                            <?php endfor; ?>
                          </ul>
                        <?php else: ?>
                            <img class="post-img" src="<?php echo $post['post_thumbnail']; ?>" alt="">
                        <?php endif; ?>
                    <?php endif; ?>
                  </div>
                  <?php endif; ?>

                  <div class="content content-<?php echo $config['post_thumbnail_position']; ?>">
                    <div>
                      <?php echo $post['content']; ?>
                    </div>
                  </div>

                  <div class="post-tags">
                      <strong><?php echo $text_tag; ?>&nbsp;</strong>
                      <?php $tags = explode(',', $post['tag']);?>
                      <?php for ($i=0; $i < count($tags); $i++) : ?>
                        <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/tag&amp;tag=<?php echo urldecode($tags[$i]); ?>"><?php echo ucfirst($tags[$i]); ?></a>
                      <?php endfor; ?>
                  </div>

                </div>
                <!-- .post-content -->

                <div class="readmore">
                  <a href="<?php echo HTTP_SERVER; ?>index.php?route=blog/single&amp;pid=<?php echo $post['ID']; ?>"><?php echo $text_readmore; ?></a>
                </div>

              </li>
              <!-- .post -->
            <?php $inc++;
            endforeach; ?>

            <div id="blog-pagination">
              <?php echo $pagination; ?>
            </div>

          </ul>
          <?php else: ?>
              <div class="alert alert-danger">
                <?php echo $not_found; ?>
              </div>
          <?php endif; ?>
          </div>
        </div>
        </div>
        </div>

        <?php echo $column_right; ?>

    </div>
    </div>
    </div>
    <!-- #blog-maincontent -->

    <div id="blog-bottomcontent" class="module-content">
        <div class="container">
            <?php echo $content_bottom; ?>
        </div>
    </div>
    <!-- #blog-bottomcontent -->

<?php echo $footer; ?>