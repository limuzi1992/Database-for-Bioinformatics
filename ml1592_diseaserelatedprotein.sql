CREATE DATABASE  IF NOT EXISTS `ml1592_diseaserelatedprotein` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ml1592_diseaserelatedprotein`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ml1592_diseaserelatedprotein
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `diseaseinfo`
--

DROP TABLE IF EXISTS `diseaseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diseaseinfo` (
  `DOID` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Disease Ontology (DO) ID of the disease',
  `Disease_Name` varchar(200) NOT NULL COMMENT 'the disease name in the Disease Ontology database',
  `Disease_Definition` varchar(2000) DEFAULT NULL COMMENT 'the definition of the disease in the Disease Ontology database',
  `Disease_Relationship` varchar(100) DEFAULT NULL COMMENT 'the parent of the disease',
  PRIMARY KEY (`DOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table DiseaseInfo provides detailed information about the disease like disease name and disease definition.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseaseinfo`
--

LOCK TABLES `diseaseinfo` WRITE;
/*!40000 ALTER TABLE `diseaseinfo` DISABLE KEYS */;
INSERT INTO `diseaseinfo` VALUES ('0050458','juvenile myelomonocytic leukemia','none','is_a myelodysplastic myeloproliferative cancer'),('0050524','maturity-onset diabetes of the young','A genetic disease that has_material_basis_in mutations in the MODY genes disrupting insulin production. ','is_a genetic disease'),('0060062','familial juvenile hyperuricemic nephropathy','A kidney disease that is characterized by hyperuricemia with renal uric acid under-excretion, gout and chronic kidney disease.','is_a kidney disease'),('0060230','basal ganglia calcification','A basal ganglia disease characterized by the presence of abnormal calcium deposits of unknown cause in the brain; has symptom dementia, psychosis, mood swings and loss of acquired motor skills. ','is_a basal ganglia disease'),('10283','prostate cancer','A male reproductive organ cancer that is located_in the prostate. ','is_a male reproductive organ cancer'),('10652','Alzheimer\'s disease','A tauopathy that is marked histologically by the degeneration of brain neurons especially in the cerebral cortex and by the presence of neurofibrillary tangles and plaques containing beta-amyloid.','is_a tauopathy'),('10923','sickle cell anemia','none','is_a autosomal recessive disease'),('1184','nephrotic syndrome','none','is_a nephrosis'),('12241','beta thalassemia','A thalassemia characterized by the reduced or absent synthesis of the beta globin chains of hemoglobin. ','is_a thalassemia'),('12259','hemophilia B','An inherited blood coagulation disease that has_material_basis_in Factor IX deficiency, which makes coagulation much more prolonged. ','is_a inherited blood coagulation disease '),('12449','aplastic anemia','An anemia that is characterized by a deficiency of red blood cells, white blood cells and platelets produced by bone marrow. ','is_a anemia'),('12712','nephronophthisis','An autosomal recessive disease that is characterized by a chronic tubulointerstitial nephritis that progress to terminal renal failure during the second decade (juvenile form) or before the age of 5 years (infantile form) resulting from dysfunction of ciliary proteins (ciliopathy).','is_a autosomal recessive disease'),('1338','congenital dyserythropoietic anemia','A congenital hemolytic anemia characterized by ineffective erythropoiesis, and resulting from a decrease in the number of red blood cells (RBCs) in the body and a less than normal quantity of hemoglobin in the blood.','is_a congenital hemolytic anemia'),('1520','colon carcinoma','A colon cancer that has_material_basis_in abnormally proliferating cells derives_from epithelial cells.','is_a colon cancer'),('1612','breast cancer','A thoracic cancer that originates in the mammary gland.','is_a thoracic cancer'),('2224','hemorrhagic thrombocythemia','A chronic myeloproliferative and megakaryocytic tumor and thrombocytosis that is a rare chronic disorder that results_in the overproduction of platelets.','is_a chronic myeloproliferative disease'),('2729','dyskeratosis congenita','A skin disease characterized by cutaneous pigmentation, premature graying, dystrophy of the nails, leukoplakia of the oral mucosa, continuous lacrimation due to atresia of the lacrimal ducts, often thrombocytopenia, anemia, testicular atrophy in the male carriers and predisposition to cancer. ','is_a skin disease'),('3883','Lynch syndrome','An autosomal dominant disease that is characterized by \nand has_material_basis_in mutation of mismatch repair genes that increases the risk of many types of cancers.','is_a autosomal dominant disease'),('4423','sea-blue histiocyte syndrome','none','is_a sphingolipidosis, is_a non-langerhans-cell histiocytosis'),('4971','myelofibrosis','A myeloma that is located_in the bone marrow which results_in bone marrow being replaced by fibrous (scar) tissue. ','is_a myeloma'),('898','polycystic kidney disease','An autosomal dominant disease characterized by the presence of multiple cysts located_in the kidney resulting from ciliopathy that disrupts the function of primary cilium.','is_a autosomal dominant disease'),('8997','polycythemia vera','none','is_a polycythemia'),('9119','acute myeloid leukemia','A myeloid leukemia that is characterized by the rapid growth of abnormal white blood cells that accumulate in the bone marrow and interfere with the production of normal blood cells. ','is_a myeloid leukemia'),('9256','colorectal cancer','A large intestine cancer that is located_in the colon and/or located_in the rectum.','is_a large intestine cancer'),('9352','type 2 diabetes mellitus','A diabetes mellitus that involves high blood glucose resulting from cells fail to use insulin properly. ','is_a diabetes mellitus');
/*!40000 ALTER TABLE `diseaseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diseaseontology`
--

DROP TABLE IF EXISTS `diseaseontology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diseaseontology` (
  `UniProtKB_Entry` varchar(45) NOT NULL COMMENT 'UniProtKB accession number',
  `Phenotype_MIM` varchar(45) NOT NULL COMMENT 'MIM number',
  `UniPro_Disease_Short_Name` varchar(100) NOT NULL COMMENT 'the UniProt disease short name of the disease in which the protein is involved ',
  `DOID` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Disease Ontology (DO) ID of the disease in which the protein is involved',
  PRIMARY KEY (`UniProtKB_Entry`,`Phenotype_MIM`,`UniPro_Disease_Short_Name`,`DOID`),
  KEY `fk_DiseaseOntology_DiseaseInfo1_idx` (`DOID`),
  CONSTRAINT `fk_DiseaseOntology_DiseaseInfo1` FOREIGN KEY (`DOID`) REFERENCES `diseaseinfo` (`DOID`),
  CONSTRAINT `fk_Disease_Ontology_Disease1` FOREIGN KEY (`UniProtKB_Entry`, `Phenotype_MIM`, `UniPro_Disease_Short_Name`) REFERENCES `phenotype` (`UniProtKB_Entry`, `Phenotype_MIM`, `UniPro_Disease_Short_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table DiseaseOntology provides information about disease ontology terms corresponding to the certain disease.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseaseontology`
--

LOCK TABLES `diseaseontology` WRITE;
/*!40000 ALTER TABLE `diseaseontology` DISABLE KEYS */;
INSERT INTO `diseaseontology` VALUES ('P09619','607785','JMML','0050458'),('P35680','137920','RCAD','0050524'),('P07911','162000','HNFJ1','0060062'),('P09619','615007','IBGC4','0060230'),('P35680','611955','HPC11','10283'),('P02649','104310','AD2','10652'),('P68871','603903','SKCA','10923'),('P54851','615861','NPHS10','1184'),('P68871','603902','B-THALIB','12241'),('P68871','613985','B-THAL','12241'),('P00740','306900','HEMB','12259'),('O14746','609135','AA','12449'),('Q2M1K9','614844','JBTS19','12712'),('Q2M1K9','614844','NPHP14','12712'),('Q9NQH7','613159','NPHPL1','12712'),('Q13351','613673','CDAN4','1338'),('Q9Y2V0','615631','CDAN1B','1338'),('P31749','114500','CRC','1520'),('P84996','114500','CRC','1520'),('P31749','114480','BC','1612'),('O60674','614521','THCYT3','2224'),('O14746','613989','DKCA2','2729'),('O14746','613989','DKCB4','2729'),('P16422','613244','HNPCC8','3883'),('P02649','269600','SBHD','4423'),('O60674','254450','MYELOF','4971'),('P08F94','263200','ARPKD','898'),('P98161','173900','PKD1','898'),('Q13563','613095','PKD2','898'),('O60674','263300','PV','8997'),('P09619','601626','AML','9119'),('P31749','114500','CRC','9256'),('P84996','114500','CRC','9256'),('P35680','125853','NIDDM','9352');
/*!40000 ALTER TABLE `diseaseontology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gene`
--

DROP TABLE IF EXISTS `gene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene` (
  `HGNC_ID` varchar(45) NOT NULL COMMENT 'HGNC identifier',
  `URL_HGNC_ID` varchar(200) NOT NULL COMMENT 'an uniform resource locator or website address to access HTML page from the HGNC database',
  `Gene_Approved_Symbol` varchar(45) NOT NULL COMMENT 'the approved HGNC symbol of the gene',
  `Gene_Approved_Name` varchar(200) NOT NULL COMMENT 'the approved HGNC name of the gene',
  `Chromosomal_Location` varchar(45) NOT NULL COMMENT 'chromosomal location of the gene',
  PRIMARY KEY (`HGNC_ID`),
  UNIQUE KEY `URL_HGNC_ID_UNIQUE` (`URL_HGNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table Gene provides information about the genes like approved HGNC symbol, approved HGNC name and  chromosomal location.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gene`
--

LOCK TABLES `gene` WRITE;
/*!40000 ALTER TABLE `gene` DISABLE KEYS */;
INSERT INTO `gene` VALUES ('11529','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=11529','EPCAM','epithelial cell adhesion molecule','2p21'),('11595','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=11595','TBX18','T-box 18','6q14.1-q15'),('11630','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=11630','HNF1B','HNF1 homeobox B','17q12'),('11730','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=11730','TERT','telomerase reverse transcriptase','5p15.33'),('12559','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=12559','UMOD','uromodulin','16p12.3'),('16257','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=16257','TUBB1','tubulin beta 1 class VI','20q13.32'),('16762','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=16762','ZNF423','zinc finger protein 423','16q12'),('18688','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=18688','CRB2','crumbs family member 2','9q33.2'),('2230','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=2230','COPA','coatomer protein complex subunit alpha','1q23.2'),('26929','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=26929','C15orf41','chromosome 15 open reading frame 41','15q14'),('28052','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=28052','XPNPEP3','X-prolyl aminopeptidase 3, mitochondrial','22q13.2'),('29043','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=29043','DSTYK','dual serine/threonine and tyrosine protein kinase','1q32'),('29170','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=29170','FAN1','FANCD2/FANCI-associated nuclease 1','15q13.3'),('3334','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=3334','EMP2','epithelial membrane protein 2','16p13.2'),('3546','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=3546','F8','coagulation factor VIII','Xq28'),('3551','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=3551','F9','coagulation factor IX','Xq26.3-q27.1'),('391','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=391','AKT1','v-akt murine thymoma viral oncogene homolog 1','14q32.33'),('4392','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=4392','GNAS','GNAS complex locus','20q13.2-q13.3'),('4827','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=4827','HBB','hemoglobin subunit beta','11p15.5'),('613','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=613','APOE','apolipoprotein E','19q13.31'),('6192','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=6192','JAK2','Janus kinase 2','9p24'),('6345','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=6345','KLF1','Kruppel-like factor 1','19p13.2'),('7508','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=7508','MUC1','mucin 1, cell surface associated','1q22'),('7579','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=7579','MYH9','myosin, heavy chain 9, non-muscle','22q13.1'),('8804','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=8804','PDGFRB','platelet derived growth factor receptor beta','5q33.1'),('9008','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=9008','PKD1','polycystic kidney disease 1','16p13.3'),('9009','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=9009','PKD2','polycystic kidney disease 2','4q22.1'),('9016','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=9016','PKHD1','polycystic kidney and hepatic disease 1','6p21.2-p12');
/*!40000 ALTER TABLE `gene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genesynonym`
--

DROP TABLE IF EXISTS `genesynonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genesynonym` (
  `HGNC_ID` varchar(45) NOT NULL COMMENT 'HGNC identifier',
  `Gene_Synonym` varchar(200) NOT NULL COMMENT 'aternative HGNC  name or symbol of the gene',
  PRIMARY KEY (`HGNC_ID`,`Gene_Synonym`),
  KEY `fk_GeneSynonym_Gene1_idx` (`HGNC_ID`),
  CONSTRAINT `fk_GeneSynonym_Gene1` FOREIGN KEY (`HGNC_ID`) REFERENCES `gene` (`HGNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table GeneSynonym provides information about alternative HGNC symbols and names used to represent the genes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genesynonym`
--

LOCK TABLES `genesynonym` WRITE;
/*!40000 ALTER TABLE `genesynonym` DISABLE KEYS */;
INSERT INTO `genesynonym` VALUES ('11529','17-1A'),('11529','323/A3'),('11529','CD326'),('11529','CO-17A'),('11529','EGP-2'),('11529','EGP34'),('11529','EGP40'),('11529','Ep-CAM'),('11529','ESA'),('11529','GA733-2'),('11529','HEA125'),('11529','KS1/4'),('11529','KSA'),('11529','Ly74'),('11529','MH99'),('11529','MK-1'),('11529','MOC31'),('11529','TACST-1'),('11529','TROP1'),('11630','HNF1beta'),('11630','LFB3'),('11630','MODY5'),('11630','VHNF1'),('11730','EST2'),('11730','hEST2'),('11730','TCS1'),('11730','TP2'),('11730','TRT'),('12559','Tamm-Horsfall glycoprotein'),('12559','uromucoid'),('16257','class VI beta-tubulin'),('16257','dJ543J19.4'),('16762','Ebfaz'),('16762','JBTS19'),('16762','KIAA0760'),('16762','NPHP14'),('16762','OAZ'),('18688','FLJ16786'),('18688','FLJ38464'),('2230','HEP-COP'),('2230','proxenin'),('2230','xenin'),('26929','FLJ22851'),('26929','HH114'),('26929','MGC11326'),('28052','APP3'),('28052','ICP55'),('28052','Intermediate Cleaving Peptidase 55'),('28052','NPHPL1'),('29043','DustyPK'),('29043','KIAA0472'),('29043','RIP5'),('3334','XMP'),('3546','DXS1253E'),('3546','Factor VIIIF8B'),('3546','FVIII'),('3546','HEMA'),('3546','hemophilia A'),('3551','Christmas disease'),('3551','Factor IX'),('3551','FIX'),('3551','hemophilia B'),('3551','plasma thromboplastic component'),('391','AKT'),('391','PKB'),('391','PRKBA'),('391','RAC'),('4392','\"secretogranin VI\"'),('4392','GNASXL'),('4392','GPSA'),('4392','NESP'),('4392','NESP55'),('4392','SCG6'),('4392','SgVI'),('4827','beta-globin'),('4827','CD113t-C, HBD'),('4827','HBD'),('6192','JTK10'),('6345','EKLF'),('6345','erythroid Kruppel-like factor'),('7508','ADMCKD'),('7508','ADMCKD1'),('7508','CD227'),('7508','MCD'),('7508','MCKD'),('7508','PEM'),('7579','EPSTS'),('7579','FTNS'),('7579','MHA'),('7579','NMHC-II-A'),('7579','NMMHCA'),('7579','nonmuscle myosin heavy chain II-A'),('8804','CD140b, JTK12, PDGFR1'),('9008','PBP'),('9008','Pc-1'),('9008','polycystin 1'),('9008','TRPP1'),('9009','Pc-2'),('9009','PC2'),('9009','PKD4'),('9009','TRPP2'),('9016','ARPKD'),('9016','FCYT'),('9016','fibrocystin'),('9016','polyductin'),('9016','tigmin');
/*!40000 ALTER TABLE `genesynonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phenotype`
--

DROP TABLE IF EXISTS `phenotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phenotype` (
  `UniProtKB_Entry` varchar(45) NOT NULL COMMENT 'UniProtKB accession number',
  `Phenotype_MIM` varchar(45) NOT NULL COMMENT 'MIM number',
  `URL_MIM` varchar(200) NOT NULL,
  `UniPro_Disease_Short_Name` varchar(100) NOT NULL COMMENT 'the UniProt disease short name of the disease in which the protein is involved',
  `UniPro_Disease_Full_Name` varchar(200) NOT NULL COMMENT 'the UniProt disease full name of the disease in which the protein is involved',
  PRIMARY KEY (`UniProtKB_Entry`,`Phenotype_MIM`,`UniPro_Disease_Short_Name`),
  CONSTRAINT `fk_Disease_Protein1` FOREIGN KEY (`UniProtKB_Entry`) REFERENCES `protein` (`UniProtKB_Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table Phenotype provides information about the diseases in which the proteins are involved.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phenotype`
--

LOCK TABLES `phenotype` WRITE;
/*!40000 ALTER TABLE `phenotype` DISABLE KEYS */;
INSERT INTO `phenotype` VALUES ('O14746','609135','http://omim.org/entry/609135','AA','Aplastic anemia '),('O14746','613989','http://omim.org/entry/613989','DKCA2','Dyskeratosis congenita, autosomal dominant, 2 '),('O14746','613989','http://omim.org/entry/613989','DKCB4','Dyskeratosis congenita, autosomal recessive, 4 '),('O14746','614742','http://omim.org/entry/614742','PFBMFT1','Pulmonary fibrosis, and/or bone marrow failure, telomere-related, 1'),('O60674','254450','http://omim.org/entry/254450','MYELOF','Myelofibrosis '),('O60674','263300','http://omim.org/entry/263300','PV','Polycythemia vera'),('O60674','600880','http://omim.org/entry/600880','BDCHS','Budd-Chiari syndrome '),('O60674','614521','http://omim.org/entry/614521','THCYT3','Thrombocythemia 3 '),('O95935','616414','http://omim.org/entry/616414','AILJK','Autoimmune interstitial lung, joint, and kidney disease '),('P00451','306700','http://omim.org/entry/306700','HEMA','Hemophilia A '),('P00740','300807','http://omim.org/entry/300807','THPH8','Thrombophilia, X-linked, due to factor IX defect '),('P00740','306900','http://omim.org/entry/306900','HEMB','Hemophilia B'),('P02649','104310','http://omim.org/entry/104310','AD2','Alzheimer disease 2'),('P02649','107741','http://omim.org/entry/107741','HLPP3','Hyperlipoproteinemia 3 '),('P02649','269600','http://omim.org/entry/269600','SBHD','Sea-blue histiocyte disease '),('P02649','611771','http://omim.org/entry/611771','LPG','Lipoprotein glomerulopathy '),('P07911','162000','http://omim.org/entry/162000','HNFJ1','Familial juvenile hyperuricemic nephropathy 1 '),('P07911','603860','http://omim.org/entry/603860','MCKD2','Medullary cystic kidney disease 2'),('P07911','609886','http://omim.org/entry/609886','GCKDHI','Glomerulocystic kidney disease with hyperuricemia and isosthenuria '),('P08F94','263200','http://omim.org/entry/263200','ARPKD','Polycystic kidney disease, autosomal recessive '),('P09619','131440','http://omim.org/entry/131440','MPE','Myeloproliferative disorder chronic with eosinophilia '),('P09619','601626','http://omim.org/entry/601626','AML','Leukemia, acute myelogenous '),('P09619','607785','http://omim.org/entry/607785','JMML','Leukemia, juvenile myelomonocytic'),('P09619','615007','http://omim.org/entry/615007','IBGC4','Basal ganglia calcification, idiopathic, 4 '),('P15941','174000','http://omim.org/entry/174000','MCKD1','Medullary cystic kidney disease 1 '),('P16422','613217','http://omim.org/entry/613217','DIAR5','Diarrhea 5, with tufting enteropathy, congenital '),('P16422','613244','http://omim.org/entry/613244','HNPCC8','Hereditary non-polyposis colorectal cancer 8 '),('P31749','114480','http://omim.org/entry/114480','BC','Breast cancer'),('P31749','114500','http://omim.org/entry/114500','CRC','Colorectal cancer '),('P35579','153640','http://omim.org/entry/153640','FTNS','Fechtner syndrome '),('P35579','153650','http://omim.org/entry/153650','APSM','Alport syndrome, with macrothrombocytopenia '),('P35579','155100','http://omim.org/entry/155100','MHA','May-Hegglin anomaly'),('P35579','605249','http://omim.org/entry/605249','SBS','Sebastian syndrome '),('P35680','125853','http://omim.org/entry/125853','NIDDM','Diabetes mellitus, non-insulin-dependent '),('P35680','137920','http://omim.org/entry/137920','RCAD','Renal cysts and diabetes syndrome '),('P35680','611955','http://omim.org/entry/611955','HPC11','Prostate cancer, hereditary, 11 '),('P53621','616414','http://omim.org/entry/616414','AILJK','Autoimmune interstitial lung, joint, and kidney disease'),('P54851','615861','http://omim.org/entry/615861','NPHS10','Nephrotic syndrome 10 '),('P68871','140700','http://omim.org/entry/140700','HEIBAN','Heinz body anemias '),('P68871','603902','http://omim.org/entry/603902','B-THALIB','Beta-thalassemia, dominant, inclusion body type'),('P68871','603903','http://omim.org/entry/603903','SKCA','Sickle cell anemia '),('P68871','613985','http://omim.org/entry/613985','B-THAL','Beta-thalassemia'),('P84996','114500','http://omim.org/entry/114500','CRC','Colorectal cancer '),('P84996','139320','http://omim.org/entry/139320','GNASHYP','GNAS hyperfunction '),('P84996','219080','http://omim.org/entry/219080','AIMAH1','ACTH-independent macronodular adrenal hyperplasia 1 '),('P84996','603233','http://omim.org/entry/603233','PHP1B','Pseudohypoparathyroidism 1B '),('P98161','173900','http://omim.org/entry/173900','PKD1','Polycystic kidney disease 1 '),('Q13351','613673','http://omim.org/entry/613673','CDAN4','Anemia, congenital dyserythropoietic, 4 '),('Q13563','613095','http://omim.org/entry/613095','PKD2','Polycystic kidney disease 2 '),('Q2M1K9','614844','http://omim.org/entry/614844','JBTS19','Joubert syndrome 19 '),('Q2M1K9','614844','http://omim.org/entry/614844','NPHP14','Nephronophthisis 14 '),('Q5IJ48','219730','http://omim.org/entry/219730','VMCKD','Ventriculomegaly with cystic kidney disease'),('Q5IJ48','616220','http://omim.org/entry/616220','FSGS9','Focal segmental glomerulosclerosis 9'),('Q6XUX3','610805','http://omim.org/entry/610805','CAKUT1','Congenital anomalies of the kidney and urinary tract 1 '),('Q9H4B7','613112','http://omim.org/entry/613112','MAD-TUBB1','Macrothrombocytopenia, autosomal dominant, TUBB1-related '),('Q9NQH7','613159','http://omim.org/entry/613159','NPHPL1','Nephronophthisis-like nephropathy 1'),('Q9Y2M0','614817','http://omim.org/entry/614817','KMIN','Interstitial nephritis, karyomegalic'),('Q9Y2V0','615631','http://omim.org/entry/615631','CDAN1B','Anemia, congenital dyserythropoietic, 1B ');
/*!40000 ALTER TABLE `phenotype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protein`
--

DROP TABLE IF EXISTS `protein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protein` (
  `item` int(11) NOT NULL COMMENT 'an auto-increment number starting from 1',
  `UniProtKB_Entry` varchar(45) NOT NULL COMMENT 'UniprotKB accession number',
  `Data_Collected_by` varchar(45) NOT NULL COMMENT 'the person who colleceted the data',
  `Target_Disease` varchar(45) NOT NULL COMMENT 'the disease of interest ( kidney disease, blood disease and colon cancer)',
  `URL_UniproKB_Entry` varchar(200) NOT NULL COMMENT 'an uniform resource locator or website address to access HTML page from the UniProt database',
  `Protein_Name` varchar(200) NOT NULL COMMENT 'recommended UniProtKB protein name',
  `Sequence_Length` int(11) NOT NULL COMMENT 'protein''s sequence length ',
  `Mass_Da` int(11) NOT NULL COMMENT 'protein''s mass',
  `UniProt_Gene_Name` varchar(45) NOT NULL COMMENT 'the UniProtKB name of the gene that encodes the protein',
  `HGNC_ID` varchar(45) NOT NULL COMMENT 'HGNC identifier',
  PRIMARY KEY (`UniProtKB_Entry`),
  UNIQUE KEY `item_#_UNIQUE` (`item`),
  UNIQUE KEY `URL_UniproKB_Entry_UNIQUE` (`URL_UniproKB_Entry`),
  KEY `fk_Protein_Gene1_idx` (`HGNC_ID`),
  CONSTRAINT `fk_Protein_Gene1` FOREIGN KEY (`HGNC_ID`) REFERENCES `gene` (`HGNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table Protein stores the protein’s information from the Uniprot database like protein name, sequence length and mass. \n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protein`
--

LOCK TABLES `protein` WRITE;
/*!40000 ALTER TABLE `protein` DISABLE KEYS */;
INSERT INTO `protein` VALUES (26,'O14746','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/O14746','Telomerase reverse transcriptase',1132,126997,'TERT','11730'),(27,'O60674','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/O60674','Tyrosine-protein kinase JAK2',1132,130674,'JAK2','6192'),(17,'O95935','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/O95935','T-box transcription factor TBX18',607,64753,'TBX18','11595'),(20,'P00451','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/P00451','Coagulation factor VIII',2351,267009,'F8','3546'),(25,'P00740','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/P00740','Coagulation factor IX',461,51778,'F9','3551'),(4,'P02649','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P02649','Apolipoprotein E',317,36154,'APOE','613'),(9,'P07911','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P07911','Uromodulin',640,69761,'UMOD','12559'),(7,'P08F94','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P08F94','Fibrocystin',4074,446702,'PKHD1','9016'),(24,'P09619','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/P09619','Platelet-derived growth factor receptor beta',1106,123968,'PDGFRB','8804'),(8,'P15941','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P15941','Mucin-1',1255,122102,'MUC1','7508'),(3,'P16422','S.Chen','Colon Cancer','http://www.uniprot.org/uniprot/P16422','Epithelial cell adhesion molecule',314,34932,'EPCAM','11529'),(1,'P31749','S.Chen','Colon Cancer','http://www.uniprot.org/uniprot/P31749','RAC-alpha serine/threonine-protein kinase',480,55686,'AKT1','391'),(28,'P35579','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/P35579','Myosin-9',1960,226532,'MYH9','7579'),(10,'P35680','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P35680','Hepatocyte nuclear factor 1-beta',557,61324,'HNF1B','11630'),(16,'P53621','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P53621','Coatomer subunit alpha',1224,138346,'COPA','2230'),(11,'P54851','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P54851','Epithelial membrane protein 2',167,19199,'EMP2','3334'),(21,'P68871','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/P68871','Hemoglobin subunit beta',147,15998,'HBB','4827'),(2,'P84996','S.Chen','Colon Cancer','http://www.uniprot.org/uniprot/P84996','Protein ALEX',626,67948,'GNAS','4392'),(5,'P98161','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/P98161','Polycystin-1',4303,462529,'PKD1','9008'),(19,'Q13351','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/Q13351','Krueppel-like factor 1',362,38221,'KLF1','6345'),(6,'Q13563','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/Q13563','Polycystin-2',968,109691,'PKD2','9009'),(14,'Q2M1K9','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/Q2M1K9','Zinc finger protein 423',1284,144605,'ZNF423','16762'),(13,'Q5IJ48','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/Q5IJ48','Protein crumbs homolog 2',1285,134265,'CRB2','18688'),(15,'Q6XUX3','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/Q6XUX3','Dual serine/threonine and tyrosine protein kinase',929,105206,'DSTYK','29043'),(22,'Q9H4B7','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/Q9H4B7','Tubulin beta-1 chain',451,50327,'TUBB1','16257'),(18,'Q9NQH7','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/Q9NQH7','Probable Xaa-Pro aminopeptidase 3',507,57034,'XPNPEP3','28052'),(12,'Q9Y2M0','Muzi Li','Kidney Disease','http://www.uniprot.org/uniprot/Q9Y2M0','Fanconi-associated nuclease 1',1017,114225,'FAN1','29170'),(23,'Q9Y2V0','Muzi Li','Blood Disease','http://www.uniprot.org/uniprot/Q9Y2V0','Uncharacterized protein C15orf41',281,32264,'C15orf41','26929');
/*!40000 ALTER TABLE `protein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proteinalternativename`
--

DROP TABLE IF EXISTS `proteinalternativename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proteinalternativename` (
  `UniProtKB_Entry` varchar(45) NOT NULL COMMENT 'UniProtKB accession number',
  `Protein_Alternative_Name` varchar(200) NOT NULL COMMENT 'alternative UniProtKB protein name',
  PRIMARY KEY (`UniProtKB_Entry`,`Protein_Alternative_Name`),
  CONSTRAINT `fk_ProteinAlternativeName_Protein1` FOREIGN KEY (`UniProtKB_Entry`) REFERENCES `protein` (`UniProtKB_Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table ProteinAlternativeName provides information about alternative UniProtKb names used to refer to the proteins.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proteinalternativename`
--

LOCK TABLES `proteinalternativename` WRITE;
/*!40000 ALTER TABLE `proteinalternativename` DISABLE KEYS */;
INSERT INTO `proteinalternativename` VALUES ('O14746','Telomerase catalytic subunit'),('O14746','Telomerase reverse transcriptase '),('O14746','Telomerase-associated protein 2 '),('O60674','Janus kinase 2'),('P00451','Antihemophilic factor'),('P00451','Procoagulant component'),('P00740','Christmas factor'),('P00740','Plasma thromboplastin component'),('P02649','Apo-E'),('P07911','Tamm-Horsfall urinary glycoprotein'),('P08F94','Polycystic kidney and hepatic disease 1 protein'),('P08F94','Polyductin'),('P08F94','Tigmin'),('P09619','Beta platelet-derived growth factor receptor'),('P09619','Beta-type platelet-derived growth factor receptor'),('P09619','CD140 antigen-like family member B'),('P09619','Platelet-derived growth factor receptor 1'),('P15941','Breast carcinoma-associated antigen DF3'),('P15941','Cancer antigen 15-3'),('P15941','Carcinoma-associated mucin'),('P15941','Episialin'),('P15941','H23AG'),('P31749','Protein kinase B'),('P31749','Protein kinase B alpha'),('P31749','Proto-oncogene c-Akt'),('P31749','RAC-PK-alpha'),('P35579','Myosin heavy chain 9'),('P35579','Non-muscle myosin heavy chain A'),('P35579','Non-muscle myosin heavy chain IIa'),('P35680','Homeoprotein LFB3'),('P35680','Transcription factor 2'),('P35680','Variant hepatic nuclear factor 1'),('P53621','Alpha-coat protein'),('P53621','HEP-COP'),('P54851','Protein XMP'),('P68871','Beta-globin'),('P68871','Hemoglobin beta chain'),('P98161','Autosomal dominant polycystic kidney disease 1 protein'),('Q13351','Erythroid krueppel-like transcription factor'),('Q13563','Autosomal dominant polycystic kidney disease type II protein'),('Q13563','Polycystic kidney disease 2 protein'),('Q13563','Polycystin-2'),('Q13563','Polycystwin'),('Q13563','R48321'),('Q13563','Transient receptor potential cation channel subfamily P member 2'),('Q2M1K9','Olf1/EBF-associated zinc finger protein'),('Q2M1K9','Smad- and Olf-interacting zinc finger protein'),('Q5IJ48','Crumbs-like protein 2'),('Q6XUX3','Dusty protein kinase'),('Q6XUX3','Receptor-interacting serine/threonine-protein kinase 5'),('Q6XUX3','RIP-homologous kinase'),('Q6XUX3','Sugen kinase 496'),('Q9NQH7','Aminopeptidase P3'),('Q9Y2M0','FANCD2/FANCI-associated nuclease 1'),('Q9Y2M0','Myotubularin-related protein 15'),('Q9Y2V0','Protein HH114');
/*!40000 ALTER TABLE `proteinalternativename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proteindomain`
--

DROP TABLE IF EXISTS `proteindomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proteindomain` (
  `UniProtKB_Entry` varchar(45) NOT NULL COMMENT 'UniProt accession number',
  `Domain_Position` varchar(45) NOT NULL COMMENT 'the postion of the domain',
  `Domain_Description` varchar(100) NOT NULL COMMENT 'the description of the domain',
  PRIMARY KEY (`UniProtKB_Entry`,`Domain_Position`),
  CONSTRAINT `fk_ProteinDomain_Protein1` FOREIGN KEY (`UniProtKB_Entry`) REFERENCES `protein` (`UniProtKB_Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The ProteinDomian table provides the information about the domains that the protein contains.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proteindomain`
--

LOCK TABLES `proteindomain` WRITE;
/*!40000 ALTER TABLE `proteindomain` DISABLE KEYS */;
INSERT INTO `proteindomain` VALUES ('O14746','605-935','Reverse transcriptase'),('O60674','37-380','FERM'),('O60674','401-482','SH2; atypical'),('O60674','545-809','Protein kinase 1'),('O60674','849-1124','Protein kinase 2'),('P00451','1713-1877','Plastocyanin-like 5'),('P00451','1713-2040','F5/8 type A 3'),('P00451','1887-2040','Plastocyanin-like 6'),('P00451','20-198','Plastocyanin-like 1'),('P00451','20-348','F5/8 type A 1'),('P00451','2040-2188','F5/8 type C 1'),('P00451','206-348','Plastocyanin-like 2'),('P00451','2193-2345','F5/8 type C 2'),('P00451','399-573','Plastocyanin-like 3'),('P00451','399-730','F5/8 type A 2'),('P00451','583-730','Plastocyanin-like 4'),('P00740','130-171','EGF-like 2'),('P00740','227-459','Peptidase S1'),('P00740','47-92','Gla'),('P00740','93-129','EGF-like 1; calcium-binding'),('P07911','108-149','EGF-like 3; calcium-binding'),('P07911','28-64','EGF-like 1'),('P07911','334-589','ZP'),('P07911','65-107','EGF-like 2; calcium-binding'),('P08F94','1019-1103','IPT/TIG 5'),('P08F94','1108-1192','IPT/TIG 6; atypical'),('P08F94','1196-1289','IPT/TIG 7'),('P08F94','1301-1382','IPT/TIG 8; atypical'),('P08F94','137-232','IPT/TIG 2'),('P08F94','1389-1481','IPT/TIG 9'),('P08F94','1486-1570','IPT/TIG 10'),('P08F94','1573-1659','IPT/TIG 11'),('P08F94','1658-1742','IPT/TIG 12; atypical'),('P08F94','1932-2053','G8 1'),('P08F94','24-111','IPT/TIG 1; atypical'),('P08F94','259-335','IPT/TIG 3'),('P08F94','2747-2873','G8 2'),('P08F94','931-1015','IPT/TIG 4'),('P09619','129-210','Ig-like C2-type 2'),('P09619','214-309','Ig-like C2-type 3'),('P09619','33-120','Ig-like C2-type 1'),('P09619','331-403','Ig-like C2-type 4'),('P09619','416-524','Ig-like C2-type 5'),('P09619','600-962','Protein kinase'),('P15941','1039-1148','SEA'),('P16422','63-135','Thyroglobulin type-1'),('P31749','150-408','Protein kinase'),('P31749','409-480','AGC-kinase C-terminal'),('P31749','5-108','PH'),('P35579','779-808','IQ'),('P35579','81-776','Myosin motor'),('P98161','1023-1129','PKD 5'),('P98161','1127-1215','PKD 6'),('P98161','1213-1298','PKD 7'),('P98161','125-178','LRRCT'),('P98161','1294-1383','PKD 8'),('P98161','1382-1469','PKD 9'),('P98161','1468-1551','PKD 10'),('P98161','1550-1635','PKD 11'),('P98161','1643-1721','PKD 12'),('P98161','1719-1805','PKD 13'),('P98161','177-271','WSC'),('P98161','1807-1890','PKD 14'),('P98161','1889-1974','PKD 15'),('P98161','1977-2057','PKD 16'),('P98161','2060-2148','PKD 17'),('P98161','2146-2833','REJ'),('P98161','24-67','LRRNT'),('P98161','272-359','PKD 1'),('P98161','3021-3061','GPS'),('P98161','3118-3233','PLAT'),('P98161','415-531','C-type lectin'),('P98161','638-671','LDL-receptor class A; atypical'),('P98161','743-817','PKD 2'),('P98161','855-928','PKD 3'),('P98161','935-1020','PKD 4'),('Q13563','750-785','EF-hand'),('Q5IJ48','1056-1092','EGF-like 12'),('Q5IJ48','108-144','EGF-like 2'),('Q5IJ48','1094-1130','EGF-like 13'),('Q5IJ48','1134-1171','EGF-like 14'),('Q5IJ48','1173-1209','EGF-like 15'),('Q5IJ48','146-182','EGF-like 3'),('Q5IJ48','184-221','EGF-like 4'),('Q5IJ48','223-259','EGF-like 5'),('Q5IJ48','261-318','EGF-like 6'),('Q5IJ48','320-356','EGF-like 7'),('Q5IJ48','358-394','EGF-like 8'),('Q5IJ48','396-436','EGF-like 9'),('Q5IJ48','431-603','Laminin G-like 1'),('Q5IJ48','605-641','EGF-like 10'),('Q5IJ48','647-805','Laminin G-like 2'),('Q5IJ48','67-106','EGF-like 1'),('Q5IJ48','807-843','EGF-like 11'),('Q5IJ48','871-1054','Laminin G-like 3'),('Q6XUX3','652-906','Protein kinase'),('Q9Y2M0','895-1007','VRR-NUC');
/*!40000 ALTER TABLE `proteindomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proteinstructure`
--

DROP TABLE IF EXISTS `proteinstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proteinstructure` (
  `UniprotKB_Entry` varchar(45) NOT NULL COMMENT 'UniProtKB accession number',
  `PDB_ID` varchar(45) NOT NULL COMMENT 'PDB accession number',
  `Structure_Position` varchar(45) NOT NULL COMMENT 'the position of the protein where the structure has been analyzed',
  `URL_PDB` varchar(200) NOT NULL COMMENT 'an uniform resource locator or website address to access HTML page from the PDB database',
  `Method` varchar(45) NOT NULL COMMENT 'the method used to determine the protein structure',
  `Resolution` varchar(45) DEFAULT NULL COMMENT 'the resolution of the structure',
  `Protein_Chain` varchar(45) NOT NULL COMMENT 'the chain whose structure has been analyzed',
  PRIMARY KEY (`UniprotKB_Entry`,`PDB_ID`,`Structure_Position`),
  CONSTRAINT `fk_ProteinStructure_Protein1` FOREIGN KEY (`UniprotKB_Entry`) REFERENCES `protein` (`UniProtKB_Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table ProteinStructure provides information about the structure of the protein.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proteinstructure`
--

LOCK TABLES `proteinstructure` WRITE;
/*!40000 ALTER TABLE `proteinstructure` DISABLE KEYS */;
INSERT INTO `proteinstructure` VALUES ('O14746','2BCK','461-469','http://www.rcsb.org/pdb/explore/explore.do?structureId=2BCK','X-ray','2.8','C/F'),('O14746','4B18','222-240','http://www.rcsb.org/pdb/explore/explore.do?structureId=4B18','X-ray','2.52','B'),('O14746','4MNQ','540-548','http://www.rcsb.org/pdb/explore/explore.do?structureId=4MNQ','X-ray','2.74','C'),('O60674','2B7A','840-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=2B7A','X-ray','2','A/B'),('O60674','2W1I','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=2W1I','X-ray','2.6','A/B'),('O60674','2XA4','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=2XA4','X-ray','2.04','A/B'),('O60674','3E62','839-1131','http://www.rcsb.org/pdb/explore/explore.do?structureId=3E62','X-ray','1.92','A'),('O60674','3E63','839-1131','http://www.rcsb.org/pdb/explore/explore.do?structureId=3E63','X-ray','1.9','A'),('O60674','3E64','839-1131','http://www.rcsb.org/pdb/explore/explore.do?structureId=3E64','X-ray','1.8','A'),('O60674','3FUP','840-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3FUP','X-ray','2.4','A/B'),('O60674','3IO7','842-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3IO7','X-ray','2.6','A'),('O60674','3IOK','842-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3IOK','X-ray','2.1','A'),('O60674','3JY9','842-1130','http://www.rcsb.org/pdb/explore/explore.do?structureId=3JY9','X-ray','2.1','A'),('O60674','3KCK','842-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3KCK','X-ray','2.2','A'),('O60674','3KRR','840-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3KRR','X-ray','1.8','A'),('O60674','3LPB','840-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3LPB','X-ray','2','A/B'),('O60674','3Q32','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3Q32','X-ray','2.5','A/B'),('O60674','3RVG','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3RVG','X-ray','2.5','A'),('O60674','3TJC','837-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3TJC','X-ray','2.4','A/B'),('O60674','3TJD','837-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3TJD','X-ray','2.9','A/B'),('O60674','3UGC','840-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3UGC','X-ray','1.34','A'),('O60674','3ZMM','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=3ZMM','X-ray','2.51','A/B'),('O60674','4AQC','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4AQC','X-ray','1.9','A/B'),('O60674','4BBE','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4BBE','X-ray','1.9','A/B/C/D'),('O60674','4BBF','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4BBF','X-ray','2','A/B/C/D'),('O60674','4C61','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4C61','X-ray','2.45','A/B'),('O60674','4C62','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4C62','X-ray','2.75','A/B'),('O60674','4D0W','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4D0W','X-ray','1.77','A'),('O60674','4D0X','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4D0X','X-ray','1.82','A'),('O60674','4D1S','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4D1S','X-ray','1.66','A'),('O60674','4E4M','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4E4M','X-ray','2.25','A/B/D/E'),('O60674','4E6D','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4E6D','X-ray','2.22','A/B'),('O60674','4E6Q','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4E6Q','X-ray','1.95','A/B'),('O60674','4F08','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4F08','X-ray','2.82','A/B'),('O60674','4F09','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4F09','X-ray','2.4','A'),('O60674','4FVP','536-812','http://www.rcsb.org/pdb/explore/explore.do?structureId=4FVP','X-ray','2.01','A'),('O60674','4FVQ','536-812','http://www.rcsb.org/pdb/explore/explore.do?structureId=4FVQ','X-ray','1.75','A'),('O60674','4FVR','536-812','http://www.rcsb.org/pdb/explore/explore.do?structureId=4FVR','X-ray','2','A'),('O60674','4GFM','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4GFM','X-ray','2.3','A'),('O60674','4GMY','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4GMY','X-ray','2.4','A'),('O60674','4HGE','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4HGE','X-ray','2.3','A/B'),('O60674','4IVA','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4IVA','X-ray','1.5','A'),('O60674','4JI9','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4JI9','X-ray','2.4','A/B'),('O60674','4JIA','833-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4JIA','X-ray','1.85','A'),('O60674','4P7E','840-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4P7E','X-ray','2.4','A/B'),('O60674','4YTC','842-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4YTC','X-ray','2.16','A'),('O60674','4YTF','842-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4YTF','X-ray','1.78','A'),('O60674','4YTH','842-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4YTH','X-ray','2.04','A'),('O60674','4YTI','842-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4YTI','X-ray','2.52','A'),('O60674','4ZIM','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=4ZIM','X-ray','2.65','A/B'),('O60674','5AEP','835-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=5AEP','X-ray','1.95','A'),('O60674','5CF4','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=5CF4','X-ray','2.38','A/B'),('O60674','5CF5','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=5CF5','X-ray','2.45','A/B'),('O60674','5CF6','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=5CF6','X-ray','2.5','A/B'),('O60674','5CF8','839-1132','http://www.rcsb.org/pdb/explore/explore.do?structureId=5CF8','X-ray','1.8','A/B'),('P00451','1CFG','2322-2343','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CFG','NMR','none','A'),('P00451','1D7P','2190-2348','http://www.rcsb.org/pdb/explore/explore.do?structureId=1D7P','X-ray','1.5','M'),('P00451','1FAC','2322-2342','http://www.rcsb.org/pdb/explore/explore.do?structureId=1FAC','NMR','none','A'),('P00451','1IQD','2193-2348','http://www.rcsb.org/pdb/explore/explore.do?structureId=1IQD','X-ray','2','C'),('P00451','2R7E','1582-2351','http://www.rcsb.org/pdb/explore/explore.do?structureId=2R7E','X-ray','3.7','B'),('P00451','2R7E','19-760','http://www.rcsb.org/pdb/explore/explore.do?structureId=2R7E','X-ray','3.7','A'),('P00451','3CDZ','1668-2351','http://www.rcsb.org/pdb/explore/explore.do?structureId=3CDZ','X-ray','3.98','B'),('P00451','3CDZ','20-759','http://www.rcsb.org/pdb/explore/explore.do?structureId=3CDZ','X-ray','3.98','A'),('P00451','3HNB','2189-2347','http://www.rcsb.org/pdb/explore/explore.do?structureId=3HNB','X-ray','1.15','M'),('P00451','3HNY','2189-2347','http://www.rcsb.org/pdb/explore/explore.do?structureId=3HNY','X-ray','1.07','M'),('P00451','3HOB','2189-2347','http://www.rcsb.org/pdb/explore/explore.do?structureId=3HOB','X-ray','2.07','A/M'),('P00451','3J2Q','1668-2351','http://www.rcsb.org/pdb/explore/explore.do?structureId=3J2Q','electron microscopy','15','B '),('P00451','3J2Q','20-764','http://www.rcsb.org/pdb/explore/explore.do?structureId=3J2Q','electron microscopy','15','A'),('P00451','3J2S','1710-2351','http://www.rcsb.org/pdb/explore/explore.do?structureId=3J2S','electron microscopy','15','B'),('P00451','4BDV','1667-2351','http://www.rcsb.org/pdb/explore/explore.do?structureId=4BDV','X-ray','3.98','B '),('P00451','4BDV','20-1666','http://www.rcsb.org/pdb/explore/explore.do?structureId=4BDV','X-ray','3.98','A'),('P00451','4KI5','2190-2351','http://www.rcsb.org/pdb/explore/explore.do?structureId=4KI5','X-ray','2.47','M'),('P00451','4PT6','2190-2215','http://www.rcsb.org/pdb/explore/explore.do?structureId=4PT6','X-ray','2.1','A/B'),('P00451','4PT6','2222-2351','http://www.rcsb.org/pdb/explore/explore.do?structureId=4PT6','X-ray','2.1','A/B'),('P00451','4XZU','2193-2346','http://www.rcsb.org/pdb/explore/explore.do?structureId=4XZU','X-ray','2.61','G/M'),('P00740','1CFH','47-93','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CFH','NMR','none','A'),('P00740','1CFI','47-93','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CFI','NMR','none','A'),('P00740','1EDM','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=1EDM','X-ray','1.5','B/C'),('P00740','1IXA','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=1IXA','NMR','none','A'),('P00740','1MGX','47-93','http://www.rcsb.org/pdb/explore/explore.do?structureId=1MGX','NMR','none','A'),('P00740','1NL0','47-91','http://www.rcsb.org/pdb/explore/explore.do?structureId=1NL0','X-ray','2.2','G'),('P00740','1RFN','133-188','http://www.rcsb.org/pdb/explore/explore.do?structureId=1RFN','X-ray','2.8','B'),('P00740','1RFN','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=1RFN','X-ray','2.8','A'),('P00740','2WPH','133-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPH','X-ray','1.5','E'),('P00740','2WPH','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPH','X-ray','1.5','S'),('P00740','2WPI','133-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPI','X-ray','1.99','E'),('P00740','2WPI','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPI','X-ray','1.99','S'),('P00740','2WPJ','133-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPJ','X-ray','1.6','E'),('P00740','2WPJ','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPJ','X-ray','1.6','S'),('P00740','2WPK','133-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPK','X-ray','2.21','E'),('P00740','2WPK','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPK','X-ray','2.21','S'),('P00740','2WPL','133-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPL','X-ray','1.82','E'),('P00740','2WPL','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPL','X-ray','1.82','S'),('P00740','2WPM','133-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPM','X-ray','2','E'),('P00740','2WPM','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WPM','X-ray','2','S'),('P00740','3KCG','131-188','http://www.rcsb.org/pdb/explore/explore.do?structureId=3KCG','X-ray','1.7','L'),('P00740','3KCG','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=3KCG','X-ray','1.7','H'),('P00740','3LC3','133-188','http://www.rcsb.org/pdb/explore/explore.do?structureId=3LC3','X-ray','1.9','B/D'),('P00740','3LC3','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=3LC3','X-ray','1.9','A/C'),('P00740','3LC5','133-188','http://www.rcsb.org/pdb/explore/explore.do?structureId=3LC5','X-ray','2.62','B'),('P00740','3LC5','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=3LC5','X-ray','2.62','A'),('P00740','4WM0','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WM0','X-ray','2.37','D'),('P00740','4WMA','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WMA','X-ray','1.62','D'),('P00740','4WMB','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WMB','X-ray','2.05','D'),('P00740','4WMI','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WMI','X-ray','1.87','D'),('P00740','4WMK','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WMK','X-ray','2.08','D'),('P00740','4WN2','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WN2','X-ray','1.95','D'),('P00740','4WNH','92-130','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WNH','X-ray','1.95','D'),('P00740','4YZU','131-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=4YZU','X-ray','1.41','B'),('P00740','4YZU','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=4YZU','X-ray','1.41','A'),('P00740','4Z0K','131-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=4Z0K','X-ray','1.41','B'),('P00740','4Z0K','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=4Z0K','X-ray','1.41','A'),('P00740','4ZAE','131-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=4ZAE','X-ray','1.86','B'),('P00740','4ZAE','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=4ZAE','X-ray','1.86','A'),('P00740','5EGM','131-191','http://www.rcsb.org/pdb/explore/explore.do?structureId=5EGM','X-ray','1.84','B'),('P00740','5EGM','227-461','http://www.rcsb.org/pdb/explore/explore.do?structureId=5EGM','X-ray','1.84','A'),('P02649','1B68','19-209','http://www.rcsb.org/pdb/explore/explore.do?structureId=1B68','X-ray','2','A'),('P02649','1BZ4','40-183','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BZ4','X-ray','1.85','A'),('P02649','1EA8','19-209','http://www.rcsb.org/pdb/explore/explore.do?structureId=1EA8','X-ray','1.95','A'),('P02649','1GS9','19-183','http://www.rcsb.org/pdb/explore/explore.do?structureId=1GS9','X-ray','1.7','A'),('P02649','1H7I','19-209','http://www.rcsb.org/pdb/explore/explore.do?structureId=1H7I','X-ray','1.9','A'),('P02649','1LE2','41-184','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LE2','X-ray','3','A'),('P02649','1LE4','41-184','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LE4','X-ray','2.5','A'),('P02649','1LPE','41-184','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LPE','X-ray','2.25','A'),('P02649','1NFN','19-209','http://www.rcsb.org/pdb/explore/explore.do?structureId=1NFN','X-ray','1.8','A'),('P02649','1NFO','19-209','http://www.rcsb.org/pdb/explore/explore.do?structureId=1NFO','X-ray','2','A'),('P02649','1OEF','281-304','http://www.rcsb.org/pdb/explore/explore.do?structureId=1OEF','NMR','none','A'),('P02649','1OEG','285-307','http://www.rcsb.org/pdb/explore/explore.do?structureId=1OEG','NMR','none','A'),('P02649','1OR2','19-183','http://www.rcsb.org/pdb/explore/explore.do?structureId=1OR2','X-ray','2.5','A'),('P02649','1OR3','19-183','http://www.rcsb.org/pdb/explore/explore.do?structureId=1OR3','X-ray','1.73','A'),('P02649','2KC3','19-201','http://www.rcsb.org/pdb/explore/explore.do?structureId=2KC3','NMR','none','A'),('P02649','2KNY','147-167','http://www.rcsb.org/pdb/explore/explore.do?structureId=2KNY','NMR','none','A'),('P02649','2L7B','19-317','http://www.rcsb.org/pdb/explore/explore.do?structureId=2L7B','NMR','none','A'),('P07911','4WRN','295-610','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WRN','X-ray','3.2','A/B'),('P09619','1GQ5','1102-1106','http://www.rcsb.org/pdb/explore/explore.do?structureId=1GQ5','X-ray','2.2','A'),('P09619','1H9O','751-755','http://www.rcsb.org/pdb/explore/explore.do?structureId=1H9O','X-ray','1.79','B'),('P09619','1LWP','600-962','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LWP','model','none','A'),('P09619','1SHA','751-755','http://www.rcsb.org/pdb/explore/explore.do?structureId=1SHA','X-ray','1.5','B'),('P09619','2L6W','526-563','http://www.rcsb.org/pdb/explore/explore.do?structureId=2L6W','NMR','none','A/B'),('P09619','2PLD','1018-1029','http://www.rcsb.org/pdb/explore/explore.do?structureId=2PLD','NMR','none','B'),('P09619','2PLE','1018-1029','http://www.rcsb.org/pdb/explore/explore.do?structureId=2PLE','NMR','none','B'),('P09619','3MJG','33-314','http://www.rcsb.org/pdb/explore/explore.do?structureId=3MJG','X-ray','2.3','X/Y'),('P15941','1SM3','919-931','http://www.rcsb.org/pdb/explore/explore.do?structureId=1SM3','X-ray','1.95','P'),('P15941','2ACM','1042-1097','http://www.rcsb.org/pdb/explore/explore.do?structureId=2ACM','NMR','none','A'),('P15941','2ACM','1098-1152','http://www.rcsb.org/pdb/explore/explore.do?structureId=2ACM','NMR','none','B'),('P15941','2FO4','140-146','http://www.rcsb.org/pdb/explore/explore.do?structureId=2FO4','X-ray','2.7','P'),('P16422','4MZV','24-265','http://www.rcsb.org/pdb/explore/explore.do?structureId=4MZV','X-ray','1.86','A'),('P31749','1H10','1-123','http://www.rcsb.org/pdb/explore/explore.do?structureId=1B4R','X-ray','1.4','A'),('P31749','1UNP','1-121','http://www.rcsb.org/pdb/explore/explore.do?structureId=1UNP','X-ray','1.65','A'),('P31749','1UNQ','1-123','http://www.rcsb.org/pdb/explore/explore.do?structureId=1UNQ','X-ray','0.98','A'),('P31749','1UNR','1-123','http://www.rcsb.org/pdb/explore/explore.do?structureId=1UNR','X-ray','1.25','A'),('P31749','2UVM','1-123','http://www.rcsb.org/pdb/explore/explore.do?structureId=2UVM','X-ray','1.94','A'),('P31749','2UZR','1-123','http://www.rcsb.org/pdb/explore/explore.do?structureId=2UZR','X-ray','1.94','A'),('P31749','2UZS','1-123','http://www.rcsb.org/pdb/explore/explore.do?structureId=2UZS','X-ray','2.46','A'),('P31749','3CQU','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3CQU','X-ray','2.2','A'),('P31749','3CQW','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3CQW','X-ray','2','A'),('P31749','3MV5','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3MV5','X-ray','2.47','A'),('P31749','3MVH','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3MVH','X-ray','2.01','A'),('P31749','3OCB','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3OCB','X-ray','2.7','A/B'),('P31749','3OW4','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3OW4','X-ray','2.6','A/B'),('P31749','3QKK','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3QKK','X-ray','2.3','A'),('P31749','3QKL','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3QKL','X-ray','1.9','A'),('P31749','3QKM','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=3QKM','X-ray','2.2','A'),('P31749','4EJN','2-446','http://www.rcsb.org/pdb/explore/explore.do?structureId=4EJN','X-ray','2.19','A'),('P31749','4EKK','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=4EKK','X-ray','2.8','A/B'),('P31749','4EKL','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=4EKL','X-ray','2','A'),('P31749','4GV1','144-480','http://www.rcsb.org/pdb/explore/explore.do?structureId=4GV1','X-ray','1.49','A'),('P31749','855-928','2-443','http://www.rcsb.org/pdb/explore/explore.do?structureId=855-928','X-ray','2.7','A'),('P35579','2LNK','1897-1935','http://www.rcsb.org/pdb/explore/explore.do?structureId=2LNK','NMR','none','C'),('P35579','3ZWH','1893-1937','http://www.rcsb.org/pdb/explore/explore.do?structureId=3ZWH','X-ray','1.94','Q'),('P35579','4CFQ','1893-1937','http://www.rcsb.org/pdb/explore/explore.do?structureId=4CFQ','X-ray','1.37','Q/R'),('P35579','4CFR','1893-1937','http://www.rcsb.org/pdb/explore/explore.do?structureId=4CFR','X-ray','1.4','Q'),('P35579','4ETO','1908-1923','http://www.rcsb.org/pdb/explore/explore.do?structureId=4ETO','X-ray','1.54','P'),('P35680','2DA6','233-321','http://www.rcsb.org/pdb/explore/explore.do?structureId=2DA6','NMR','none','A'),('P35680','2H8R','91-310','http://www.rcsb.org/pdb/explore/explore.do?structureId=2H8R','X-ray','3.2','A/B'),('P68871','1A00','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1A00','X-ray','2','B/D'),('P68871','1A01','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1A01','X-ray','1.8','B/D'),('P68871','1A0U','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1A0U','X-ray','2.14','B/D'),('P68871','1A0Z','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1A0Z','X-ray','2','B/D'),('P68871','1A3N','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1A3N','X-ray','1.8','B/D'),('P68871','1A3O','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1A3O','X-ray','1.8','B/D'),('P68871','1ABW','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1ABW','X-ray','2','B/D'),('P68871','1ABY','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1ABY','X-ray','2.6','B/D'),('P68871','1AJ9','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1AJ9','X-ray','2.2','B'),('P68871','1B86','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1B86','X-ray','2.5','B/D'),('P68871','1BAB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BAB','X-ray','1.5','B/D'),('P68871','1BBB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BBB','X-ray','1.7','B/D'),('P68871','1BIJ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BIJ','X-ray','2.3','B/D'),('P68871','1BUW','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BUW','X-ray','1.9','B/D'),('P68871','1BZ0','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BZ0','X-ray','1.5','B/D'),('P68871','1BZ1','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BZ1','X-ray','1.59','B/D'),('P68871','1BZZ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1BZZ','X-ray','1.59','B/D'),('P68871','1C7B','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1C7B','X-ray','1.8','B/D'),('P68871','1C7C','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1C7C','X-ray','1.8','B/D'),('P68871','1C7D','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1C7D','X-ray','1.8','B/D'),('P68871','1CBL','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CBL','X-ray','1.8','A/B/C/D'),('P68871','1CBM','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CBM','X-ray','1.74','A/B/C/D'),('P68871','1CH4','2-146','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CH4','X-ray','2.5','A/B/C/D'),('P68871','1CLS','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CLS','X-ray','1.9','B/D'),('P68871','1CMY','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1CMY','X-ray','3','B/D'),('P68871','1COH','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1COH','X-ray','2.9','B/D'),('P68871','1DKE','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1DKE','X-ray','2.1','B/D'),('P68871','1DXT','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1DXT','X-ray','1.7','B/D'),('P68871','1DXU','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1DXU','X-ray','1.7','B/D'),('P68871','1DXV','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1DXV','X-ray','1.7','B/D'),('P68871','1FN3','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1FN3','X-ray','2.48','B/D'),('P68871','1G9V','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1G9V','X-ray','1.85','B/D'),('P68871','1GBU','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1GBU','X-ray','1.8','B/D'),('P68871','1GBV','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1GBV','X-ray','2','B/D'),('P68871','1GLI','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1GLI','X-ray','2.5','B/D'),('P68871','1GZX','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1GZX','X-ray','2.1','B/D'),('P68871','1HAB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HAB','X-ray','2.3','B/D'),('P68871','1HAC','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HAC','X-ray','2.6','B/D'),('P68871','1HBA','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HBA','X-ray','2.1','B/D'),('P68871','1HBB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HBB','X-ray','1.9','B/D'),('P68871','1HBS','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HBS','X-ray','3','B/D/F/H'),('P68871','1HCO','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HCO','X-ray','2.7','B'),('P68871','1HDB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HDB','X-ray','2.2','B/D'),('P68871','1HGA','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HGA','X-ray','2.1','B/D'),('P68871','1HGB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HGB','X-ray','2.1','B/D'),('P68871','1HGC','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HGC','X-ray','2.1','B/D'),('P68871','1HHO','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1HHO','X-ray','2.1','B'),('P68871','1IRD','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1IRD','X-ray','1.25','B'),('P68871','1J3Y','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1J3Y','X-ray','1.55','B/D/F/H'),('P68871','1J3Z','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1J3Z','X-ray','1.6','B/D/F/H'),('P68871','1J40','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1J40','X-ray','1.45','B/D/F/H'),('P68871','1J41','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1J41','X-ray','1.45','B/D/F/H'),('P68871','1J7S','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1J7S','X-ray','2.2','B/D'),('P68871','1J7W','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1J7W','X-ray','2','B/D'),('P68871','1J7Y','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1J7Y','X-ray','1.7','B/D'),('P68871','1JY7','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1JY7','X-ray','3.2','B/D/Q/S/V/X'),('P68871','1K0Y','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1K0Y','X-ray','1.87','B/D'),('P68871','1K1K','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1K1K','X-ray','2','B'),('P68871','1KD2','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1KD2','X-ray','1.87','B/D'),('P68871','1LFL','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LFL','X-ray','2.7','B/D/Q/S'),('P68871','1LFQ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LFQ','X-ray','2.6','B'),('P68871','1LFT','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LFT','X-ray','2.6','B'),('P68871','1LFV','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LFV','X-ray','2.8','B'),('P68871','1LFY','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LFY','X-ray','3.3','B'),('P68871','1LFZ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LFZ','X-ray','3.1','B'),('P68871','1LJW','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1LJW','X-ray','2.16','B'),('P68871','1M9P','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1M9P','X-ray','2.1','B/D'),('P68871','1MKO','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1MKO','X-ray','2.18','B/D'),('P68871','1NEJ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1NEJ','X-ray','2.1','B/D'),('P68871','1NIH','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1NIH','X-ray','2.6','B/D'),('P68871','1NQP','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1NQP','X-ray','1.73','B/D'),('P68871','1O1I','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1I','X-ray','2.3','B'),('P68871','1O1J','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1J','X-ray','1.9','B/D'),('P68871','1O1K','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1K','X-ray','2','B/D'),('P68871','1O1L','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1L','X-ray','1.8','B/D'),('P68871','1O1M','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1M','X-ray','1.85','B/D'),('P68871','1O1N','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1N','X-ray','1.8','B/D'),('P68871','1O1O','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1O','X-ray','1.8','B/D'),('P68871','1O1P','1-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1O1P','X-ray','1.8','B/D'),('P68871','1QI8','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1QI8','X-ray','1.8','B/D'),('P68871','1QSH','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1QSH','X-ray','1.7','B/D'),('P68871','1QSI','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1QSI','X-ray','1.7','B/D'),('P68871','1QXD','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1QXD','X-ray','2.25','B/D'),('P68871','1QXE','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1QXE','X-ray','1.85','B/D'),('P68871','1R1X','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1R1X','X-ray','2.15','B'),('P68871','1R1Y','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1R1Y','X-ray','1.8','B/D'),('P68871','1RPS','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1RPS','X-ray','2.11','B/D'),('P68871','1RQ3','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1RQ3','X-ray','1.91','B/D'),('P68871','1RQ4','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1RQ4','X-ray','2.11','B/D'),('P68871','1RQA','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1RQA','X-ray','2.11','B/D'),('P68871','1RVW','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1RVW','X-ray','2.5','B'),('P68871','1SDK','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1SDK','X-ray','1.8','B/D'),('P68871','1SDL','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1SDL','X-ray','1.8','B/D'),('P68871','1THB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1THB','X-ray','1.5','B/D'),('P68871','1UIW','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1UIW','X-ray','1.5','B/D/F/H'),('P68871','1VWT','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1VWT','X-ray','1.9','B/D'),('P68871','1XXT','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XXT','X-ray','1.91','B/D'),('P68871','1XY0','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XY0','X-ray','1.99','B/D'),('P68871','1XYE','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XYE','X-ray','2.13','B/D'),('P68871','1XZ2','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XZ2','X-ray','1.9','B/D'),('P68871','1XZ4','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XZ4','X-ray','2','B/D'),('P68871','1XZ5','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XZ5','X-ray','2.11','B/D'),('P68871','1XZ7','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XZ7','X-ray','1.9','B/D'),('P68871','1XZU','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XZU','X-ray','2.16','B/D'),('P68871','1XZV','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1XZV','X-ray','2.11','B/D'),('P68871','1Y09','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y09','X-ray','2.25','B/D'),('P68871','1Y0A','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y0A','X-ray','2.22','B/D'),('P68871','1Y0C','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y0C','X-ray','2.3','B/D'),('P68871','1Y0D','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y0D','X-ray','2.1','B/D'),('P68871','1Y0T','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y0T','X-ray','2.14','B/D'),('P68871','1Y0W','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y0W','X-ray','2.14','B/D'),('P68871','1Y22','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y22','X-ray','2.16','B/D'),('P68871','1Y2Z','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y2Z','X-ray','2.07','B/D'),('P68871','1Y31','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y31','X-ray','2.13','B/D'),('P68871','1Y35','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y35','X-ray','2.12','B/D'),('P68871','1Y45','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y45','X-ray','2','B/D'),('P68871','1Y46','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y46','X-ray','2.22','B/D'),('P68871','1Y4B','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y4B','X-ray','2.1','B/D'),('P68871','1Y4F','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y4F','X-ray','2','B/D'),('P68871','1Y4G','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y4G','X-ray','1.91','B/D'),('P68871','1Y4P','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y4P','X-ray','1.98','B/D'),('P68871','1Y4Q','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y4Q','X-ray','2.11','B/D'),('P68871','1Y4R','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y4R','X-ray','2.22','B/D'),('P68871','1Y4V','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y4V','X-ray','1.84','B/D'),('P68871','1Y5F','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y5F','X-ray','2.14','B/D'),('P68871','1Y5J','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y5J','X-ray','2.03','B/D'),('P68871','1Y5K','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y5K','X-ray','2.2','B/D'),('P68871','1Y7C','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y7C','X-ray','2.1','B/D'),('P68871','1Y7D','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y7D','X-ray','1.9','B/D'),('P68871','1Y7G','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y7G','X-ray','2.1','B/D'),('P68871','1Y7Z','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y7Z','X-ray','1.98','B/D'),('P68871','1Y83','2-145','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y83','X-ray','1.9','B/D'),('P68871','1Y85','2-146','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y85','X-ray','2.13','B/D'),('P68871','1Y8W','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1Y8W','X-ray','2.9','B/D'),('P68871','1YDZ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YDZ','X-ray','3.3','B/D'),('P68871','1YE0','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YE0','X-ray','2.5','B/D'),('P68871','1YE1','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YE1','X-ray','4.5','B/D'),('P68871','1YE2','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YE2','X-ray','1.8','B/D'),('P68871','1YEN','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YEN','X-ray','2.8','B/D'),('P68871','1YEO','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YEO','X-ray','2.22','B/D'),('P68871','1YEQ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YEQ','X-ray','2.75','B/D'),('P68871','1YEU','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YEU','X-ray','2.12','B/D'),('P68871','1YEV','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YEV','X-ray','2.11','B/D'),('P68871','1YFF','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YFF','X-ray','2.4','B/D/F/H'),('P68871','1YG5','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YG5','X-ray','2.7','B/D'),('P68871','1YGD','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YGD','X-ray','2.73','B/D'),('P68871','1YGF','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YGF','X-ray','2.7','B/D'),('P68871','1YH9','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YH9','X-ray','2.2','B/D'),('P68871','1YHE','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YHE','X-ray','2.1','B/D'),('P68871','1YHR','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YHR','X-ray','2.6','B/D'),('P68871','1YIE','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YIE','X-ray','2.4','B/D'),('P68871','1YIH','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YIH','X-ray','2','B/D'),('P68871','1YVQ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YVQ','X-ray','1.8','B/D'),('P68871','1YVT','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YVT','X-ray','1.8','B'),('P68871','1YZI','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=1YZI','X-ray','2.07','B'),('P68871','2D5Z','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2D5Z','X-ray','1.45','B/D'),('P68871','2D60','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2D60','X-ray','1.7','B/D'),('P68871','2DN1','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2DN1','X-ray','1.25','B'),('P68871','2DN2','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2DN2','X-ray','1.25','B/D'),('P68871','2DN3','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2DN3','X-ray','1.25','B'),('P68871','2DXM','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2DXM','neutron diffraction','2.1','B/D'),('P68871','2H35','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2H35','NMR','none','B/D'),('P68871','2HBC','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HBC','X-ray','2.1','B'),('P68871','2HBD','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HBD','X-ray','2.2','B'),('P68871','2HBE','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HBE','X-ray','2','B'),('P68871','2HBF','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HBF','X-ray','2.2','B'),('P68871','2HBS','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HBS','X-ray','2.05','B/D/F/H'),('P68871','2HCO','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HCO','X-ray','2.7','B'),('P68871','2HHB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HHB','X-ray','1.74','B/D'),('P68871','2HHD','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HHD','X-ray','2.2','B/D'),('P68871','2HHE','4-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2HHE','X-ray','2.2','B/D'),('P68871','2M6Z','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2M6Z','NMR','none','B/D'),('P68871','2W6V','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2W6V','X-ray','1.8','B/D'),('P68871','2W72','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2W72','X-ray','1.07','B/D'),('P68871','2YRS','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=2YRS','X-ray','2.3','B/D/K/O'),('P68871','3B75','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3B75','X-ray','2.3','B/D/F/H/T'),('P68871','3D17','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3D17','X-ray','2.8','B/D'),('P68871','3D7O','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3D7O','X-ray','1.8','B'),('P68871','3DUT','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3DUT','X-ray','1.55','B/D'),('P68871','3HHB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3HHB','X-ray','1.74','B/D'),('P68871','3HXN','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3HXN','X-ray','2','B/D'),('P68871','3IC0','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3IC0','X-ray','1.8','B/D'),('P68871','3IC2','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3IC2','X-ray','2.4','B/D'),('P68871','3KMF','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3KMF','neutron diffraction','2','C/G'),('P68871','3NL7','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3NL7','X-ray','1.8','B'),('P68871','3NMM','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3NMM','X-ray','1.6','B/D'),('P68871','3ODQ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3ODQ','X-ray','3.1','B/D'),('P68871','3ONZ','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3ONZ','X-ray','2.09','B'),('P68871','3OO4','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3OO4','X-ray','1.9','B'),('P68871','3OO5','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3OO5','X-ray','2.1','B'),('P68871','3P5Q','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3P5Q','X-ray','2','B'),('P68871','3QJB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3QJB','X-ray','1.8','B'),('P68871','3QJC','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3QJC','X-ray','2','B'),('P68871','3QJD','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3QJD','X-ray','1.56','B/D'),('P68871','3QJE','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3QJE','X-ray','1.8','B/D'),('P68871','3R5I','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3R5I','X-ray','2.2','B/D'),('P68871','3S65','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3S65','X-ray','1.8','B/D'),('P68871','3S66','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3S66','X-ray','1.4','B'),('P68871','3SZK','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3SZK','X-ray','3.01','B/E'),('P68871','3W4U','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3W4U','X-ray','1.95','B/D/F'),('P68871','3WCP','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3WCP','X-ray','1.94','B/D'),('P68871','3WHM','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=3WHM','X-ray','1.85','B/F'),('P68871','4FC3','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4FC3','X-ray','2.26','B'),('P68871','4HHB','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4HHB','X-ray','1.74','B/D'),('P68871','4IJ2','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4IJ2','X-ray','4.24','B/D'),('P68871','4L7Y','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4L7Y','X-ray','1.8','B/D'),('P68871','4M4A','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4M4A','X-ray','2.05','B'),('P68871','4M4B','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4M4B','X-ray','2','B'),('P68871','4MQC','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4MQC','X-ray','2.2','B'),('P68871','4MQG','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4MQG','X-ray','1.68','B'),('P68871','4MQH','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4MQH','X-ray','2.5','B'),('P68871','4MQI','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4MQI','X-ray','1.92','B'),('P68871','4N7N','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4N7N','X-ray','2.75','B/D/F/H/J/L'),('P68871','4N7O','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4N7O','X-ray','2.5','B/D/F/H/J/L'),('P68871','4N7P','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4N7P','X-ray','2.81','B/D/F/H/J/L'),('P68871','4N8T','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4N8T','X-ray','1.9','B'),('P68871','4NI0','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4NI0','X-ray','2.15','B'),('P68871','4NI1','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4NI1','X-ray','1.9','B'),('P68871','4ROL','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4ROL','X-ray','1.7','B/D'),('P68871','4ROM','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4ROM','X-ray','1.9','B/D'),('P68871','4WJG','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4WJG','X-ray','3.1','1/B/G/L/Q/V'),('P68871','4X0L','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4X0L','X-ray','2.05','B'),('P68871','4XS0','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=4XS0','X-ray','2.55','B'),('P68871','5E29','3-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=5E29','X-ray','1.85','B/D'),('P68871','5E6E','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=5E6E','X-ray','1.76','B'),('P68871','5EE4','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=5EE4','X-ray','2.3','D/F'),('P68871','5HU6','3-143','http://www.rcsb.org/pdb/explore/explore.do?structureId=5HU6','X-ray','2.9','B'),('P68871','6HBW','2-147','http://www.rcsb.org/pdb/explore/explore.do?structureId=6HBW','X-ray','2','B/D'),('P98161','1B4R','275-354','http://www.rcsb.org/pdb/explore/explore.do?structureId=1B4R','NMR','none','A'),('Q13351','2L2I','51-90','http://www.rcsb.org/pdb/explore/explore.do?structureId=2L2I','NMR','none','B'),('Q13351','2MBH','2-40','http://www.rcsb.org/pdb/explore/explore.do?structureId=2MBH','NMR','none','B'),('Q13563','2KLD','680-796','http://www.rcsb.org/pdb/explore/explore.do?structureId=2KLD','NMR','none','A'),('Q13563','2KLE','680-796','http://www.rcsb.org/pdb/explore/explore.do?structureId=2KLE','NMR','none','A'),('Q13563','2KQ6','720-797','http://www.rcsb.org/pdb/explore/explore.do?structureId=2KQ6','NMR','none','A'),('Q13563','2Y4Q','717-792','http://www.rcsb.org/pdb/explore/explore.do?structureId=2Y4Q','NMR','none','A'),('Q13563','3HRN','833-895','http://www.rcsb.org/pdb/explore/explore.do?structureId=3HRN','X-ray','1.9','A'),('Q13563','3HRO','833-872','http://www.rcsb.org/pdb/explore/explore.do?structureId=3HRO','X-ray','1.9','A'),('Q2M1K9','2MDG','928-981','http://www.rcsb.org/pdb/explore/explore.do?structureId=2MDG','NMR','none','A'),('Q5IJ48','2WO6','4-9','http://www.rcsb.org/pdb/explore/explore.do?structureId=2WO6','X-ray','2.5','C'),('Q9Y2M0','4REA','373-1017','http://www.rcsb.org/pdb/explore/explore.do?structureId=4REA','X-ray','3.81','A/B'),('Q9Y2M0','4REB','373-1017','http://www.rcsb.org/pdb/explore/explore.do?structureId=4REB','X-ray','4.2','A/H'),('Q9Y2M0','4REC','373-1017','http://www.rcsb.org/pdb/explore/explore.do?structureId=4REC','X-ray','2.2','A'),('Q9Y2M0','4RI8','370-1017','http://www.rcsb.org/pdb/explore/explore.do?structureId=4RI8','X-ray','2.9','A/B'),('Q9Y2M0','4RI9','370-1017','http://www.rcsb.org/pdb/explore/explore.do?structureId=4RI9','X-ray','2.9','A/B'),('Q9Y2M0','4RIA','370-1017','http://www.rcsb.org/pdb/explore/explore.do?structureId=4RIA','X-ray','3','A/B'),('Q9Y2M0','4RIB','364-1017','http://www.rcsb.org/pdb/explore/explore.do?structureId=4RIB','X-ray','3.25','A/B'),('Q9Y2M0','4RIC','370-1009','http://www.rcsb.org/pdb/explore/explore.do?structureId=4RIC','X-ray','2.8','A/B'),('Q9Y2M0','4RID','370-1009','http://www.rcsb.org/pdb/explore/explore.do?structureId=4RID','X-ray','3.3','A/B'),('Q9Y2M0','4RY3','371-1010','http://www.rcsb.org/pdb/explore/explore.do?structureId=4RY3','X-ray','2.8','A');
/*!40000 ALTER TABLE `proteinstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_diseaserelatedprotein`
--

DROP TABLE IF EXISTS `vw_diseaserelatedprotein`;
/*!50001 DROP VIEW IF EXISTS `vw_diseaserelatedprotein`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_diseaserelatedprotein` AS SELECT 
 1 AS `Target_Disease`,
 1 AS `UniProtKB_Entry`,
 1 AS `Protein_Name`,
 1 AS `Sequence_Length`,
 1 AS `Protein_Alernative_Names`,
 1 AS `HGNC_ID`,
 1 AS `Gene_Approved_Symbol`,
 1 AS `Chromosomal_Location`,
 1 AS `Phenotype_MIM`,
 1 AS `UniPro_Disease_Full_Name`,
 1 AS `UniPro_Disease_Short_Name`,
 1 AS `DOID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_protein_proteinalternativename`
--

DROP TABLE IF EXISTS `vw_protein_proteinalternativename`;
/*!50001 DROP VIEW IF EXISTS `vw_protein_proteinalternativename`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_protein_proteinalternativename` AS SELECT 
 1 AS `Target_Disease`,
 1 AS `UniProtKB_Entry`,
 1 AS `Protein_Name`,
 1 AS `Sequence_Length`,
 1 AS `Protein_Alernative_Names`,
 1 AS `HGNC_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_protein_proteinalternativename_gene`
--

DROP TABLE IF EXISTS `vw_protein_proteinalternativename_gene`;
/*!50001 DROP VIEW IF EXISTS `vw_protein_proteinalternativename_gene`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_protein_proteinalternativename_gene` AS SELECT 
 1 AS `Target_Disease`,
 1 AS `UniProtKB_Entry`,
 1 AS `Protein_Name`,
 1 AS `Sequence_Length`,
 1 AS `Protein_Alernative_Names`,
 1 AS `HGNC_ID`,
 1 AS `Gene_Approved_Symbol`,
 1 AS `Chromosomal_Location`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_protein_proteinalternativename_gene_mim`
--

DROP TABLE IF EXISTS `vw_protein_proteinalternativename_gene_mim`;
/*!50001 DROP VIEW IF EXISTS `vw_protein_proteinalternativename_gene_mim`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_protein_proteinalternativename_gene_mim` AS SELECT 
 1 AS `Target_Disease`,
 1 AS `UniProtKB_Entry`,
 1 AS `Protein_Name`,
 1 AS `Sequence_Length`,
 1 AS `Protein_Alernative_Names`,
 1 AS `HGNC_ID`,
 1 AS `Gene_Approved_Symbol`,
 1 AS `Chromosomal_Location`,
 1 AS `Phenotype_MIM`,
 1 AS `UniPro_Disease_Full_Name`,
 1 AS `UniPro_Disease_Short_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'ml1592_diseaserelatedprotein'
--
/*!50003 DROP FUNCTION IF EXISTS `HTMLLink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `HTMLLink`(UniProtKB_Entry
varchar(45),URL_UniProKB_Entry varchar(200)) RETURNS varchar(500) CHARSET utf8
begin 
declare Link varchar(500);
select concat('<a href=', '"', 
URL_UniProKB_Entry,'" target="_blank"><b>', UniProtKB_Entry, 
'</b>') into Link;
return Link;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FAQs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FAQs`(in QuestionId int)
begin
/*
Author: Muzi Li
CreateDate: 4/22/2016
LastUpdate: 4/22/2016
Purpose: this stored procedure is used to answer the four frequently asked questions.
call FAQs(1)
 */
	case QuestionId
		when 1 then call Get_KidneyDiseaseProteins();
		when 2 then call Get_BloodDiseaseProteins();
		when 3 then call Get_StructureswithHighResolution();
        when 4 then call Get_GeneswithOverFourSynonyms();
	end case;    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_BloodDiseaseProteins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_BloodDiseaseProteins`()
begin
/*
Author: Muzi Li
CreateDate: 4/13/2016
LastUpdate: 4/20/2016
Question: what protiens are involved in blood disease? List the top five proteins with highest sequence length.
Answer: The top five proteins involved in blood disease with highest sequence length will be returned. And five columns will be returned, 
which are UniprotKB_Entry, Target_Disease, Protein_Name, Sequence_Length and Mass_Da.
Test: 
call Get_BloodDiseaseProteins()
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry,
pr.Target_Disease, pr.Protein_Name, pr.Sequence_Length, pr.Mass_Da
from protein pr
where pr.Target_Disease = 'Blood Disease'
order by pr.Sequence_Length desc
limit 5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Diseases` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Diseases`(in UniProtKB varchar(45))
begin
/*
Author: Muzi Li
CreateDate: 4/4/2016
LastUpdate: 4/20/2016
Question: what diseases is the protein of interest involved in?
Answer: When the UniProtKB accession number is entered, eight columns will be returned, which are UniprotKB_Entry, Protein_Name,
Phenotype_MIM, URL_MIM, Unipro_Disease_Short_Name, Unipro_Disease_Full_Name, DOID and Disease_Definition.
Test: 
call Get_Diseases('O14746')
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry,
pr.Protein_Name,  
concat( '<a href='
	    , '"'
		, ph.URL_MIM
		,'" target="_blank"><b>'
		, ph.Phenotype_MIM
		, '</b>'
		) as Phenotype_MIM,
ph.UniPro_Disease_Short_Name, ph.UniPro_Disease_Full_Name, 
ifnull(
		don.DOID
		, 'none'
		) as DOID,
ifnull(
		din.Disease_Definition
		, 'none'
		) as Disease_Definition
from protein pr
left outer join phenotype ph
on pr.UniProtKB_Entry = ph.UniProtKB_Entry
left outer join diseaseontology don
on ph.UniProtKB_Entry = don.UniProtKB_Entry
and ph.Phenotype_MIM = don.Phenotype_MIM
and ph.UniPro_Disease_Short_Name = don.UniPro_Disease_Short_Name
left outer join diseaseinfo din
on don.DOID = din.DOID 
where pr.UniProtKB_Entry = UniProtKB;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Gene` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Gene`(in UniProtKB varchar(45))
begin
/*
Author: Muzi Li
CreateDate: 4/3/2016
LastUpdate: 4/20/2016
Question: what gene encodes the protein of interest?
Answer: When the UniProtKB accession number is entered, seven columns will be returned, which are UniprotKB_Entry, Protein_Name, 
HGNC_ID, URL_HGNC_ID, Gene_Approved_Symbol, Gene_Approved_Name and Gene_Synonym.
Test: 
call Get_Gene('O14746')
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry, 
pr.Protein_Name,
concat( '<a href='
		, '"'
        , ge.URL_HGNC_ID
        ,'" target="_blank"><b>'
        , ge.HGNC_ID
        , '</b>'
		) as HGNC_ID,
ge.Gene_Approved_Symbol, ge.Gene_Approved_Name,
ifnull(
    GROUP_CONCAT(
        gs.Gene_Synonym
        SEPARATOR ';'
        )
    , 'none'
    ) as Gene_Synonyms
from protein pr
left outer join gene ge
on pr.HGNC_ID = ge.HGNC_ID
left outer join genesynonym gs
on ge.HGNC_ID = gs.HGNC_ID
where pr.UniProtKB_Entry = UniProtKB
group by ge.HGNC_ID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_GeneswithOverFourSynonyms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_GeneswithOverFourSynonyms`()
begin
/*
Author: Muzi Li
CreateDate: 4/13/2016
LastUpdate: 4/20/2016
Question: what genes have more than four synonyms? 
Answer: The genes having more than four synonyms will be returned. And five columns will be returned, 
which are HGNC_ID, Gene_Approved_Symbol, Gene_Approved_Name, Chromosomal_location and Gene_Synonyms and Synonym_Number.
Test: 
call Get_GeneswithOverFourSynonyms()
 */
select 
concat( '<a href='
		, '"'
        , ge.URL_HGNC_ID
        ,'" target="_blank"><b>'
        , ge.HGNC_ID
        , '</b>'
		) as HGNC_ID, 
ge.Gene_Approved_Symbol, ge.Gene_Approved_Name, ge.Chromosomal_Location, b.Gene_Synonyms, b.Synonym_Number
from gene ge
left outer join (
				 select HGNC_ID,
				 ifnull(
				 GROUP_CONCAT(
				 Gene_Synonym
				 SEPARATOR ';'
				 )
				 , 'none'
				 ) as Gene_Synonyms,
				 count(Gene_Synonym) as Synonym_Number
				 from  genesynonym 
				 group by HGNC_ID
				 ) as b
on ge.HGNC_ID = b.HGNC_ID
where Synonym_Number>4
order by Synonym_Number desc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_KidneyDiseaseProteins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_KidneyDiseaseProteins`()
begin
/*
Author: Muzi Li
CreateDate: 4/4/2016
LastUpdate: 4/20/2016
Question: what protiens are involved in kidney disease? List the top five proteins with highest sequence length.
Answer: The top five proteins involved in kidney disease with highest sequence length will be returned. And five columns will be returned, 
which are UniprotKB_Entry, Target_Disease, Protein_Name, Sequence_Length and Mass_Da.
Test: 
call Get_KidneyDiseaseProteins()
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry,
pr.Target_Disease, pr.Protein_Name, pr.Sequence_Length, pr.Mass_Da
from protein pr
where pr.Target_Disease = 'Kidney Disease'
order by pr.Sequence_Length desc
limit 5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_ProteinAlternativeNames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_ProteinAlternativeNames`(in UniProtKB varchar(45))
begin
/*
Author: Muzi Li
CreateDate: 4/3/2016
LastUpdate: 4/20/2016
Question: what are the alternative names of the protein of interest?
Answer: When the UniProtKB accession number is entered, four columns will be returned, which are UniprotKB_Entry, URL_UniprotKB_Entry,
Protein_Name and Protein_Alternative_Names.
Test: 
call Get_ProteinAlternativeNames('O14746')
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry,
pr.Protein_Name, 
ifnull(
    GROUP_CONCAT(
        pa.Protein_Alternative_Name 
        SEPARATOR ';'
        )
    , 'none'
    ) as Protein_Alernative_Names
from protein pr
left outer join proteinalternativename pa
on pr.UniProtKB_Entry = pa.UniProtKB_Entry
where pr.UniProtKB_Entry = UniProtKB
group by pr.UniProtKB_Entry;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_ProteinStructures` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_ProteinStructures`(in UniProtKB varchar(45))
begin
/*
Author: Muzi Li
CreateDate: 4/20/2016
LastUpdate: 4/20/2016
Question: what are the structures of the protein of interest?
Answer: When the UniProtKB accession number is entered, eight columns will be returned, which are UniprotKB_Entry, Protein_Name,
PDB_ID, URL_PDB, Structure_Position, Method, Resolution, Protein_Chain.
Test: 
call Get_ProteinStructures('O14746')
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry,
pr.Protein_Name,
ifnull(
	    concat( '<a href='
		         , '"'
				 , ps.URL_PDB
                 ,'" target="_blank"><b>'
                 , ps.PDB_ID
                 , '</b>'
		         ) 
		         , 'none'
		         ) as PDB_ID,
ifnull(
		ps.Structure_Position 
		, 'none'
		) as Structure_Position,
ifnull(
		ps.Method 
		, 'none'
		) as Method,
ifnull(
		ps.Resolution 
		, 'none'
		) as Resolution,
ifnull(
		ps.Protein_Chain 
		, 'none'
		) as Protein_Chain
from protein pr
left outer join proteinstructure ps
on pr.UniProtKB_Entry = ps.UniProtKB_Entry
where pr.UniProtKB_Entry = UniProtKB;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_ProteinswithCertainNumberofDiseases` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_ProteinswithCertainNumberofDiseases`(in diseasenum int)
begin
/*
Author: Muzi Li
CreateDate: 4/5/2016
LastUpdate: 4/20/2016
Question: what protiens are involved in a certain number of diseases? 
Answer: The proteins involved in a certain number of diseases will be returned. And seven columns will be returned, 
which are UniprotKB_Entry, Protein_Name, Phenotype_MIM, URL_MIM, Unipro_Disease_Full_Name and Unipro_Disease_Short_Name and DOID.
Test: 
call Get_ProteinswithCertainNumberofDiseases(3)
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry, 
pr.Protein_Name, 
concat( '<a href='
	   , '"'
	   , ph.URL_MIM
	   ,'" target="_blank"><b>'
	   , ph.Phenotype_MIM
	   , '</b>'
	   ) as Phenotype_MIM,
ph.UniPro_Disease_Short_Name, ph.UniPro_Disease_Full_Name, 
ifnull(
	   don.DOID
	   , 'none'
	   ) as DOID
from protein pr
left outer join phenotype ph
on pr.UniProtKB_Entry = ph.UniProtKB_Entry
left outer join (
				 select UniProtKB_Entry,
				 count(UniPro_Disease_Full_Name) as diseasenumber
				 from  phenotype 
				 group by UniProtKB_Entry
				 ) as a
on ph.UniProtKB_Entry = a. UniProtKB_Entry
left outer join diseaseontology don
on ph.UniProtKB_Entry = don.UniProtKB_Entry
and ph.Phenotype_MIM = don.Phenotype_MIM
and ph.UniPro_Disease_Short_Name = don.UniPro_Disease_Short_Name
where a.diseasenumber = diseasenum;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_ProteinswithCertainNumberofDomains` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_ProteinswithCertainNumberofDomains`(in domainnum int)
begin
/*
Author: Muzi Li
CreateDate: 4/20/2016
LastUpdate: 4/20/2016
Question: what protiens have a certain number of domains? 
Answer: The proteins having a certain number of domains will be returned. And five columns will be returned, 
which are UniprotKB_Entry, Protein_Name, URL_UniprotKB_Entry, Domain_Position, Domain_Description.
Test: 
call Get_ProteinswithCertainNumberofDomains(3)
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry, 
pr.Protein_Name, 
ifnull(
		pd.Domain_Position
		, 'none'
		) as Domian_Position,
ifnull(
		pd.Domain_Description
		, 'none'
		) as Domain_Description
from protein pr
left outer join proteindomain pd
on pr.UniProtKB_Entry = pd.UniProtKB_Entry
left outer join (
				 select UniProtKB_Entry,
				 count(Domain_Position) as domainnumber
				 from  proteindomain 
				 group by UniProtKB_Entry
				 ) as c
on pd.UniProtKB_Entry = c. UniProtKB_Entry
where c.domainnumber = domainnum;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_StructureswithHighResolution` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_StructureswithHighResolution`()
begin
/*
Author: Muzi Li
CreateDate: 4/20/2016
LastUpdate: 4/20/2016
Question: what protien structures determined by X-ray have high resolution ? List the top five protein structures with highest resolution.
Answer: The top five protein structures with highest resolution will be returned. And six columns will be returned, 
which are UniprotKB_Entry, Protein_Name, PDB_ID, URL_PDB, Method, Resolution.
Test: 
call Get_StructureswithHighResolution()
 */
select 
concat( '<a href='
		, '"'
        , pr.URL_UniproKB_Entry
        ,'" target="_blank"><b>'
        , pr.UniProtKB_Entry
        , '</b>'
		) as UniproKB_Entry,  
pr.Protein_Name, 
ifnull(
		concat( '<a href='
		         , '"'
				 , ps.URL_PDB
                 ,'" target="_blank"><b>'
                 , ps.PDB_ID
                 , '</b>'
		         ) 
		       , 'none'
		       ) as PDB_ID,
		ps.Method, ps.Resolution
from protein pr
left outer join proteinstructure ps
on pr.UniProtKB_Entry = ps.UniProtKB_Entry
where ps.Method= 'X-ray'
order by ps.Resolution asc
limit 5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_diseaserelatedprotein`
--

/*!50001 DROP VIEW IF EXISTS `vw_diseaserelatedprotein`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_diseaserelatedprotein` AS select `g`.`Target_Disease` AS `Target_Disease`,`g`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`g`.`Protein_Name` AS `Protein_Name`,`g`.`Sequence_Length` AS `Sequence_Length`,`g`.`Protein_Alernative_Names` AS `Protein_Alernative_Names`,`g`.`HGNC_ID` AS `HGNC_ID`,`g`.`Gene_Approved_Symbol` AS `Gene_Approved_Symbol`,`g`.`Chromosomal_Location` AS `Chromosomal_Location`,`g`.`Phenotype_MIM` AS `Phenotype_MIM`,`g`.`UniPro_Disease_Full_Name` AS `UniPro_Disease_Full_Name`,`g`.`UniPro_Disease_Short_Name` AS `UniPro_Disease_Short_Name`,`h`.`DOID` AS `DOID` from (`vw_protein_proteinalternativename_gene_mim` `g` left join `diseaseontology` `h` on(((`g`.`UniProtKB_Entry` = `h`.`UniProtKB_Entry`) and (`g`.`Phenotype_MIM` = `h`.`Phenotype_MIM`) and (`g`.`UniPro_Disease_Short_Name` = `h`.`UniPro_Disease_Short_Name`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_protein_proteinalternativename`
--

/*!50001 DROP VIEW IF EXISTS `vw_protein_proteinalternativename`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_protein_proteinalternativename` AS select `a`.`Target_Disease` AS `Target_Disease`,`a`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`a`.`Protein_Name` AS `Protein_Name`,`a`.`Sequence_Length` AS `Sequence_Length`,ifnull(group_concat(`b`.`Protein_Alternative_Name` separator ';'),'none') AS `Protein_Alernative_Names`,`a`.`HGNC_ID` AS `HGNC_ID` from (`protein` `a` left join `proteinalternativename` `b` on((`a`.`UniProtKB_Entry` = `b`.`UniProtKB_Entry`))) group by `a`.`UniProtKB_Entry` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_protein_proteinalternativename_gene`
--

/*!50001 DROP VIEW IF EXISTS `vw_protein_proteinalternativename_gene`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_protein_proteinalternativename_gene` AS select `c`.`Target_Disease` AS `Target_Disease`,`c`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`c`.`Protein_Name` AS `Protein_Name`,`c`.`Sequence_Length` AS `Sequence_Length`,`c`.`Protein_Alernative_Names` AS `Protein_Alernative_Names`,`c`.`HGNC_ID` AS `HGNC_ID`,`d`.`Gene_Approved_Symbol` AS `Gene_Approved_Symbol`,`d`.`Chromosomal_Location` AS `Chromosomal_Location` from (`vw_protein_proteinalternativename` `c` left join `gene` `d` on((`c`.`HGNC_ID` = `d`.`HGNC_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_protein_proteinalternativename_gene_mim`
--

/*!50001 DROP VIEW IF EXISTS `vw_protein_proteinalternativename_gene_mim`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_protein_proteinalternativename_gene_mim` AS select `e`.`Target_Disease` AS `Target_Disease`,`e`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`e`.`Protein_Name` AS `Protein_Name`,`e`.`Sequence_Length` AS `Sequence_Length`,`e`.`Protein_Alernative_Names` AS `Protein_Alernative_Names`,`e`.`HGNC_ID` AS `HGNC_ID`,`e`.`Gene_Approved_Symbol` AS `Gene_Approved_Symbol`,`e`.`Chromosomal_Location` AS `Chromosomal_Location`,`f`.`Phenotype_MIM` AS `Phenotype_MIM`,`f`.`UniPro_Disease_Full_Name` AS `UniPro_Disease_Full_Name`,`f`.`UniPro_Disease_Short_Name` AS `UniPro_Disease_Short_Name` from (`vw_protein_proteinalternativename_gene` `e` left join `phenotype` `f` on((`e`.`UniProtKB_Entry` = `f`.`UniProtKB_Entry`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-07 17:45:38
