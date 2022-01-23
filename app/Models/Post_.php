<?php

namespace App\Models;



class Post
{
    private static $blog_posts = [
        [
        "title" => "Judul Tulisan Pertama",
        "slug" => "judul-post-pertama",
        "author" => "Deny Maulana",
        "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sed amet at incidunt. Earum ea repudiandae placeat qui perspiciatis! Veritatis quibusdam aperiam maiores ea distinctio cum, harum neque? Ad, debitis aut, dicta odio delectus accusamus mollitia vitae suscipit perferendis voluptas provident ab rerum, facere ullam eos obcaecati iste eveniet saepe atque distinctio. Aut dicta consequuntur beatae sequi quaerat? Ex laudantium doloremque blanditiis aspernatur vel nesciunt quisquam sit cum tempore molestias beatae aliquid, animi quas corrupti debitis? At ipsum repudiandae sed eum!"
        ],
        [
        "title" => "Judul Tulisan Kedua",
        "slug" => "judul-post-kedua",
        "author" => "Kaka Khan",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, animi? Blanditiis fuga nesciunt quia nihil nostrum? Beatae nobis ipsa magni quisquam, sapiente, consequuntur suscipit cum vero distinctio nulla veniam iusto provident vitae quis aliquid qui exercitationem itaque labore omnis. Asperiores quisquam quasi saepe accusantium laboriosam? Unde consequatur voluptatem blanditiis quasi quidem tempora beatae quia. A facere est cupiditate quibusdam! Architecto tempora explicabo quaerat rem quam quod, velit alias eligendi. Labore placeat dolore praesentium officia dignissimos voluptates nisi voluptatum, sint ullam vitae soluta doloribus nulla animi maxime, quis impedit saepe hic nostrum fugit. Aliquam vitae blanditiis iure voluptatibus nobis impedit fuga."
        ]
        ];

        public static function all()
        {
            return collect(self::$blog_posts);
        }

        public static function find($slug)
        {
            $posts = static::all();
             return $posts->firstWhere('slug', $slug);

            }
            
}
