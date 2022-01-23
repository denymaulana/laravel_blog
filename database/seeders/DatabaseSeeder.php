<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Seeder;
use Mockery\Generator\StringManipulation\Pass\Pass;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        

        User::create([
            'name' => 'Deny Maulana',
            'username' => 'denymaulana',
            'email' => 'denymaulana@gmail.com',
            'password' => bcrypt('password')
        ]);

        // User::create([
        //     'name' => 'Kaka Keke',
        //     'email' => 'kaka@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum recusandae perferendis quibusdam eaque aliquid aliquam atque molestias eius excepturi rem odit delectus accusamus, aspernatur quos blanditiis iusto laudantium a perspiciatis. Aut, id recusandae, facere natus et nesciunt enim deserunt sed ad distinctio velit nulla hic explicabo, iusto beatae fuga! Deserunt odit dolores cum aliquam animi nihil praesentium numquam nostrum nesciunt earum labore odio, quam illum illo voluptates laudantium consequuntur modi provident cupiditate architecto quod similique. Illum, accusamus sapiente recusandae ex dolore necessitatibus dolorum vitae omnis inventore officia rerum esse quisquam ea dolores consectetur.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum recusandae perferendis quibusdam eaque aliquid aliquam atque molestias eius excepturi rem odit delectus accusamus, aspernatur quos blanditiis iusto laudantium a perspiciatis. Aut, id recusandae, facere natus et nesciunt enim deserunt sed ad distinctio velit nulla hic explicabo, iusto beatae fuga! Deserunt odit dolores cum aliquam animi nihil praesentium numquam nostrum nesciunt earum labore odio, quam illum illo voluptates laudantium consequuntur modi provident cupiditate architecto quod similique. Illum, accusamus sapiente recusandae ex dolore necessitatibus dolorum vitae omnis inventore officia rerum esse quisquam ea dolores consectetur.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum recusandae perferendis quibusdam eaque aliquid aliquam atque molestias eius excepturi rem odit delectus accusamus, aspernatur quos blanditiis iusto laudantium a perspiciatis. Aut, id recusandae, facere natus et nesciunt enim deserunt sed ad distinctio velit nulla hic explicabo, iusto beatae fuga! Deserunt odit dolores cum aliquam animi nihil praesentium numquam nostrum nesciunt earum labore odio, quam illum illo voluptates laudantium consequuntur modi provident cupiditate architecto quod similique. Illum, accusamus sapiente recusandae ex dolore necessitatibus dolorum vitae omnis inventore officia rerum esse quisquam ea dolores consectetur.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Temporibus possimus repellat doloremque explicabo, quam tempore cum recusandae perferendis quibusdam eaque aliquid aliquam atque molestias eius excepturi rem odit delectus accusamus, aspernatur quos blanditiis iusto laudantium a perspiciatis. Aut, id recusandae, facere natus et nesciunt enim deserunt sed ad distinctio velit nulla hic explicabo, iusto beatae fuga! Deserunt odit dolores cum aliquam animi nihil praesentium numquam nostrum nesciunt earum labore odio, quam illum illo voluptates laudantium consequuntur modi provident cupiditate architecto quod similique. Illum, accusamus sapiente recusandae ex dolore necessitatibus dolorum vitae omnis inventore officia rerum esse quisquam ea dolores consectetur.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

    }
}
