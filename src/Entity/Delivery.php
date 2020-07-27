<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Delivery
 *
 * @ORM\Table(name="Delivery", indexes={@ORM\Index(name="idUser", columns={"idUser"}), @ORM\Index(name="idSubscription", columns={"idSubscription"})})
 * @ORM\Entity(repositoryClass="App\Repository\DeliveryRepository")
 */
class Delivery
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
     * @ORM\Column(name="firstname", type="string", length=255, nullable=true)
     */
    private $firstname;

    /**
     * @var string|null
     *
     * @ORM\Column(name="lastname", type="string", length=255, nullable=true)
     */
    private $lastname;

    /**
     * @var string|null
     *
     * @ORM\Column(name="email", type="string", length=255, nullable=true)
     */
    private $email;

    /**
     * @var string|null
     *
     * @ORM\Column(name="address", type="string", length=255, nullable=true)
     */
    private $address;

    /**
     * @var string|null
     *
     * @ORM\Column(name="postalCode", type="string", length=10, nullable=true)
     */
    private $postalcode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="shippedDate", type="string", length=255, nullable=true)
     */
    private $shippeddate;

    /**
     * @var string|null
     *
     * @ORM\Column(name="city", type="string", length=255, nullable=true)
     */
    private $city;

    /**
     * @var string|null
     *
     * @ORM\Column(name="country", type="string", length=100, nullable=true)
     */
    private $country;

    /**
     * @var string|null
     *
     * @ORM\Column(name="deliveryDate", type="string", length=255, nullable=true)
     */
    private $deliverydate;

    /**
     * @var string|null
     *
     * @ORM\Column(name="labelProduct", type="string", length=255, nullable=true)
     */
    private $labelproduct;

    /**
     * @var int
     *
     * @ORM\Column(name="idUser", type="integer", nullable=false)
     */
    private $iduser;

    /**
     * @var \Subscriptions
     *
     * @ORM\ManyToOne(targetEntity="Subscriptions")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idSubscription", referencedColumnName="id")
     * })
     */
    private $idsubscription;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    public function setFirstname(?string $firstname): self
    {
        $this->firstname = $firstname;

        return $this;
    }

    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    public function setLastname(?string $lastname): self
    {
        $this->lastname = $lastname;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(?string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(?string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getPostalcode(): ?string
    {
        return $this->postalcode;
    }

    public function setPostalcode(?string $postalcode): self
    {
        $this->postalcode = $postalcode;

        return $this;
    }

    public function getShippeddate(): ?string
    {
        return $this->shippeddate;
    }

    public function setShippeddate(?string $shippeddate): self
    {
        $this->shippeddate = $shippeddate;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(?string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(?string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getDeliverydate(): ?string
    {
        return $this->deliverydate;
    }

    public function setDeliverydate(?string $deliverydate): self
    {
        $this->deliverydate = $deliverydate;

        return $this;
    }

    public function getLabelproduct(): ?string
    {
        return $this->labelproduct;
    }

    public function setLabelproduct(?string $labelproduct): self
    {
        $this->labelproduct = $labelproduct;

        return $this;
    }

    public function getIduser(): ?int
    {
        return $this->iduser;
    }

    public function setIduser(int $iduser): self
    {
        $this->iduser = $iduser;

        return $this;
    }

    public function getIdsubscription(): ?Subscriptions
    {
        return $this->idsubscription;
    }

    public function setIdsubscription(?Subscriptions $idsubscription): self
    {
        $this->idsubscription = $idsubscription;

        return $this;
    }


}
