<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Paymentsdata
 *
 * @ORM\Table(name="PaymentsData", indexes={@ORM\Index(name="idUser", columns={"idUser"})})
 * @ORM\Entity
 */
class PaymentsData
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
     * @var string
     *
     * @ORM\Column(name="firstname", type="string", length=255, nullable=false)
     */
    private $firstname;

    /**
     * @var string
     *
     * @ORM\Column(name="lastname", type="string", length=255, nullable=false)
     */
    private $lastname;

    /**
     * @var string
     *
     * @ORM\Column(name="checkNumber", type="string", length=255, nullable=false)
     */
    private $checknumber;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="expirationDate", type="datetime", nullable=false)
     */
    private $expirationdate;

    /**
     * @var int
     *
     * @ORM\Column(name="securityCode", type="integer", nullable=false)
     */
    private $securitycode;

    /**
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idUser", referencedColumnName="id")
     * })
     */
    private $iduser;


}
