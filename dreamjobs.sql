-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 07:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamjobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `name_th` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `skill` text NOT NULL,
  `feature` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name_th`, `name_en`, `description`, `skill`, `feature`, `image`) VALUES
(1, 'นักออกแบบสามมิติ', '3D Designer or 3D Artist', 'ศิลปินนักออกแบบสามมิติ คือ ผู้ที่มีความสามารถในการออกแบบผ่านโปรแกรมคอมพิวเตอร์ เพื่อสร้างสรรค์ จำลอง สิ่งต่าง ๆ ให้มีมิติขึ้นมาได้ไม่ว่าจะเป็นอาคารบ้านเรือน โครงสร้างอวัยวะของมนุษย์ สิ่งมีชีวิตที่สูญพันธ์ไปแล้วอย่างไดโนเสาร์ หรือแม้กระทั่งตัวละครแอนนิเมชั่นต่าง ๆ โดยพวกเขาต้องอาศัยพื้นฐานความเข้าใจในองค์ประกอบศิลป์ มิติ มุมมองต่าง ๆ รูปร่างรูปทรง พื้นผิวสัมผัส สีสัน แสงเงา ทุกอย่างล้วนเป็นสิ่งที่ต้องรู้และเข้าใจ สามารถเห็นภาพในหัวได้ จากนั้นจึงใช้โปรแกรมเป็นเครื่องมือในการสร้างสรรค์ภาพในหัวให้ออกมาเป็นชิ้นงานจริง', 'ทักษะการคิดวิเคราะห์, ทักษะการวางแผน, ทักษะด้านภาษา, ทักษะการใช้โปรแกรม, ความเข้าใจในงานศิลปะและมิติสัมพันธ์', 'มีความคิดสร้างสรรค์, ช่างสังเกต รักการเรียนรู้, มีวินัย อดทน, ละเอียดรอบคอบ, มีความรับผิดชอบ', '3DDesigneror3DArtist.jpg'),
(2, 'คณิตศาสตร์ประกันภัย', 'Actuary', 'หลายคนอาจเข้าใจว่า นักคณิตศาสตร์ประกันภัย คือผู้ที่ใช้คณิตศาสตร์และทำงานในองค์การด้านประกันภัย แต่แท้จริงแล้ว นักคณิตศาสตร์ประกันภัย คือนักวิเคราะห์ความเสี่ยงทางธุรกิจในองค์กรทั่วไป โดยใช้ทักษะทางด้านสถิติและคณิตศาสตร์การเงิน เพื่อประเมินผลกระทบ ความไม่แน่นอนต่าง ๆ ในปัจจุบันหรือที่อาจเกิดขึ้นได้ในอนาคต โดยพวกเขาต้องสร้างแบบจำลอง (Models) เพื่อคาดการณ์ปัจจัยที่อาจเกิดขึ้นทางธุรกิจในอนาคตได้ โดยอาศัยการวิเคราะห์ข้อมูลจากอดีตที่ผ่านมา', 'ทักษะการคิดวิเคราะห์, ความเข้าใจในสถิติ, ความสามารถในการวิเคราะห์ข้อมูลทางการเงิน', 'ทักษะการคิดวิเคราะห์, ละเอียดรอบคอบ, มีวินัย อดทน', 'Actuary.jpg'),
(3, 'วิสัญญีแพทย์', 'Anesthesiologist', 'วิสัญญีแพทย์ คือแพทย์ที่มีความเชี่ยวชาญเป็นพิเศษในด้านการให้ยาชาและยาสลบ หรือที่มักเรียกติดปากกันว่าหมอดมยา หน้าที่หลักของวิสัญญีแพทย์คือการดูแลผู้ป่วยในห้องผ่าตัดให้ได้รับความปลอดภัยและความสะดวกสบายมากที่สุดทั้งในระหว่างผ่าตัดและหลังการผ่าตัด โดยการช่วยระงับความเจ็บปวด ด้วยวิธีการให้ยาแบบต่าง ๆ ทั้งยาชาเฉพาะจุด ที่ช่วยทำให้ไม่รู้สึกเจ็บปวด หรือยาสลบ ที่ทำให้หลับหรือหมดสติไปเลยและผ่านพ้นการผ่าตัดไปได้ด้วยดี รวมถึงคอยติดตามดูอาการในช่วงพักฟื้น', 'ทักษะวิชาชีพของวิสัญญีแพทย์, ทักษะการรับมือแก้ไขปัญหาเฉพาะหน้า, มีความละเอียดรอบคอบสูง, ทักษะทางวิทยาศาสตร์, ทักษะด้านการสื่อสาร', 'มีความสนใจหรือความชอบในอาชีพ, มีคุณธรรม จริยธรรม และจรรยาบรรณ, เป็นคนละเอียดรอบคอบ, คิดไวทำไว มีทักษะการใช้มือ, รับแรงกดดันในการทำงานได้', 'Anesthesiologistr.jpg'),
(4, 'สถาปนิก', 'Architect', 'สถาปัตยกรรมหรือตึกรามบ้านช่อง อาคารต่าง ๆ จะเกิดขึ้นไม่ได้ หากไม่มีผู้ออกแบบสร้างสรรค์และวางแผนก่อสร้างเหล่านั้น ที่เราเรียกกันว่า “สถาปนิก ซึ่งผู้คนทุกคนล้วนต้องการที่อยู่อาศัย สถานที่ทำงาน แหล่งเรียนรู้ แหล่งช้อปปิ้ง กินเที่ยว สถาปนิกมีหน้าที่ออกแบบ เพื่อเนรมิตพื้นที่ไม่ว่าจะเป็นในหรือนอกอาคาร ไม่ว่าจะขนาดเล็กๆ เพียงห้องเดียวหรือไปจนถึงอาคารขนาดใหญ่โตที่มีโครงสร้างสลับซับซ้อน', 'ทักษะการคิดวิเคราะห์, ทักษะด้านทัศนศิลป์, ทักษะการสื่อสาร, ทักษะการจัดการ, ทักษะความเชี่ยวชาญเฉพาะทาง, ทักษะการมองเห็น', 'มีความละเอียดรอบคอบ, มีความคิดริเริ่มสร้างสรรค์, หมั่นศึกษาหาความรู้ในวิชาชีพ, ทำงานภายใต้ความกดดันได้ดี, มีความรับผิดชอบสูง, ซื่อสัตย์และมีจรรยาบรรณ', 'Architect.jpg'),
(5, 'นักออกแบบแสงสถาปัตยกรรม', 'Architectural Lighting Designer', 'ความเชี่ยวชาญในการออกแบบแสงสำหรับสถาปัตยกรรม, ความรู้ในเทคโนโลยีการจัดแสง (เช่น LED, แสงธรรมชาติ)', 'ความเข้าใจด้านแสงและฟิสิกส์ของแสง, ความรู้ด้านสถาปัตยกรรม, ทักษะด้านซอฟต์แวร์การออกแบบแสง, ความคิดสร้างสรรค์และศิลปะในการออกแบบแสง', 'ความเข้าใจด้านแสงธรรมชาติและแสงเทียม', 'ArchitecturalLightingDesigner.jpg'),
(6, 'อายุรแพทย์', 'Physician', 'อายุรแพทย์ (Internal Medicine) คือแพทย์ที่ทำการวินิจฉัย โดยใช้ความรู้ทางการแพทย์และการสังเกตอย่างละเอียด เพื่อค้นหาสาเหตุของโรค รักษา และป้องกันโรคภัยหรือความผิดปกตของระบบในร่างกาย รวมทั้งให้คำแนะนำในการปฏิบัติตัวของคนไข้ และให้ยารักษาตามความจำเป็น อายุรแพทย์อาจมีความพิเศษเฉพาะทางสาขาวิชาใดวิชาหนึ่ง เช่น โรคหัวใจและหลอดเลือด โรคเกี่ยวกับระบบทางเดินหายใจ ทางเดินอาหาร โรคไต เป็นต้น', 'ทักษะการสื่อสาร, ทักษะการแก้ปัญหา, ทักษะด้านการจัดการ, ทักษะความเป็นผู้นำ, ทักษะการคิดวิเคราะห์', 'อดทนและเสียสละ, ช่างสังเกตและใส่ใจรายละเอียด, ร่างกายและจิตใจแข็งแรงสมบูรณ์, ความเห็นอกเห็นใจผู้อื่น, มีความสนใจทางวิทยาศาสตร์และร่างกายมนุษย์, ขยัน เรียนเก่งและพัฒนาตัวเองอยู่เสมอ, มีความรับผิดชอบสูง', 'physician.jpg'),
(7, 'ครีเอทีฟโฆษณา', 'Creative', 'ครีเอทีฟคือผู้ที่สร้างสรรค์โฆษณาต่างๆ ที่เราเคยเห็นกัน ไม่ว่าจะเป็นโฆษณาทีวี, วิดีโอออนไลน์, สื่อสิ่งพิมพ์ หรือสปอตวิทยุก็ตามแต่ ครีเอทีฟจะต้องคิดไอเดียที่สอดคล้องกับสินค้าและการตลาดของลูกค้า ควบคู่ไปกับสไตล์งานโฆษณาที่เหมาะสมกับสื่อที่ใช้ เช่น สปอตโฆษณาวิทยุต้องใช้การเล่นคำ การออกเสียง ซึ่งผลลัพธ์ต้องนำไปสู่เป้าหมายที่ลูกค้าต้องการในแต่ละครั้ง ดังนั้นอาชีพครีเอทีฟจึงถือว่าต้องใช้ความสามารถรอบด้านมากๆ นับว่าเป็นอาชีพที่ท้าทายและต้องพบเจออะไรใหม่ๆ ตลอดเวลา', 'ทักษะการสื่อสาร, ทักษะการคิดวิเคราะห์, ทักษะการแก้ปัญหาตัดสินใจ, ทักษะการจัดการ, ทักษะการใช้ภาษาหรือด้านทัศนศิลป์', 'มีความคิดสร้างสรรค์และชอบคิดนอกกรอบ, ชอบเรียนรู้สิ่งใหม่ช่างสังเกตไม่ตกเทรนด์, มีมนุษยสัมพันธ์และทำงานร่วมกับผู้อื่นได้ดี, มีความยืดหยุ่นในการทำงาน, คุณสมบัติเฉพาะบางตำแหน่ง', 'creative.png'),
(8, 'นักวิเคราะห์ข้อมูล', 'Data Analyst', 'ในโลกยุคใหม่ที่ข้อมูลจำนวนมหาศาลและหลายอุตสาหกรรมไม่ว่าจะเป็นธุรกิจการค้า ธนาคาร วงการกีฬา และอื่น ๆ เริ่มเห็นความสำคัญของ Data และนำมาใช้ประกอบการตัดสินใจและขับเคลื่อนกลยุทธ์ทางธุรกิจ อาชีพที่เป็นที่จับตามอง และกำลังมีความสำคัญ ก็คือ นักวิเคราะห์ข้อมูล Data Analyst', 'แก้ปัญหาตัดสินที่ดี, ทักษะการคิดวิเคราะห์, ทักษะทางคณิตศาสตร์, ทักษะทางคอมพิวเตอร์', 'กระตือรือร้นและเรียนรู้ได้ไว, ช่างสังเกต, ชอบเรื่องตัวเลขและข้อมูล', 'DataAnalyst.png'),
(9, 'นักวิทยาศาสตร์ข้อมูล', 'Data Scientist', 'อาชีพนักวิทยาศาสตร์ข้อมูล หรือ Data scientists เป็นอาชีพที่อาศัยทักษะการนำข้อมูลขนาดใหญ่มาใช้ประโยชน์ โดยผ่านกระบวนการเก็บและจัดการข้อมูลขนาดใหญ่ วิเคราะห์ข้อมูลหารูปแบบความสัมพันธ์ของข้อมูลที่ซ่อนอยู่โดยการสร้างโมเดลทางคณิตศาสตร์ เมื่อวิเคราะห์ออกมาแล้ว จึงนำสิ่งเหล่านั้นมาช่วยในการตัดสินใจทางธุรกิจ การพัฒนาสินค้า บริการ รวมทั้งทำนายผลประกอบการที่จะเกิดขึ้นในอนาคต', 'ทักษะทางคณิตศาสตร์และสถิติ, ทักษะทางคอมพิวเตอร์และไอที, ทักษะการคิดวิเคราะห์, ทักษะในการสื่อสาร, ทักษะการทำงานเป็นทีม', 'พัฒนาตัวเองอยู่เสมอและหมั่นศึกษาหาความรู้ใหม่ๆ, ช่างสงสัยและตั้งคำถามตรงประเด็น, มีความรู้พื้นฐานทางด้านธุรกิจ', 'DataScientist.png'),
(10, 'นักทำโมเดลอาหาร', 'Food Model Maker', 'ปัจจุบันในประเทศไทย การทำโมเดลอาหารได้รับความนิยมมากขึ้น ในหมู่ผู้ประกอบการร้านอาหารต่าง ๆ ไม่ว่าจะขนาดเล็กหรือใหญ่ ต่างใช้โมเดลในการจัดแสดงเมนูอาหารเพื่อดึงดูดลูกค้ากันเป็นจำนวนมาก โดยเฉพาะร้านอาหารญี่ปุ่น เกาหลี และอาหารไทยแบรนด์ดังที่มีหลากหลายสาขา โดยจุดเริ่มต้นของการทำโมเดลนั้นมาจากประเทศในแถบยุโรปที่ได้นำกระดาษมาเป็นแบบจำลอง แต่ยังคงจำกัดอยู่ในวงการแพทย์ จนกระทั่งคนญี่ปุ่นได้นำมาดัดแปลงเป็นโมเดลอาหารที่ทำจากขี้ผึ้ง และพัฒนามาสู่การใช้วัสดุอื่น ๆ ในการผลิตโมเดลจำลองเพื่อให้มีความเสมือนจริงมากที่สุด เช่น พลาสติก เรซิน', 'ทักษะด้านศิลปะ, ทักษะด้านวิทยาศาสตร์, ทักษะการออกแบบ, ทักษะการวางแผนและจัดการเวลา, ทักษะการเรียนรู้', 'รักงานด้านศิลปะ, อดทนและมีสมาธิ, พร้อมเรียนรู้สิ่งใหม่, มีความคิดสร้างสรรค์, มีความละเอียดรอบคอบ, ช่างสังเกต', 'FoodModelMaker.png'),
(11, 'แพทย์นิติเวช', 'Forensic Pathologist', 'แพทย์นิติเวช หมอนิติเวช คือแพทย์เฉพาะทางพิเศษผู้ทำหน้าที่ตรวจสอบหาหลักฐานและสาเหตุเการเสียชีวิต ด้วยหลักการทางการแพทย์และนิติเวช โดยทำงานร่วมกับเจ้าหน้าที่ตำรวจและเจ้าหน้าที่หน่วยพิสูจน์หลักฐานของหน่วยงานรัฐฯ มีหน้าที่หลักคือการตรวจสอบ พิสูจน์ และส่งข้อมูลให้กับทางฝ่ายกฎหมายพิจารณา จึงเปรียบเสมือนคนที่ส่งสารจากผู้ตายผ่านร่องรอยที่หลงเหลืออยู่', 'ทักษะทางการแพทย์, ทักษะการสื่อสาร จิตวิทยา, ทักษะภาษาอังกฤษ', 'ชอบหรือมีใจรักในงาน, ไม่กลัวเลือด ไม่กลัวศพ ใจกล้า, ช่างสังเกต ใส่ใจรายละเอียดเล็ก ๆ, มีคุณธรรม จริยธรรม จรรยาบรรณในวิชาชีพ, ร่างกายที่แข็งแรง', 'forensicPathologist.png'),
(12, 'กราฟิกดีไซนเนอร์', 'Graphic Designer', 'เบื้องหลังของความสวยงาม นักออกแบบไม่ได้แค่วาดเส้นเท่ ๆ ออกมาอย่างง่ายดาย หากต้องผ่านกระบวนการคิดอย่างเป็นขั้นตอน อย่างมีหลักการ เพื่อตอบสนองวัตถุประสงค์ของชิ้นงานนั้น ๆ ว่ามีขึ้นเพื่ออะไร แล้วจะใช้วิธีอะไรเพื่อตอบสนองเป้าหมายหลัก ดังนั้น ทุกไอเดียบรรเจิดล้วนต้องมีที่มา และกว่าจะคลอดออกมาได้ต้องผ่านความยาก ความลำบากไม่ต่างกับทุกอาชีพ', 'ทักษะการคิดวิเคราะห์, ทักษะการสื่อสาร, ทักษะการวาดรูปและใช้โปรแกรมคอมพิวเตอร์, ทักษะการประยุกต์ใช้, การแก้ปัญหาเฉพาะหน้า, ทักษะการจัดการเวลา', 'มีความคิดสร้างสรรค์, ช่างสังเกต รักการเรียนรู้, เชื่อมั่นในตนเอง, มีมนุษยสัมพันธ์ที่ดี, มีวินัย อดทน, มีความเข้าใจคนอื่น, ละเอียดรอบคอบ, มีความรับผิดชอบ', 'Graphicdesigner.png'),
(13, 'นักกายภาพบำบัด', 'Physiotherapist', 'กายภาพบำบัด (Physical Therapy) เป็นวิชาชีพด้านวิทยาศาสตร์สุขภาพ ที่มุ่งส่งเสริม ป้องกัน และรักษาปัญหาการเคลื่อนไหวผิดปกติจากโรคหรือภาวะต่างๆ ตลอดช่วงชีวิต โดยมีนักกายภาพบำบัด (PT) และผู้ช่วยนักกายภาพบำบัดทำหน้าที่ดูแลผู้ป่วยตามแนวทางการรักษาที่กำหนด', 'ทักษะความชำนาญในการใช้มือทั้งสองข้าง, ทักษะด้านการพูดคุยสื่อสาร, ทักษะการแก้ไขปัญหา รู้จักยืดหยุ่นพลิกแพลง, ทักษะการจัดการเวลา', 'ทักษะการแก้ไขปัญหา, รู้จักยืดหยุ่น, พลิกแพลง, วิธีการทำการรักษาเพื่อให้เหมาะสมกับคนไข้ในแต่ละครั้ง', 'Physiotherapist.webp'),
(14, 'โปรเเกรมเมอร์', 'Programmer', 'คอมพิวเตอร์โปรแกรมเมอร์คือผู้นำข้อมูลไปออกแบบรายละเอียดการวางโครงสร้างระบบคอมพิวเตอร์ โดยเขียนโปรแกรมด้วยภาษาทางคอมพิวเตอร์ที่แตกต่างกัน เช่น ภาษาซี ภาษาจาวา เป็นต้น พวกเขามีหน้าที่เขียนและทดสอบรหัสหรือโค้ดเพื่อทำให้คอมพิวเตอร์และซอฟต์แวร์ทำงานได้ โดยอาจมีนักวิเคราะห์ระบบช่วยทำการตรวจสอบอีกครั้งเพื่อให้มั่นใจในผลลัพธ์การทำงาน และในกรณีที่เกิดปัญหาจากการทำงาน คอมพิวเตอร์โปรแกรมเมอร์จะทำการตรวจสอบรหัสที่เกิดข้อผิดพลาดและซ่อมแซมแก้ไขให้ถูกต้อง', 'ทักษะด้านคอมพิวเตอร์, ทักษะการวิเคราะห์, Problem Solving', 'มีความรู้ด้านคอมพิวเตอร์และสนใจด้านการเขียนโปรแกรม, ขวนขวายที่จะเรียนรู้สิ่งใหม่ๆ, มีความคิดสร้างสรรค์, ละเอียดถี่ถ้วน', 'Programmer.png'),
(15, 'นักประชาสัมพันธ์', 'Public Relations Specialist', 'นักประชาสัมพันธ์ หรือ ที่เรียกกันสั้น ๆ ว่า PR เป็นอาชีพที่คอยสร้างภาพลักษณ์ขององค์กรและผู้บริหาร โดย PR ถือเป็นอาชีพที่เป็นหน้าตาบริษัท ต้องทำหน้าที่วางแผนการประชาสัมพันธ์และสื่อสารองค์กรผ่านสื่อมีเดียหลากหลายประเภท เพื่อให้เกิดภาพลักษณ์และชื่อเสียงที่ดีขององค์กรนั้นๆ', 'ทักษะการสื่อสาร, ทักษะความการบริหารจัดการ, ทักษะการแก้ไขปัญหา, ทักษะการพูด, ทักษะการเขียน, ทักษะภาษาอังกฤษ', 'มีมนุษย์สัมพันธ์ดี, ชอบเรียนรู้สิ่งใหม่การเรียนรู้สิ่งใหม่ๆ, ละเอียดรอบคอบ, มีความอดทนสูง', 'PublicRelationsSpecialist.jpg'),
(16, 'วิศวกรความมั่นคงปลอดภัยทางไซเบอร์', 'Security Engineer', 'Cyber Security ทำหน้าที่ ตรวจจับ วิเคราะห์ และค้นหาการโจมตีทาง Cyber หรือแหล่งข้อมูล ทำการเฝ้าระวังทั้งจากภายในและภายนอก เพื่อแจ้งเหตุให้ลูกค้าหรือองค์กรรับทราบถึงเหตุการณ์ผ่านกระบวนการและช่องทางที่กำหนด เพื่อให้ลูกค้าหรือองค์กรสามารถตอบสนองต่อภัยคุกคาม Cyber ได้อย่างทันท่วงที', 'ทักษะด้านคอมพิวเตอร์, ทักษะการวิเคราะห์, Problem Solving, ทักษะความเป็นผู้นำและการทำงานเป็นทีม', 'สามารถรับแรงกดดันสูงได้, มีความกระตือรือร้น, คิดเร็วทำเร็ว, มีความคิดริเริ่ม', 'software-developer.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `role`) VALUES
(1, 'benzti', 'ben45990ab@gmail.com', '$2y$10$Ce258HvBilk2D9Y8pJECd.LZ9If3QLXd6e3RBGURjfQ.nJgAMadii', '2025-03-13 12:19:54', 'admin'),
(2, 'bb', 'wittayakonteeip@gmail.com', '$2y$10$9OvUchhKBqwGO.lTsnZchenCqNwuZlEG2wbJCbm4yIzyDJ/HP/1qS', '2025-03-13 15:08:32', 'user'),
(3, 'benzti', 'wittayakontee@gmail.com', '$2y$10$wUo4z8JuWRDyJ5NBjyN32OZ8pNDwu62g7bJBwy.lOqD8KM7TeHkwm', '2025-03-13 17:16:04', 'user'),
(4, 'wittaya', 's65122250008@ssru.ac.th', '$2y$10$L8BOAhQAX77UjNVH/1ls4uD576BtUzZ.ezO9V.Vw2w7Tx18PccA3u', '2025-03-13 17:37:54', 'user'),
(5, 'bbb', 'wittayakontee01@gmail.com', '$2y$10$O6S51Vs5TMZ3Hr7vHVjWE.MRshl8pxBNo5/3Ix7MuTWJ0RcYzFmg.', '2025-03-13 17:56:02', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
