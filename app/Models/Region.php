<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Region extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'slug', 
        'meta_title',
        'meta_description',
        'icon_image',
        'banner_image',
        'whatsapp',
        'order_num',
        'is_active'
    ];

    protected $casts = [
        'is_active' => 'boolean',
        'order_num' => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime'
    ];

    // Relationship with region_pages
    public function page()
    {
        return $this->hasOne(RegionPage::class);
    }

    // Accessors for URLs
    public function getIconImageUrlAttribute()
    {
        return $this->icon_image ? asset('storage/' . $this->icon_image) : null;
    }

    public function getBannerImageUrlAttribute()
    {
        return $this->banner_image ? asset('storage/' . $this->banner_image) : null;
    }

    public function getPageUrlAttribute()
    {
        return '/wilayah-detail/' . $this->slug;
    }

    public function getWhatsappLinkAttribute()
    {
        return 'https://wa.me/' . $this->whatsapp;
    }

    // Scopes
    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('order_num')->orderBy('name');
    }

    // Generate unique slug
    public function generateUniqueSlug($name)
    {
        $baseSlug = Str::slug($name);
        $slug = $baseSlug;
        $counter = 1;

        while (static::where('slug', $slug)->where('id', '!=', $this->id ?? 0)->exists()) {
            $slug = $baseSlug . '-' . $counter++;
            if ($counter > 100) {
                $slug = $baseSlug . '-' . time();
                break;
            }
        }

        return $slug;
    }
}