<?php

namespace App\Entity;

use App\Entity\Distribution;
use Doctrine\ORM\Mapping as ORM;

/**
 * Order
 *
 * @ORM\Table(name="order", indexes={@ORM\Index(name="order_member_foreign", columns={"member"}), @ORM\Index(name="order_ditribution_foreign", columns={"ditribution"})})
 * @ORM\Entity
 */
class Order
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false, options={"unsigned"=true})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="status", type="string", length=255, nullable=false, options={"default"="draft"})
     */
    private $status = 'draft';

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="date_created", type="datetime", nullable=true)
     */
    private $dateCreated;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="date_updated", type="datetime", nullable=true)
     */
    private $dateUpdated;

    /**
     * @var string|null
     *
     * @ORM\Column(name="total", type="decimal", precision=10, scale=5, nullable=true)
     */
    private $total;

    /**
     * @var \Distribution
     *
     * @ORM\ManyToOne(targetEntity="Distribution")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="distribution", referencedColumnName="id")
     * })
     */
    private $distribution;

    /**
     * @var \DirectusUsers
     *
     * @ORM\ManyToOne(targetEntity="DirectusUsers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="member", referencedColumnName="id")
     * })
     */
    private $member;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(string $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getDateCreated(): ?\DateTimeInterface
    {
        return $this->dateCreated;
    }

    public function setDateCreated(?\DateTimeInterface $dateCreated): self
    {
        $this->dateCreated = $dateCreated;

        return $this;
    }

    public function getDateUpdated(): ?\DateTimeInterface
    {
        return $this->dateUpdated;
    }

    public function setDateUpdated(?\DateTimeInterface $dateUpdated): self
    {
        $this->dateUpdated = $dateUpdated;

        return $this;
    }

    public function getTotal(): ?string
    {
        return $this->total;
    }

    public function setTotal(?string $total): self
    {
        $this->total = $total;

        return $this;
    }

    public function getDistribution(): ?Distribution
    {
        return $this->distribution;
    }

    public function setDistribution(?Distribution $distribution): self
    {
        $this->distribution = $distribution;

        return $this;
    }

    public function getMember(): ?DirectusUsers
    {
        return $this->member;
    }

    public function setMember(?DirectusUsers $member): self
    {
        $this->member = $member;

        return $this;
    }


}
