<?php

namespace App\DataFixtures;

use App\Entity\GroupTrick;
use App\Entity\Trick;
use App\Entity\User;
use DateTimeImmutable;
use DateTimeZone;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class TrickFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {

        $tricks = [
            "grab" => [
                "mute" => "saisie de la carre frontside de la planche entre les deux pieds avec la main avant",
                "sad" => "saisie de la carre backside de la planche, entre les deux pieds, avec la main avant",
                "indy" => "saisie de la carre frontside de la planche, entre les deux pieds, avec la main arrière",
                "stalefish" => "saisie de la carre backside de la planche entre les deux pieds avec la main arrière",
            ],
            "rotation" => [
                "180" => "désigne un demi-tour, soit 180 degrés d'angle",
                "360" => "trois six pour un tour complet",
                "540" => "cinq quatre pour un tour et demi",
                "720" => "sept deux pour deux tours complets",
            ],
            "flips" => [
                "front flip" => "Une rotation verticale en avant",
                "back flip" => "Une rotation verticale en arrière",
            ],
            "slide" => [
                "tail slide" => "Un slide avec l'arrière de la planche sur la barre",
                "nose slide" => "Un slide avec l'avant de la planche sur la barre",
            ]
        ];

        foreach ($tricks as $key => $value) {
            if ($key === "grab") {
                $this->setTrick($manager, $key, $value);
            }
            if ($key === "rotation") {
                $this->setTrick($manager, $key, $value);
            }
            if ($key === "flips") {
                $this->setTrick($manager, $key, $value);
            }
            if ($key === "slide") {
                $this->setTrick($manager, $key, $value);
            }
        }
        $manager->flush();
    }

    private function setTrick($manager, $group, $tricks)
    {
        foreach ($tricks as $name => $description) {
            $trick = new Trick;
            $trick->setName($name)
                ->setSlug(str_replace(" ", "-", $name))
                ->setDescription($description)
                ->setGroupTrick($manager->getRepository(GroupTrick::class)->findOneBy(["name" => $group]))
                ->setUser($manager->getRepository(User::class)->find(rand(1, 11)))
                ->setCreatedAt(new DateTimeImmutable('now'));
            $manager->persist($trick);
        }
    }
}
