<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserFixtures extends Fixture
{
    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }

    public function load(ObjectManager $manager): void
    {
        $this->addAdmin($manager);
        $this->addUser($manager);
        $manager->flush();
    }

    private function addAdmin(ObjectManager $manager): void
    {
        $user = new User();
        $user->setUsername('admin')
            ->setEmail("admin@test.com")
            ->setUrlImage("https://picsum.photos/1920/1080?random=132")
            ->setRoles(["ROLE_ADMIN"]);
        $password = $this->hasher->hashPassword($user, 'test');
        $user->setPassword($password);
        $manager->persist($user);
    }

    private function addUser(ObjectManager $manager): void
    {
        $faker = Faker\Factory::create('fr_FR');
        for ($i = 0; $i < 10; $i++) {
            $user = new User();
            $firstname = $faker->firstName;
            $lastname = $faker->lastName;
            $user->setUsername($firstname . ' ' . $lastname)
                ->setEmail($firstname . '.' . $lastname . '@' . $faker->freeEmailDomain)
                ->setUrlImage("https://picsum.photos/1920/1080?random=" . $i);
            $password = $this->hasher->hashPassword($user, $faker->firstName . '.' . $faker->lastName . '1234');
            $user->setPassword($password);
            $manager->persist($user);
        }
    }
}
