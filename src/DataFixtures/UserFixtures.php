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
            ->setUrlImage("https://images.pexels.com/photos/848609/pexels-photo-848609.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1")
            ->setRoles(["ROLE_ADMIN"])
            ->setIsVerified(true);
        $password = $this->hasher->hashPassword($user, 'test');
        $user->setPassword($password);
        $manager->persist($user);
    }

    private function addUser(ObjectManager $manager): void
    {
        $arrayImageUrl = [
            "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/532220/pexels-photo-532220.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/447329/pexels-photo-447329.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/834863/pexels-photo-834863.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1",
            "https://images.pexels.com/photos/1181519/pexels-photo-1181519.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1"
        ];
        $faker = Faker\Factory::create('fr_FR');
        for ($i = 0; $i < 10; $i++) {
            $user = new User();
            $firstname = $faker->firstName;
            $lastname = $faker->lastName;
            $user->setUsername($firstname . ' ' . $lastname)
                ->setEmail($firstname . '.' . $lastname . '@' . $faker->freeEmailDomain)
                ->setUrlImage($arrayImageUrl[$i])
                ->setIsVerified(true);
            $password = $this->hasher->hashPassword($user, $firstname . '.' . $lastname . '1234');
            $user->setPassword($password);
            $manager->persist($user);
        }
    }
}
