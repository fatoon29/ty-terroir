<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DirectusFiles
 *
 * @ORM\Table(name="directus_files", indexes={@ORM\Index(name="directus_files_modified_by_foreign", columns={"modified_by"}), @ORM\Index(name="directus_files_folder_foreign", columns={"folder"}), @ORM\Index(name="directus_files_uploaded_by_foreign", columns={"uploaded_by"})})
 * @ORM\Entity
 */
class DirectusFiles
{
    /**
     * @var string
     *
     * @ORM\Column(name="id", type="string", length=36, nullable=false, options={"fixed"=true})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="filename_disk", type="string", length=255, nullable=true)
     */
    private $filenameDisk;

    public function getId(): ?string
    {
        return $this->id;
    }

    public function getFilenameDisk(): ?string
    {
        return $this->filenameDisk;
    }

    public function setFilenameDisk(?string $filenameDisk): self
    {
        $this->filenameDisk = $filenameDisk;

        return $this;
    }

}
