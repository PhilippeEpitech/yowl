<?php

namespace Database\Seeders;

use App\Models\Articles;
use App\Models\Comments;
use App\Models\User;
use Carbon\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ArticlesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\Articles::factory(10)->create();
        \App\Models\User::factory(3)->create()->each(
            fn ($user) => $user->articles()->saveMany(\App\Models\Articles::factory(3)->make())
        );

        // User::factory(10)->has(Articles::factory(random_int(5,10))->has(Comments::factory(random_int(2,3))))->make();
    }
}