<?php
use yii\helpers\Url;
use yii\helpers\Html;
$this->title = 'ปฏิทินการจองห้องประชุม';
?>
<div class="box box-info box-solid">
    <div class="box-header">
        <h3 class="box-title"><i class="fa fa-calendar-check-o"></i> <?= Html::encode($this->title) ?></h3>
    </div>
    <div class="box-body">
<?= yii2fullcalendar\yii2fullcalendar::widget([
        'header' => [
            'left' => 'prev,next today',
            'center' => 'title',
            'right' => 'month,agendaWeek,agendaDay'
        ],
        'clientOptions' => [
            'lang' => 'th',
            'lazyFetching' => true,
            'timeFormat' => 'H:mm',
            'forceEventDuration' => true,
            'ignoreTimezone' => true,
            
        ],
        'ajaxEvents' => Url::to(['/meeting/default/jsoncalendar'])
    ]);
?>
    </div>
</div>