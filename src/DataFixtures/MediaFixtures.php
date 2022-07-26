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
        $j = 1;
        for ($i = 0; $i < 24; $i++) {

            $media = new Media();
            $array = ["image"];
            $media->setUrl('http://via.placeholder.com/720x420')
                ->setType($array)
                ->setUser($manager->getRepository(User::class)->find(rand(1, 11)))
                ->setTrick($manager->getRepository(Trick::class)->find($j));
            $manager->persist($media);
            $j++;
            if ($j === 13) {
                $j = 1;
            }
        }
        $manager->flush();
    }
}
