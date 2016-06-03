<section class="instagram-section">
  <div class="title title--black instagram-section__title">
    <h2>INSTAGRAM</h2>
  </div>
  <div class="instagram-section__slider swiper-container">
    <div class="swiper-wrapper">
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo1.jpg" alt="photo1"></a></div>
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo2.jpg" alt="photo1"></a></div>
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo3.jpg" alt="photo1"></a></div>
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo4.jpg" alt="photo1"></a></div>
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo5.jpg" alt="photo1"></a></div>
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo6.jpg" alt="photo1"></a></div>
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo7.jpg" alt="photo1"></a></div>
      <div class="instagram-section__slider__item swiper-slide"><a href="#"><img src="/image/photo8.jpg" alt="photo1"></a></div>
    </div>
  </div>
</section>
<section class="pre-footer">
  <div class="container">
    <div class="pre-footer__container">
      <div class="pre-footer__header">
        <h2>sentendo l'8 °</h2>
      </div>
      <div class="pre-footer__body">
        <p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque
        laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto
        beatae vitae dicta sunt, explicabo.</p>

        <p>Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur
        aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesc
        unt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci
        velit, sed quia non numquam eius modi tempora incidunt.</p>
      </div>
    </div>
  </div>
</section>
<footer class="footer">
  <div class="container">
    <div class="footer__inner">
      <div class="footer__info">
        <div class="footer__info__logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
        <div class="footer__info__text">
          <p>Sed ut perspiciatis, unde omnis iste natus
          error sit voluptatem accusantium doloremque
          laudantium, totam rem aperiam eaque ipsa, 
          beatae vitae dicta sunt, explicabo.</p>
        </div>
        <div class="footer__info__socials">
          <a href="#"><i class="icon-vk"></i></a>
          <a href="#"><i class="icon-facebook"></i></a>
          <a href="#"><i class="icon-twitter"></i></a>
          <a href="#"><i class="icon-inst"></i></a>
          <a href="#"><i class="icon-youtube"></i></a>
        </div>
        <div class="footer__info__copy">
          <p>© 2016 - Sentendo l'8 °. Все права защищены. Developed by <a href="#">Garnet Software</a></p>
        </div>
      </div>
      <ul class="footer__menu">
        <li><a href="#"><i class="icon-arrow2"></i>Коллекции</a></li>
        <li><a href="#"><i class="icon-arrow2"></i>О нас</a></li>
        <li><a href="#"><i class="icon-arrow2"></i>Блог</a></li>
        <li><a href="#"><i class="icon-arrow2"></i>Новости</a></li>
        <li><a href="#"><i class="icon-arrow2"></i>Магазин</a></li>
        <li><a href="#"><i class="icon-arrow2"></i>Контакты</a></li>
      </ul>
      <div class="footer__instagram">
        <div class="footer__instagram__header">
          наш Инстаграм:
        </div>
        <div class="footer__instagram__img">
          <img src="/image/inst.png" alt="instagram">
        </div>
      </div>
      <div class="footer__contacts">
        <div class="footer__contacts__header">
          Контакты:
        </div>
        <a href="#" class="footer__contacts__phone"><i class="icon-phone"></i>(048) 980-89-60</a>
        <a href="#" class="footer__contacts__adress">
          <i class="icon-location"></i>г. Одесса,<br>ул. Преображенская, 7</a>
        <a href="#" class="footer__contacts__mail">
          <i class="icon-mail"></i>sentendo8@gmail.com
        </a>
        <div class="footer__contacts__schedule">
          <div class="footer__contacts__row">
            <div class="footer__contacts__row__left">
              Пн.- Пт.
            </div>
            <div class="footer__contacts__row__right">09:00 - 18:00</div>
            <div class="footer__contacts__row__left">
              Сб.
            </div>
            <div class="footer__contacts__row__right">09:00 - 15:00</div>
            <div class="footer__contacts__row__left">
              Вс.
            </div>
            <div class="footer__contacts__row__right bold">Выходной</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

<!-- popup section start -->
  <div id="login" class="popup-wrapper mfp-hide">
    <div class="popup">
      <div class="popup__title">
        <h3>Вход</h3>
      </div>
      <div class="popup__soc-enter">
        <div class="popup__soc-enter__title">Войти через социальные сети:</div>
        <div class="popup__soc-enter__icons">
          <div class="popup__soc-enter__link">
            <a href="#" class="vk"><i class="icon-vk"></i></a>
          </div>
          <div class="popup__soc-enter__link">
            <a href="#" class="fb"><i class="icon-facebook"></i></a>
          </div>
        </div>
      </div>
      <form action="" class="popup__form">
        <div class="popup__input-wrapper">
          <input type="text" placeholder="Email">
        </div>
        <div class="popup__input-wrapper">
          <input type="text" placeholder="Password">
        </div>
        <div class="popup__check-wrapper">
          <input id="lol" type="checkbox">
          <label for="lol">Remember me</label>
        </div>
        <div class="popup__submit-wrapper">
          <a href="#">Войти</a>
          <a class="open-popup" href="#registration">Регистрация</a>
        </div>
        <div class="popup__close"><i class="icon-close"></i></div>
      </form>
    </div>
  </div>

  <div id="registration" class="popup-wrapper mfp-hide">
    <div class="popup popup--reg">
      <div class="popup__title">
        <h3>Регистрация</h3>
      </div>
      <form action="" class="popup__form ">
        <div class="popup__input-wrapper">
          <input type="text" placeholder="Email">
        </div>
        <div class="popup__check-wrapper">
          <input id="lol" type="checkbox">
          <label for="lol">Подписаться на новости</label>
        </div>
        <div class="popup__input-wrapper">
          <input type="password" placeholder="Пароль">
        </div>
        <div class="popup__input-wrapper">
          <input type="password" placeholder="Повторите пароль">
        </div>
        <div class="popup__input-wrapper">
          <input type="text" placeholder="Ваше имя">
        </div>
        <div class="popup__buttons">
          <div class="popup__submit-wrapper">
            <a href="#">Зарегистрироваться</a>
          </div>
          <div class="popup__soc-enter__icons">
            <span>Войти:</span>
            <div class="popup__soc-enter__link">
              <a href="#" class="vk"><i class="icon-vk"></i></a>
            </div>
            <div class="popup__soc-enter__link">
              <a href="#" class="fb"><i class="icon-facebook"></i></a>
            </div>
          </div>
        </div>
        <div class="popup__close"><i class="icon-close"></i></div>
      </form>
    </div>
  </div>
<!-- popup section end -->


</body>
</html>



<footer >
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>