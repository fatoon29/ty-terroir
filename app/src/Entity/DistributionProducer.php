<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * DistributionProducer
 *
 * @ORM\Table(name="distribution_producer", indexes={@ORM\Index(name="distribution_producer_producer_id_foreign", columns={"producer_id"}), @ORM\Index(name="distribution_producer_distribution_id_foreign", columns={"distribution_id"})})
 * @ORM\Entity
 */
class DistributionProducer
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
     * @var \Distribution
     *
     * @ORM\ManyToOne(targetEntity="Distribution")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="distribution_id", referencedColumnName="id")
     * })
     */
    private $distribution;

    /**
     * @var \Producer
     *
     * @ORM\ManyToOne(targetEntity="Producer")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="producer_id", referencedColumnName="id")
     * })
     */
    private $producer;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getProducer(): ?Producer
    {
        return $this->producer;
    }

    public function setProducer(?Producer $producer): self
    {
        $this->producer = $producer;

        return $this;
    }


}
