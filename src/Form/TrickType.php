<?php

namespace App\Form;

use App\Entity\GroupTrick;
use App\Entity\Trick;
use Doctrine\ORM\EntityManagerInterface;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class TrickType extends AbstractType
{
    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    public function buildForm(FormBuilderInterface $builder, array $options): void
    {

        $builder
            ->add('name', TextType::class, [
                'label' => 'Nom de la figure',
                'attr' => [
                    'placeholder' => 'Ex: Stalefish',
                    'class' => 'form-control required',
                ]
            ])
            ->add('description', TextareaType::class, [
                'attr' => [
                    'placeholder' => 'Entrez une description ...',
                    'class' => 'form-control required textareaCommentary',
                    'rows' => '4'
                ]
            ])
            ->add('groupTrick', EntityType::class, [
                'label' => 'Groupe associé à la figure',
                'class' => GroupTrick::class,
                'placeholder' => 'Choisir un groupe',
            ])
            ->add('medias', CollectionType::class, [
                'label' => false,
                'entry_type'   => MediaType::class,
                'entry_options' => ['label' => false],
                'allow_add' => true,
            ])
            ->add('save', SubmitType::class, [
                'label' => 'Confirmer'
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Trick::class,
        ]);
    }
}
