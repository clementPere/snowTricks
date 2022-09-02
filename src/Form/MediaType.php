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
                'label' => 'Entrer une URL',
                'attr' => [
                    'placeholder' => 'Ex: https://www.youtube.com/...',
                ],
                'required' => false,
            ])
            ->add('fileMedia', FileType::class, [
                'label' => 'Upload une image jpeg/png',
                'required' => false,
                'mapped' => false,
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/*',
                        ],
                        'mimeTypesMessage' => 'Erreur ! merci de nous partager une image (format jpg/png, max 1024KB)',
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
