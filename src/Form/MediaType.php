<?php

namespace App\Form;

use App\Entity\Media;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Validator\Constraints\File;

class MediaType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('url', TextareaType::class, [
                'label' => 'Entrer une Url pour ajouter une vidéo (Seulement les vidéo YouTube sont accepté)',
                'attr' => [
                    'placeholder' => 'Ex: https://www.youtube.com/...',
                ],
                'required' => false,
            ])
            ->add('fileMedia', FileType::class, [
                'label' => 'Upload une image au format jpeg ou png',
                'required' => false,
                'mapped' => false,
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/*',
                        ],
                        'mimeTypesMessage' => 'Format de l\'image non valide - format accepté : jpg ou png !',
                        'maxSizeMessage' => 'Taille de l\'image non valide - taille max : 1024KB !',
                        'notReadableMessage' => 'Impossible de lire le fichier !',
                    ])
                ],
            ]);

        // ->add('save', SubmitType::class);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Media::class,
        ]);
    }
}
