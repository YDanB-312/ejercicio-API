<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Apprentice extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'email', 'cell_number', 'course_id', 'computer_id'];

    protected $allowIncluded = ['computer', 'course'];

    public function scopeIncluded(Builder $query)
    {
        if (empty($this->allowIncluded) || empty(request('included'))) {
            return;
        }

        $relations = explode(',', request('included'));
        $allowIncluded = collect($this->allowIncluded);

        foreach ($relations as $key => $relationship) {
            if (!$allowIncluded->contains($relationship)) {
                unset($relations[$key]);
            }
        }

        $query->with($relations);
    }

    public function computer()
    {
        return $this->belongsTo(Computer::class);
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
