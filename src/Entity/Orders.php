<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Orders
 *
 * @ORM\Table(name="Orders", indexes={@ORM\Index(name="idProduct", columns={"idProduct"}), @ORM\Index(name="idUser", columns={"idUser"})})
 * @ORM\Entity(repositoryClass="App\Repository\OrdersRepository")
 */
class Orders
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
     * @ORM\Column(name="orderDate", type="string", length=255, nullable=true)
     */
    private $orderdate;

    /**
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idUser", referencedColumnName="id")
     * })
     */
    private $iduser;

    /**
     * @var \Products
     *
     * @ORM\ManyToOne(targetEntity="Products")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idProduct", referencedColumnName="id")
     * })
     */
    private $idproduct;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getOrderdate(): ?string
    {
        return $this->orderdate;
    }

    public function setOrderdate(?string $orderdate): self
    {
        $this->orderdate = $orderdate;

        return $this;
    }

    public function getIduser(): ?Users
    {
        return $this->iduser;
    }

    public function setIduser(?Users $iduser): self
    {
        $this->iduser = $iduser;

        return $this;
    }

    public function getIdproduct(): ?Products
    {
        return $this->idproduct;
    }

    public function setIdproduct(?Products $idproduct): self
    {
        $this->idproduct = $idproduct;

        return $this;
    }


}
