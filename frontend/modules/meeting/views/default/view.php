<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $model backend\modules\meeting\models\Meeting */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'การจองห้องประชุม', 'url' => ['/site/index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box box-info box-solid">
    <div class="box-header">
        <h3 class="box-title"><i class="fa fa-calendar-check-o"></i> <?= Html::encode($this->title) ?></h3>
    </div>
    <div class="box-body">

        
        <?=
        DetailView::widget([
            'model' => $model,
            'attributes' => [
                //'id',
                'title',
                'description:ntext',
                'date_start',
                'date_end',
                'created_at',
                'updated_at',
                'room.name',
                [
                    'attribute' => 'user_id',
                    'value' => $model->user->firstname.' '.$model->user->lastname,
                ],
                //'status',
                [
                    'attribute' => 'status',
                    'format' => 'html',
                    'value' => Yii::$app->meeting->getMeetingStatus($model->status),
                ]
            ],
        ])
        ?>
        <h4>รายการอุปกรณ์ที่ใช้</h4>
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                [
                    'attribute' => 'equipment_id',
                    'value' => function($model){
                        return $model->equipment->equipment;
                    }
                ]
            ]
        ])?>
    </div>
</div>