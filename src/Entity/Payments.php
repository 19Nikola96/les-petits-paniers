<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Payments
 *
 * @ORM\Table(name="Payments", indexes={@ORM\Index(name="IdOrder", columns={"IdOrder"})})
 * @ORM\Entity
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
     * @var int
     *
     * @ORM\Column(name="IdOrder", type="integer", nullable=false)
     */
    private $idorder;


}
