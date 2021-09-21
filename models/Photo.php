<?php

namespace app\models;

use app\commands\HelloController;
use yii\db\ActiveRecord;

class Photo extends ActiveRecord
{
    static function tableName(): string
    {
        return 'photos';
    }

    static public function deleteProjectPhotos($projectId)
    {
        $photos = Photo::findAll(['project_id' => $projectId]);
        foreach ($photos as $photo)
        {
            unlink($photo['path']);
            $photo->delete();
        }
    }

    static public function getProjectPhotos($projectId): array
    {
        return Photo::findAll(['project_id' => $projectId]);
    }
}