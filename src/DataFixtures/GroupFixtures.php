<?php

namespace App\DataFixtures;

use App\Entity\GroupTrick;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class GroupFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $groupsName = [
            "grab" => "Un grab consiste à attraper la planche avec la main pendant le saut. Le verbe anglais to grab signifie « attraper. »",
            "rotation" => "On désigne par le mot « rotation » uniquement des rotations horizontales ; les rotations verticales sont des flips. Le principe est d'effectuer une rotation horizontale pendant le saut, puis d'attérir en position switch ou normal.",
            "flips" => "Un flip est une rotation verticale. On distingue les front flips, rotations en avant, et les back flips, rotations en arrière.",
            "slide" => "Un slide consiste à glisser sur une barre de slide. Le slide se fait soit avec la planche dans l'axe de la barre, soit perpendiculaire, soit plus ou moins désaxé."
        ];

        foreach ($groupsName as $key => $value) {
            $groupName = new GroupTrick;
            $groupName->setName($key)
                ->setDescription($value)
                ->setUser($manager->getRepository(User::class)->find(rand(1, 11)));
            $manager->persist($groupName);
        }
        $manager->flush();
    }
}
