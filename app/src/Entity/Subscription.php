<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Subscription
 *
 * @ORM\Table(name="subscription", indexes={@ORM\Index(name="subscription_member_foreign", columns={"member"}), @ORM\Index(name="subscription_user_updated_foreign", columns={"user_updated"}), @ORM\Index(name="subscription_association_foreign", columns={"association"}), @ORM\Index(name="subscription_city_foreign", columns={"city"}), @ORM\Index(name="subscription_user_created_foreign", columns={"user_created"})})
 * @ORM\Entity
 */
class Subscription
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
     * @var int|null
     *
     * @ORM\Column(name="sort", type="integer", nullable=true)
     */
    private $sort;

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
     * @var int|null
     *
     * @ORM\Column(name="duration", type="integer", nullable=true)
     */
    private $duration;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fee_amount", type="decimal", precision=10, scale=5, nullable=true)
     */
    private $feeAmount;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="fee_date", type="datetime", nullable=true)
     */
    private $feeDate;

    /**
     * @var string|null
     *
     * @ORM\Column(name="fee_method", type="string", length=255, nullable=true)
     */
    private $feeMethod;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="subscription_date", type="date", nullable=true)
     */
    private $subscriptionDate;

    /**
     * @var string|null
     *
     * @ORM\Column(name="street", type="string", length=255, nullable=true)
     */
    private $street;

    /**
     * @var \Association
     *
     * @ORM\ManyToOne(targetEntity="Association")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="association", referencedColumnName="id")
     * })
     */
    private $association;

    /**
     * @var \DirectusUsers
     *
     * @ORM\ManyToOne(targetEntity="DirectusUsers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="member", referencedColumnName="id")
     * })
     */
    private $member;

    /**
     * @var \DirectusUsers
     *
     * @ORM\ManyToOne(targetEntity="DirectusUsers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_updated", referencedColumnName="id")
     * })
     */
    private $userUpdated;

    /**
     * @var \City
     *
     * @ORM\ManyToOne(targetEntity="City")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="city", referencedColumnName="id")
     * })
     */
    private $city;

    /**
     * @var \DirectusUsers
     *
     * @ORM\ManyToOne(targetEntity="DirectusUsers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_created", referencedColumnName="id")
     * })
     */
    private $userCreated;

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

    public function getSort(): ?int
    {
        return $this->sort;
    }

    public function setSort(?int $sort): self
    {
        $this->sort = $sort;

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

    public function getDuration(): ?int
    {
        return $this->duration;
    }

    public function setDuration(?int $duration): self
    {
        $this->duration = $duration;

        return $this;
    }

    public function getFeeAmount(): ?string
    {
        return $this->feeAmount;
    }

    public function setFeeAmount(?string $feeAmount): self
    {
        $this->feeAmount = $feeAmount;

        return $this;
    }

    public function getFeeDate(): ?\DateTimeInterface
    {
        return $this->feeDate;
    }

    public function setFeeDate(?\DateTimeInterface $feeDate): self
    {
        $this->feeDate = $feeDate;

        return $this;
    }

    public function getFeeMethod(): ?string
    {
        return $this->feeMethod;
    }

    public function setFeeMethod(?string $feeMethod): self
    {
        $this->feeMethod = $feeMethod;

        return $this;
    }

    public function getSubscriptionDate(): ?\DateTimeInterface
    {
        return $this->subscriptionDate;
    }

    public function setSubscriptionDate(?\DateTimeInterface $subscriptionDate): self
    {
        $this->subscriptionDate = $subscriptionDate;

        return $this;
    }

    public function getStreet(): ?string
    {
        return $this->street;
    }

    public function setStreet(?string $street): self
    {
        $this->street = $street;

        return $this;
    }

    public function getAssociation(): ?Association
    {
        return $this->association;
    }

    public function setAssociation(?Association $association): self
    {
        $this->association = $association;

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

    public function getUserUpdated(): ?DirectusUsers
    {
        return $this->userUpdated;
    }

    public function setUserUpdated(?DirectusUsers $userUpdated): self
    {
        $this->userUpdated = $userUpdated;

        return $this;
    }

    public function getCity(): ?City
    {
        return $this->city;
    }

    public function setCity(?City $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getUserCreated(): ?DirectusUsers
    {
        return $this->userCreated;
    }

    public function setUserCreated(?DirectusUsers $userCreated): self
    {
        $this->userCreated = $userCreated;

        return $this;
    }


}
