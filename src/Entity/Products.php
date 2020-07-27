<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Products
 *
 * @ORM\Table(name="Products")
 * @ORM\Entity(repositoryClass="App\Repository\ProductsRepository")
 */
class Products
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
     * @ORM\Column(name="label", type="string", length=255, nullable=true)
     */
    private $label;

    /**
     * @var string|null
     *
     * @ORM\Column(name="photo", type="text", length=65535, nullable=true)
     */
    private $photo;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="text", length=65535, nullable=true)
     */
    private $description;

    /**
     * @var string|null
     *
     * @ORM\Column(name="price", type="string", length=100, nullable=true)
     */
    private $price;

    /**
     * @var string|null
     *
     * @ORM\Column(name="productVendor", type="string", length=255, nullable=true)
     */
    private $productvendor;

    /**
     * @var int|null
     *
     * @ORM\Column(name="quantityInStock", type="integer", nullable=true)
     */
    private $quantityinstock;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLabel(): ?string
    {
        return $this->label;
    }

    public function setLabel(?string $label): self
    {
        $this->label = $label;

        return $this;
    }

    public function getPhoto(): ?string
    {
        return $this->photo;
    }

    public function setPhoto(?string $photo): self
    {
        $this->photo = $photo;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPrice(): ?string
    {
        return $this->price;
    }

    public function setPrice(?string $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getProductvendor(): ?string
    {
        return $this->productvendor;
    }

    public function setProductvendor(?string $productvendor): self
    {
        $this->productvendor = $productvendor;

        return $this;
    }

    public function getQuantityinstock(): ?int
    {
        return $this->quantityinstock;
    }

    public function setQuantityinstock(?int $quantityinstock): self
    {
        $this->quantityinstock = $quantityinstock;

        return $this;
    }


}
