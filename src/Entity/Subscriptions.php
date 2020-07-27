<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Subscriptions
 *
 * @ORM\Table(name="Subscriptions", indexes={@ORM\Index(name="idOrder", columns={"idOrder"})})
 * @ORM\Entity(repositoryClass="App\Repository\SubscriptionsRepository")
 */
class Subscriptions
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="status", type="string", length=255, nullable=true)
     */
    private $status;

    /**
     * @var \Orders
     *
     * @ORM\ManyToOne(targetEntity="Orders")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idOrder", referencedColumnName="id")
     * })
     */
    private $idorder;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(?string $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getIdorder(): ?Orders
    {
        return $this->idorder;
    }

    public function setIdorder(?Orders $idorder): self
    {
        $this->idorder = $idorder;

        return $this;
    }


}
