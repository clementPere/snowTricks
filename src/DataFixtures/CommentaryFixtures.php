<?php

namespace App\DataFixtures;

use App\Entity\Commentary;
use App\Entity\Trick;
use App\Entity\User;
use DateTimeImmutable;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker;

class CommentaryFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Faker\Factory::create('fr_FR');

        for ($i = 0; $i < 100; $i++) {
            $commentary = new Commentary();
            $commentary->setContent($faker->realText(rand(100, 600)))
                ->setUser($manager->getRepository(User::class)->find(rand(1, 11)))
                ->setTrick($manager->getRepository(Trick::class)->find(rand(1, 12)))
                ->setCreatedAt(new DateTimeImmutable('now'));
            $manager->persist($commentary);
        }


        $manager->flush();
    }
}
