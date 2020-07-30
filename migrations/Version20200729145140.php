<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200729145140 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE Address ADD address_home VARCHAR(255) NOT NULL, CHANGE idUser idUser INT DEFAULT NULL');
        $this->addSql('ALTER TABLE PaymentsData CHANGE idUser idUser INT DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE Address DROP address_home, CHANGE idUser idUser INT NOT NULL');
        $this->addSql('ALTER TABLE PaymentsData CHANGE idUser idUser INT NOT NULL');
    }
}
