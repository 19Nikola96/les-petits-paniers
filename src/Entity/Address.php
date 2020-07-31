<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Address
 *
 * @ORM\Table(name="Address", indexes={@ORM\Index(name="idUser", columns={"idUser"})})
* @ORM\Entity(repositoryClass="App\Repository\AddressRepository")
 */
class Address
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
     * @ORM\Column(name="postalCode", type="string", length=10, nullable=true)
     */
    private $postalcode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="city", type="string", length=255, nullable=true)
     */
    private $city;

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
     * @return string|null
     */
    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    /**
     * @param string|null $firstname
     * @return Address
     */
    public function setFirstname(?string $firstname): Address
    {
        $this->firstname = $firstname;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    /**
     * @param string|null $lastname
     * @return Address
     */
    public function setLastname(?string $lastname): Address
    {
        $this->lastname = $lastname;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getPostalcode(): ?string
    {
        return $this->postalcode;
    }

    /**
     * @param string|null $postalcode
     * @return Address
     */
    public function setPostalcode(?string $postalcode): Address
    {
        $this->postalcode = $postalcode;
        return $this;
    }

    /**
     * @return string|null
     */
    public function getCity(): ?string
    {
        return $this->city;
    }

    /**
     * @param string|null $city
     * @return Address
     */
    public function setCity(?string $city): Address
    {
        $this->city = $city;
        return $this;
    }

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $addressHome;

    /**
     * @return \Users
     */
    public function getIduser(): \Users
    {
        return $this->iduser;
    }

    /**
     * @param \Users $iduser
     * @return Address
     */
    public function setIduser(\Users $iduser): Address
    {
        $this->iduser = $iduser;
        return $this;
    }

    public function getAddressHome(): ?string
    {
        return $this->addressHome;
    }

    public function setAddressHome(string $addressHome): self
    {
        $this->addressHome = $addressHome;

        return $this;
    }


}
