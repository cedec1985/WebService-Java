package generated.webservices
{
	 import mx.rpc.xml.Schema
	 public class BaseWsDaoJpaServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseWsDaoJpaServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/wsdl/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://ws.rdvmedecins/" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" attributeFormDefault="unqualified" elementFormDefault="unqualified">
    <xsd:import namespace="http://ws.rdvmedecins/" schemaLocation="http://localhost:8080/serveur-webservice-ejb-dao-jpa-hibernate/WsDaoJpaService?xsd=1"/>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','null'));
			 var xsdXML1:XML = <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://ws.rdvmedecins/" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://ws.rdvmedecins/">
    <xs:element name="ajouterRv" type="tns:ajouterRv"/>
    <xs:element name="ajouterRvResponse" type="tns:ajouterRvResponse"/>
    <xs:element name="getAllClients" type="tns:getAllClients"/>
    <xs:element name="getAllClientsResponse" type="tns:getAllClientsResponse"/>
    <xs:element name="getAllCreneaux" type="tns:getAllCreneaux"/>
    <xs:element name="getAllCreneauxResponse" type="tns:getAllCreneauxResponse"/>
    <xs:element name="getAllMedecins" type="tns:getAllMedecins"/>
    <xs:element name="getAllMedecinsResponse" type="tns:getAllMedecinsResponse"/>
    <xs:element name="getClientById" type="tns:getClientById"/>
    <xs:element name="getClientByIdResponse" type="tns:getClientByIdResponse"/>
    <xs:element name="getCreneauById" type="tns:getCreneauById"/>
    <xs:element name="getCreneauByIdResponse" type="tns:getCreneauByIdResponse"/>
    <xs:element name="getMedecinById" type="tns:getMedecinById"/>
    <xs:element name="getMedecinByIdResponse" type="tns:getMedecinByIdResponse"/>
    <xs:element name="getRvById" type="tns:getRvById"/>
    <xs:element name="getRvByIdResponse" type="tns:getRvByIdResponse"/>
    <xs:element name="getRvMedecinJour" type="tns:getRvMedecinJour"/>
    <xs:element name="getRvMedecinJourResponse" type="tns:getRvMedecinJourResponse"/>
    <xs:element name="supprimerRv" type="tns:supprimerRv"/>
    <xs:element name="supprimerRvResponse" type="tns:supprimerRvResponse"/>
    <xs:complexType name="getRvById">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="xs:long"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getRvByIdResponse">
        <xs:sequence>
            <xs:element minOccurs="0" name="return" type="tns:rv"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="rv">
        <xs:sequence>
            <xs:element minOccurs="0" name="client" type="tns:client"/>
            <xs:element minOccurs="0" name="creneau" type="tns:creneau"/>
            <xs:element minOccurs="0" name="id" type="xs:long"/>
            <xs:element minOccurs="0" name="jour" type="xs:dateTime"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="client">
        <xs:complexContent>
            <xs:extension base="tns:personne">
                <xs:sequence/>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="personne">
        <xs:sequence>
            <xs:element minOccurs="0" name="id" type="xs:long"/>
            <xs:element minOccurs="0" name="nom" type="xs:string"/>
            <xs:element minOccurs="0" name="prenom" type="xs:string"/>
            <xs:element minOccurs="0" name="titre" type="xs:string"/>
            <xs:element minOccurs="0" name="version" type="xs:int"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="creneau">
        <xs:sequence>
            <xs:element minOccurs="0" name="hdebut" type="xs:int"/>
            <xs:element minOccurs="0" name="hfin" type="xs:int"/>
            <xs:element minOccurs="0" name="id" type="xs:long"/>
            <xs:element minOccurs="0" name="mdebut" type="xs:int"/>
            <xs:element minOccurs="0" name="medecin" type="tns:medecin"/>
            <xs:element minOccurs="0" name="mfin" type="xs:int"/>
            <xs:element minOccurs="0" name="version" type="xs:int"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="medecin">
        <xs:complexContent>
            <xs:extension base="tns:personne">
                <xs:sequence/>
            </xs:extension>
        </xs:complexContent>
    </xs:complexType>
    <xs:complexType name="getClientById">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="xs:long"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getClientByIdResponse">
        <xs:sequence>
            <xs:element minOccurs="0" name="return" type="tns:client"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getCreneauById">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="xs:long"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getCreneauByIdResponse">
        <xs:sequence>
            <xs:element minOccurs="0" name="return" type="tns:creneau"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getMedecinById">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="xs:long"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getMedecinByIdResponse">
        <xs:sequence>
            <xs:element minOccurs="0" name="return" type="tns:medecin"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getAllMedecins">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType name="getAllMedecinsResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:medecin"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ajouterRv">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="xs:string"/>
            <xs:element minOccurs="0" name="arg1" type="tns:creneau"/>
            <xs:element minOccurs="0" name="arg2" type="tns:client"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="ajouterRvResponse">
        <xs:sequence>
            <xs:element minOccurs="0" name="return" type="tns:rv"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getAllCreneaux">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="tns:medecin"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getAllCreneauxResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:creneau"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getRvMedecinJour">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="tns:medecin"/>
            <xs:element minOccurs="0" name="arg1" type="xs:string"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getRvMedecinJourResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:rv"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="getAllClients">
        <xs:sequence/>
    </xs:complexType>
    <xs:complexType name="getAllClientsResponse">
        <xs:sequence>
            <xs:element maxOccurs="unbounded" minOccurs="0" name="return" type="tns:client"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="supprimerRv">
        <xs:sequence>
            <xs:element minOccurs="0" name="arg0" type="tns:rv"/>
        </xs:sequence>
    </xs:complexType>
    <xs:complexType name="supprimerRvResponse">
        <xs:sequence/>
    </xs:complexType>
</xs:schema>
;
			 var xsdSchema1:Schema = new Schema(xsdXML1);
			schemas.push(xsdSchema1);
			targetNamespaces.push(new Namespace('','http://ws.rdvmedecins/'));
			xsdSchema0.addImport(new Namespace("http://ws.rdvmedecins/"), xsdSchema1)
		}
	}
}