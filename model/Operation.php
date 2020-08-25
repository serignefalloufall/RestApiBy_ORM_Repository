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
}
