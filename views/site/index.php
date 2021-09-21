<?php

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div>
    <div class="scale"><img src="../../web/img/header.jpg" alt="Шапка" height="600px" class="scale w-100"></div>
</div>
<div class="site-index">
    <div class="body-content container">

        <div class="jumbotron m-0 mt-3 bg-white">
            <h1 class="display-3 ">Hello, world!</h1>
            <p class="lead">This is a simple hero unit, a simple jumbotron-style component for
                calling extra attention to featured content or information.</p>
            <hr class="my-2">
            <p>It uses utility classes for typography and
                spacing to space content out within the larger container.</p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#!" role="button">Хочу ремонт!</a>
            </p>
        </div>

        <div class="card-deck">
            <div class="card">
                <img class="card-img-top" src="../../web/img/test-icon2.svg" alt="Card image cap">
                <div class="card-body"> Some more card content </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="../../web/img/test-icon2.svg" alt="Card image cap">
                <div class="card-body"> Some more card content </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="../../web/img/test-icon2.svg" alt="Card image cap">
                <div class="card-body"> Some more card content </div>
            </div>
        </div>

        <h3 class="jumbotron display-3 bg-white">Наши работы</h3>

        <div id="carouselExampleIndicators" class="carousel slide mt-4" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../../web/img/gallery1.jpg" data-src="holder.js/900x400?theme=social" alt="900x400" style="width: 900px; height: 500px;" data-holder-rendered="true">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../../web/img/gallery2.jpg" data-src="holder.js/900x400?theme=industrial" alt="900x400" style="width: 900px; height: 500px;" data-holder-rendered="true">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <a href="#">Больше работ</a>
        </div>

        <form action="" class="calc-form" method="get">
            <div class="calc-form__wrap">
                <div class="calc-form__row">
                    <label for="flat-square">Общая площадь, м<sup>2</sup>*</label>
                    <input type="number" name="flat-square" id="flat-square" placeholder="Укажите цифру" required="" min="0" max="500">
                </div>
                <div class="calc-form__row">
                    <label for="ceiling">Высота потолка, м*</label>
                    <select name="ceiling" id="ceiling">
                        <option value="none">Не выбрано</option>

                        <option value="2.6" data-price="0">2.6</option>

                        <option value="2.8" data-price="2">2.8</option>

                        <option value="3.0" data-price="5">3.0</option>

                    </select>
                </div>
                <div class="calc-form__row">
                    <label for="repair-type">Тип ремонта*</label>
                    <select name="repair-type" id="repair-type">
                        <option value="none">Не выбрано</option>

                        <option value="econom" data-price="3000" data-bathroom="120000" data-materials="{
                            &quot;2.6&quot;: &quot;1850&quot;,
                            &quot;2.8&quot;: &quot;1850&quot;,
                            &quot;3.0&quot;: &quot;1850&quot;
                            }" data-bathmaterials="{
                            &quot;1&quot;: &quot;30000&quot;,
                            &quot;2&quot;: &quot;60000&quot;,
                            &quot;3&quot;: &quot;90000&quot;
                            }">Косметический</option>

                        <option value="standard" data-price="10000" data-bathroom="120000" data-materials="{
&quot;2.6&quot;: &quot;3500&quot;,
 &quot;2.8&quot;: &quot;3500&quot;,
 &quot;3.0&quot;: &quot;3500&quot;
}" data-bathmaterials="{
&quot;1&quot;: &quot;60000&quot;,
&quot;2&quot;: &quot;95000&quot;,
&quot;3&quot;: &quot;130000&quot;
}">Капитальный</option>

                        <option value="comfort" data-price="15000" data-bathroom="120000" data-materials="{
&quot;2.6&quot;: &quot;3950&quot;,
&quot;2.8&quot;: &quot;3950&quot;,
 &quot;3.0&quot;: &quot;3950&quot;
}" data-bathmaterials="{
&quot;1&quot;: &quot;60000&quot;,
&quot;2&quot;: &quot;105000&quot;,
&quot;3&quot;: &quot;150000&quot;
}">Дизайнерский</option>

                    </select>
                </div>
                <div class="calc-form__row">
                    <label for="flat-status">Статус жилья</label>
                    <select name="flat-status" id="flat-status">
                        <option value="not-select">Не выбрано</option>

                        <option value="new-flat" data-price="0">Новостройка</option>

                        <option value="secondary-flat" data-price="15">Вторичное</option>

                    </select>
                </div>
                <div class="calc-form__row">
                    <label for="bathroom-numbers">Количество санузлов, шт.</label>
                    <select name="bathroom" id="bathroom">
                        <option value="none">Не выбрано</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
                <div class="calc-form__row">
                    <label for="design-project">Дизайн проект</label>
                    <select name="design-project" id="design-project">
                        <option value="none">Не выбрано</option>

                        <option value="econom" data-price="1500">Нужен</option>

                        <option value="standard" data-price="0">Не нужен</option>

                    </select>
                </div>
            </div>
            <div class="calc-form__aside">

                <div class="calc-form__cell">
                    <input type="checkbox" id="redevelopment" name="redevelopment" value="redevelopment" data-price="35000">
                    <label for="redevelopment">Узаконивание планировки</label>
                </div>

                <div class="calc-form__cell">
                    <input type="checkbox" id="stretch-ceiling" name="stretch-ceiling" value="stretch-ceiling" data-price="500">
                    <label for="stretch-ceiling">Натяжной потолок</label>
                </div>

                <div class="calc-result">
                    <div class="calc-validation hidden">
                        <p class="calc-validation__text">Выберите параметры для расчета:</p>
                        <ul class="calc-validation__list">
                            <li>Общая площадь,</li>
                            <li>Тип ремонта,</li>
                            <li>Высота потолка.</li>
                        </ul>
                    </div>
                    <div class="calc-result__rows">
                        <div class="calc-result__row calc-total-work">Стоимость работы:
                            <p class="calc-result__value calc-total-work__value">3000 руб.</p>
                        </div>
                        <div class="calc-result__row calc-materials">Стоимость материалов:
                            <p class="calc-result__value calc-materials__value">1850 руб.</p>
                        </div>
                        <div class="calc-result__row calc-total">Итоговая стоимость:
                            <p class="calc-result__value calc-total__value">4850 руб.</p>
                        </div>
                        <a href="#" class="btn calc-btn calc-call" onclick="ym(46676865, 'reachGoal', 'calkulator'); return true;">Заказать ремонт</a>
                    </div>
                </div>
                <div class="calc-disclaimer">
                    <p class="calc-disclaimer__text">Данный расчет является предварительным. Точная стоимость будет определена после выезда мастера на объект.</p>
                </div>
            </div>
        </form>



    </div>

    </div>






