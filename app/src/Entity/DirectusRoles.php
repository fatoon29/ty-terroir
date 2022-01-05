<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DirectusRoles
 *
 * @ORM\Table(name="directus_roles")
 * @ORM\Entity
 */
class DirectusRoles
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
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=100, nullable=false)
     */
    private $name;

    /**
     * @var bool
     *
     * @ORM\Column(name="admin_access", type="boolean", nullable=false)
     */
    private $adminAccess = '0';

    public function getId(): ?string
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getAdminAccess(): ?bool
    {
        return $this->adminAccess;
    }

    public function setAdminAccess(bool $adminAccess): self
    {
        $this->adminAccess = $adminAccess;

        return $this;
    }

}
