<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Payments
 *
 * @ORM\Table(name="Payments", indexes={@ORM\Index(name="idUser", columns={"idUser"}), @ORM\Index(name="idSubscription", columns={"idSubscription"})})
 * @ORM\Entity(repositoryClass="App\Repository\PaymentsRepository")
 */
class Payments
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
     * @ORM\Column(name="checkNumber", type="string", length=255, nullable=true)
     */
    private $checknumber;

    /**
     * @var int
     *
     * @ORM\Column(name="idProduct", type="integer", nullable=false)
     */
    private $idproduct;

    /**
     * @var string|null
     *
     * @ORM\Column(name="paymentDate", type="string", length=255, nullable=true)
     */
    private $paymentdate;

    /**
     * @var string|null
     *
     * @ORM\Column(name="amount", type="string", length=100, nullable=true)
     */
    private $amount;

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

    public function getChecknumber(): ?string
    {
        return $this->checknumber;
    }

    public function setChecknumber(?string $checknumber): self
    {
        $this->checknumber = $checknumber;

        return $this;
    }

    public function getIdproduct(): ?int
    {
        return $this->idproduct;
    }

    public function setIdproduct(int $idproduct): self
    {
        $this->idproduct = $idproduct;

        return $this;
    }

    public function getPaymentdate(): ?string
    {
        return $this->paymentdate;
    }

    public function setPaymentdate(?string $paymentdate): self
    {
        $this->paymentdate = $paymentdate;

        return $this;
    }

    public function getAmount(): ?string
    {
        return $this->amount;
    }

    public function setAmount(?string $amount): self
    {
        $this->amount = $amount;

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
