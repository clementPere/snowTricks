<?php

namespace App\DataFixtures;

use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class AppFixtures extends Fixture implements DependentFixtureInterface
{

    public function getDependencies()
    {
        return [
            UserFixtures::class,
            GroupFixtures::class,
            TrickFixtures::class,
            MediaFixtures::class,
            CommentaryFixtures::class
        ];
    }

    public function load(ObjectManager $manager)
    {
    }
}
