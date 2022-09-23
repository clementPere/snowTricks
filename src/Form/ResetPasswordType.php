<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;

class ResetPasswordType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder->add('password', RepeatedType::class, [
            'type' => PasswordType::class,
            'invalid_message' => 'Les deux mots de passe doivent être identique',
            'options' => ['attr' => ['class' => 'password-field text-black']],
            'required' => true,
            'first_options'  => [
                'label' => 'Nouveau mot de passe',
                'row_attr' => [
                    'class' => 'col-6 m-auto  mt-4',
                ],
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Nouveau mot de passe'
                ],
                'label_attr' => [
                    'class' => 'text-white',
                ]
            ],
            'second_options' => [
                'label' => 'Confirmer le nouveau mot de passe',
                'row_attr' => [
                    'class' => 'col-6 m-auto  mt-4',
                ],
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Mot de passe identique'
                ],
                'label_attr' => [
                    'class' => 'text-white',
                ]
            ],

        ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
    }
}
