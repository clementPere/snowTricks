<?php

namespace App\DataFixtures;

use App\Entity\Media;
use App\Entity\Trick;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class MediaFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        for ($i = 0; $i < 10; $i++) {
            $media = new Media();
            $array = ["image"];
            $media->setUrl('http://lorempixel.com/')
                ->setType($array)
                ->setUser($manager->getRepository(User::class)->find(rand(1, 11)))
                ->setTrick($manager->getRepository(Trick::class)->find(rand(1, 12)));
            $manager->persist($media);
            $manager->flush();
        }
    }
}
