<?php
use yii\bootstrap\Nav;
use yii\helpers\Html;
?>
<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                
                <?= Html::img('uploads/person/'.Yii::$app->user->identity->person->photo, ['class' => 'img-circle', 'alt' => Yii::$app->user->identity->person->firstname.' '.Yii::$app->user->identity->person->lastname])?>
            </div>
            <div class="pull-left info">
                <p><?= Yii::$app->user->identity->person->firstname.' '.Yii::$app->user->identity->person->lastname?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        
        <?= dmstr\widgets\Menu::widget([
            'options' => ['class' => 'sidebar-menu', 'style' => 'white-space: normal;'],
            'items' => [
                
                ['label' => 'เมนู', 'options' => ['class' => 'header']],
                ['label' => 'หน้าหลัก', 'icon' => 'fa fa-home', 'url' => ['/site/index']],
                ['label' => 'เข้าสู่ระบบ', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                [
                    'label' => 'ระบบจองห้องประชุม',
                    'icon' => 'fa fa-calendar',
                    'url' => '#',
                    'items' => [
                        [
                            'label' => 'ปฏิทินการจอง',
                            'icon' => 'fa fa-calendar',
                            'url' => ['/meeting/default/index'],
                        ],
                        [
                            'label' => 'จองห้องประชุม',
                            'icon' => 'fa fa-calendar-check-o',
                            'url' => ['/meeting/meeting/create'],
                        ],
                        [
                            'label' => 'รายการจองห้องประชุม',
                            'icon' => 'fa fa-list',
                            'url' => ['/meeting/meeting/index'],
                        ],
                        [
                            'label' => 'รายงาน',
                            'icon' => 'fa fa-book',
                            'url' => '#',
                            'items' => [
                                [
                                    'label' => 'รายงาน1',
                                    'icon' => 'fa fa-list',
                                    'url' => ['/meeting/report/report1'],
                                ],
                                [
                                    'label' => 'รายงาน2รายงาน2รายงาน2 รายงาน2รายงาน2รายงาน2รายงาน2',
                                    'icon' => 'fa fa-list',
                                    'url' => ['/meeting/report/report2'],
                                    'options' => ['style' => 'white-space: normal;'],
                                ],
                                [
                                    'label' => 'รายงาน3',
                                    'icon' => 'fa fa-file-pdf-o',
                                    'url' => ['/meeting/report/report3'],
                                ],
                            ],
                        ],
                        [
                            'label' => 'ข้อมูลพื้นฐาน',
                            'icon' => 'fa fa-cogs',
                            'url' => '#',
                            'items' => [
                                [
                                    'label' => 'ห้องประชุม',
                                    'icon' => 'fa fa-building-o',
                                    'url' => ['/meeting/room/index'],
                                ],
                                [
                                    'label' => 'อปุกรณ์',
                                    'icon' => 'fa fa-cog',
                                    'url' => ['/meeting/equipment/index'],
                                ],
                            ],
                        ],
                    ],
                ],
                [
                    'label' => 'ระบบงานบุคคล',
                    'icon' => 'fa fa-users',
                    'url' => '#',
                    'items' => [
                        [
                            'label' => 'หน้าหลัก',
                            'icon' => 'fa fa-home',
                            'url' => ['/personal/default/index'],
                        ],
                        [
                            'label' => 'เพิ่มบุคคล',
                            'icon' => 'fa fa-user',
                            'url' => ['/personal/person/create'],
                        ],
                        [
                            'label' => 'รายการบุคคล',
                            'icon' => 'fa fa-list',
                            'url' => ['/personal/person/index'],
                        ],
                        [
                            'label' => 'ข้อมูลพื้นฐาน ',
                            'icon' => 'fa fa-cogs',
                            'url' => '#',
                            'items' => [
                                [
                                    'label' => 'ฝ่าย',
                                    'icon' => 'fa fa-building-o',
                                    'url' => ['/personal/department/index'],
                                ],
                                
                            ],
                        ],
                    ],
                ],
            ],
        ]) ?>

        

    </section>

</aside>
