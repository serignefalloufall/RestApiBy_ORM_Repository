<?php

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="operation")
 */
class Operation
{
        /** 
         * @ORM\Id
         * @ORM\Column(type="integer")
         * @ORM\GeneratedValue
         */
        private $id;
        /** 
         * @ORM\Column(type="decimal") 
         */
        private $montant;
       
        /** 
         * @ORM\Column(type="string") 
         */
        private $date_operation;

         /**
         * Many operationte have one type_operation. This is the owning side.
         * @ORM\ManyToOne(targetEntity="Typeoperation", inversedBy="operations")
         * @ORM\JoinColumn(name="type_operation_id", referencedColumnName="id")
         */
        private $type_operation_id;

         /**
         * Many operation have one compte. This is the owning side.
         * @ORM\ManyToOne(targetEntity="Compte", inversedBy="operations")
         * @ORM\JoinColumn(name="compte_id", referencedColumnName="id")
         */
        private $compte_id;
        
       

        /**
         * Get many operationte have one type_operation. This is the owning side.
         */ 
        public function getType_operation_id()
        {
                return $this->type_operation_id;
        }

        /**
         * Set many operationte have one type_operation. This is the owning side.
         *
         * @return  self
         */ 
        public function setType_operation_id($type_operation_id)
        {
                $this->type_operation_id = $type_operation_id;

                return $this;
        }

        /**
         * Get the value of id
         */ 
        public function getId()
        {
                return $this->id;
        }

        /**
         * Set the value of id
         *
         * @return  self
         */ 
        public function setId($id)
        {
                $this->id = $id;

                return $this;
        }

        /**
         * Get the value of montant
         */ 
        public function getMontant()
        {
                return $this->montant;
        }

        /**
         * Set the value of montant
         *
         * @return  self
         */ 
        public function setMontant($montant)
        {
                $this->montant = $montant;

                return $this;
        }

        /**
         * Get the value of date_operation
         */ 
        public function getDate_operation()
        {
                return $this->date_operation;
        }

        /**
         * Set the value of date_operation
         *
         * @return  self
         */ 
        public function setDate_operation($date_operation)
        {
                $this->date_operation = $date_operation;

                return $this;
        }

        /**
         * Get many operation have one compte. This is the owning side.
         */ 
        public function getCompte_id()
        {
                return $this->compte_id;
        }

        /**
         * Set many operation have one compte. This is the owning side.
         *
         * @return  self
         */ 
        public function setCompte_id($compte_id)
        {
                $this->compte_id = $compte_id;

                return $this;
        }
}
