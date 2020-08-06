<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200806103555 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE Orders ADD CONSTRAINT FK_E283F8D8FE6E88D7 FOREIGN KEY (idUser) REFERENCES Users (id)');
        $this->addSql('ALTER TABLE Orders ADD CONSTRAINT FK_E283F8D8C3F36F5F FOREIGN KEY (idProduct) REFERENCES Products (id)');
        $this->addSql('ALTER TABLE PaymentsData ADD CONSTRAINT FK_3042D2D4FE6E88D7 FOREIGN KEY (idUser) REFERENCES Users (id)');
        $this->addSql('ALTER TABLE Products ADD nombre_personnes INT NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE Orders DROP FOREIGN KEY FK_E283F8D8FE6E88D7');
        $this->addSql('ALTER TABLE Orders DROP FOREIGN KEY FK_E283F8D8C3F36F5F');
        $this->addSql('ALTER TABLE PaymentsData DROP FOREIGN KEY FK_3042D2D4FE6E88D7');
        $this->addSql('ALTER TABLE Products DROP nombre_personnes');
    }
}
