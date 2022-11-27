-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 12:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Other'),
(2, 'Developer & IT'),
(3, 'Business'),
(4, 'Entertainment'),
(7, 'PCs & Devices'),
(8, 'Software');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'Hafiz', 'mia', 'sajib.cse5.bu@gmail.com', 'very good', 0, '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'MGiant Tech Corp.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p><strong>Managing Director</strong> Md. Mainul Islam Munna</p>\r\n<p>&nbsp;</p>\r\n<p><strong>CEO</strong>&nbsp; Elon Musk</p>\r\n<p>&nbsp;</p>\r\n<p><strong>General manager&nbsp;</strong> &nbsp; &nbsp; &nbsp; Sundor Pichai</p>'),
(2, 'Privacy Policy', '<div class=\"grid\">\r\n<div class=\"row m-b-xl\">\r\n<div class=\"col-1-1\">\r\n<div class=\"row\">\r\n<div class=\"l-col-10-12 xl-col-20-24\">\r\n<h1>MGiant Privacy Statement</h1>\r\n<div class=\"Lastupdated\"><span id=\"psp_last_updated\">Last Updated: November<span class=\"body-tight-2\">&nbsp;2022</span></span><span class=\"m-l-md\"><a class=\"mscom-link\" title=\"What\'s new?\" href=\"https://go.microsoft.com/fwlink/p/?LinkId=780766\" target=\"_blank\">&nbsp;What\'s new?</a></span></div>\r\n<div class=\"Lastupdated\"><span class=\"m-l-md\"><br /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"grid\">\r\n<div class=\"row\">\r\n<div class=\"col-1-1\">\r\n<div class=\"row header_content m-b-bl m-t-lg\">\r\n<div class=\"xl-col-18-24\">\r\n<div class=\"m-t-xl;m-b-bl\">\r\n<p>Your privacy is important to us. This privacy statement explains the personal data Microsoft processes, how Microsoft processes it, and for what purposes.</p>\r\n<p>Microsoft offers a wide range of products, including server products used to help operate enterprises worldwide, devices you use in your home, software that students use at school, and services developers use to create and host what&rsquo;s next. References to Microsoft products in this statement include Microsoft services, websites, apps, software, servers, and devices.</p>\r\n<p>Please read the product-specific details in this privacy statement, which provide additional relevant information. This statement applies to the interactions Microsoft has with you and the Microsoft products listed below, as well as other Microsoft products that display this statement.</p>\r\n<p>Young people may prefer starting with the&nbsp;<a class=\"mscom-link\" href=\"https://privacy.microsoft.com/young-people\">Privacy for young people</a>&nbsp;page. That page highlights information that may be helpful for young people.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(3, 'Terms Of Use', '<div id=\"primaryR1\" class=\"pad-banner\" data-grid=\"container\" data-region-key=\"primaryr1\" data-m=\"{&quot;cN&quot;:&quot;primaryR1 1&quot;,&quot;cT&quot;:&quot;Region_coreui-region&quot;,&quot;id&quot;:&quot;r1a2&quot;,&quot;sN&quot;:1,&quot;aN&quot;:&quot;a2&quot;}\">\r\n<div id=\"coreui-banner-z54ayej\" data-m=\"{&quot;cN&quot;:&quot;R1Banner 1&quot;,&quot;cT&quot;:&quot;Module_coreui-banner&quot;,&quot;id&quot;:&quot;m1r1a2&quot;,&quot;sN&quot;:1,&quot;aN&quot;:&quot;r1a2&quot;}\" data-module-id=\"Authoring.AllModules|primaryR1|coreui-region|coreui-banner-z54ayej|coreui-banner\">\r\n<div class=\"m-banner f-align-left\" data-grid=\"col-12\">\r\n<h1 class=\"c-heading-3\">MGiant Terms of Use</h1>\r\n<p class=\"c-caption-2\">&nbsp;</p>\r\n<p>Last Updated: November 27, 2022</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Acceptance of Terms</h2>\r\n<p>&nbsp;</p>\r\n<p>The services that Microsoft provides to you are subject to the following Terms of use (\"TOU\"). Mgiant reserves the right to update and modify the TOU at any time without notice to you. The most current version of the TOU can be reviewed by clicking on the \"Terms of Use\" hyperlink located at the bottom of our webpages. When we make updates to the TOU, MGiant will update the date at the top of this page. By using the website after a new version of the TOU has been posted, you agree to the terms of such new version.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Description of Services</h2>\r\n<p>&nbsp;</p>\r\n<p>Through its network of Web properties, MGiant provides you with access to a variety of resources, including developer tools, download areas, communication forums and product information (collectively \"Services\"). The Services, including any updates, enhancements, new features, and/or the addition of any new Web properties, are subject to these TOU.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Personal and Non-Commercial Use Limitation</h2>\r\n<p>&nbsp;</p>\r\n<p>Unless otherwise specified, the Services are for your personal and non-commercial use. You may not modify, copy, distribute, transmit, display, perform, reproduce, publish, license, create derivative works from, transfer, or sell any information, software, products, or services obtained from the Services.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Privacy and Protection of Personal Information</h2>\r\n<p>&nbsp;</p>\r\n<p>Review the&nbsp;<a class=\"c-hyperlink\" href=\"http://go.microsoft.com/fwlink/?linkid=248681\">Privacy Statement</a>&nbsp;disclosures relating to the collection and use of your personal data.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Content</h2>\r\n<p>&nbsp;</p>\r\n<p>All content included in or made available through the Services, such as text, graphics, logos, icons, images, sounds, music, digital downloads, data compilation, software, and documents, is the exclusive property of Microsoft or its content suppliers and is protected by the various applicable trade dress, copyright, trademark, patent, and other intellectual property and unfair competition laws in the United States and internationally (collectively, \"Content\"). All rights not expressly granted to you in this TOU are reserved and retained by MGiant or its licensors, suppliers, publishers, rightsholders, or other content providers.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Software</h2>\r\n<p>&nbsp;</p>\r\n<p>Any software that is made available to download from the Services (\"Software\") is the copyrighted work of MGiant and/or its suppliers. Use of the Software is governed by the terms of the end user license agreement, if any, which accompanies or is included with the Software (\"License Agreement\"). An end user will be unable to install any Software that is accompanied by or includes a License Agreement, unless he or she first agrees to the License Agreement terms. Third party scripts or code, linked to or referenced from this website, are licensed to you by the third parties that own such code, not by Microsoft.</p>\r\n<p>&nbsp;</p>\r\n<p>The Software is made available for download solely for use by end users according to the License Agreement. Any reproduction or redistribution of the Software not in accordance with the License Agreement is expressly prohibited by law and may result in severe civil and criminal penalties. Violators will be prosecuted to the maximum extent possible.</p>\r\n<p>&nbsp;</p>\r\n<p><span>Without limiting the foregoing, copying or reproduction of the software to any other server or location for further reproduction or redistribution is expressly prohibited, unless such reproduction or redistribution is expressly permitted by the license agreement accompanying such software.</span></p>\r\n<p>&nbsp;</p>\r\n<p>The software is warranted, if at all, only according to the terms of the license agreement.&nbsp;<span>Except as warranted in the license agreement, Microsoft corporation hereby disclaims all warranties and conditions with regard to the software, including all warranties and conditions of merchantability, whether express, implied or statutory, fitness for a particular purpose, title and non-infringement.</span>&nbsp;For your convenience, Microsoft may make available as part of the services or in its software products, tools, and utilities for use and/or download.&nbsp;<span>Microsoft does not make any assurances with regard to the accuracy of the results or output that derives from such use of any such tools and utilities.</span>&nbsp;Please respect the intellectual property rights of others when using the tools and utilities made available on the services or in Microsoft software products.</p>\r\n<p>&nbsp;</p>\r\n<p><span>Restricted Rights Legend</span>. Any Software which is downloaded from the Services for or on behalf of the United States of America, its agencies and/or instrumentalities (\"US Government\"), is provided with Restricted Rights. Use, duplication, or disclosure by the US Government is subject to restrictions as set forth in subparagraph (c)(1)(ii) of the Rights in Technical Data and Computer Software clause at DFARS 252.227-7013 or subparagraphs (c)(1) and (2) of the Commercial Computer Software - Restricted Rights at 48 CFR 52.227-19, as applicable. Manufacturer is Microsoft Corporation, One Microsoft Way, Redmond, WA 98052-6399.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Documents</h2>\r\n<p>&nbsp;</p>\r\n<p>Permission to use Documents (such as white papers, press releases, datasheets, and FAQs) from the Services is granted, provided that (1) the below copyright notice appears in all copies and that both the copyright notice and this permission notice appear, (2) unless explicitly covered by another license or agreement, use of such Documents from the Services is for informational and non-commercial or personal use only and will not be copied or posted on any network computer or broadcast in any media, and (3) no modifications of any Documents are made. Accredited educational institutions, such as K-12, universities, private/public colleges, and state community colleges, may download and reproduce the Documents for distribution in the classroom. Distribution outside the classroom requires express written permission. Use for any other purpose is expressly prohibited by law and may result in severe civil and criminal penalties. Violators will be prosecuted to the maximum extent possible.</p>\r\n<p>&nbsp;</p>\r\n<p>Documents specified above do not include the design or layout of the Microsoft.com website or any other Microsoft owned, operated, licensed, or controlled site. Elements of Microsoft websites are protected by trade dress, trademark, unfair competition, and other laws and may not be copied or imitated in whole or in part. No logo, graphic, sound or image from any Microsoft website may be copied or retransmitted unless expressly permitted by Microsoft.</p>\r\n<p>&nbsp;</p>\r\n<p><span>Microsoft and/or its respective suppliers make no representations about the suitability of the information contained in the documents and related graphics published as part of the services for any purpose. All such documents and related graphics are provided \"as is\" without warranty of any kind. Microsoft and/or its respective suppliers hereby disclaim all warranties and conditions with regard to this information, including all warranties and conditions of merchantability, whether express, implied or statutory, fitness for a particular purpose, title and non-infringement. In no event shall Microsoft and/or its respective suppliers be liable for any special, indirect or consequential damages, or any damages whatsoever resulting from loss of use, data, or profits, whether in an action of contract, negligence or other tortious action, arising out of or in connection with the use or performance of information available from the services.</span></p>\r\n<p>&nbsp;</p>\r\n<p>The documents and related graphics published on the services could include technical inaccuracies or typographical errors. Changes are periodically added to the information herein. Microsoft and/or its respective suppliers may make improvements and/or changes in the product(s) and/or the program(s) described herein at any time.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Limitation of Liability</h2>\r\n<p>&nbsp;</p>\r\n<p><span>In no event shall Microsoft and/or its respective suppliers be liable for any special, indirect or consequential damages, or any damages whatsoever resulting from loss of use, data, or profits, whether in an action of contract, negligence or other tortious action, arising out of or in connection with the use or performance of software, documents, provision of or failure to provide services, or information available from the services.</span></p>\r\n<p>&nbsp;</p>\r\n<h2>Member Account, Password, and Security</h2>\r\n<p>&nbsp;</p>\r\n<p>If any of the Services requires you to open an account, you must complete the registration process by providing us with current, complete, and accurate information as prompted by the applicable registration form. You also will choose a password and a username. You are entirely responsible for maintaining the confidentiality of your password and account. Furthermore, you are entirely responsible for any and all activities that occur under your account. You agree to notify Microsoft immediately of any unauthorized use of your account or any other breach of security. Microsoft will not be liable for any loss that you may incur as a result of someone else using your password or account, either with or without your knowledge. However, you could be held liable for losses incurred by Microsoft or another party due to someone else using your account or password. You may not use anyone else\'s account at any time, without the permission of the account holder.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>No Unlawful or Prohibited Use</h2>\r\n<p>&nbsp;</p>\r\n<p>As a condition of your use of the Services, you will not use the Services for any purpose that is unlawful or prohibited by these terms, conditions, and notices. You may not use the Services in any manner that could damage, disable, overburden, or impair any Microsoft server, or the network(s) connected to any Microsoft server, or interfere with any other party\'s use and enjoyment of any Services. You may not attempt to gain unauthorized access to any Services, other accounts, computer systems or networks connected to any Microsoft server or to any of the Services, through hacking, password mining or any other means. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available through the Services. You may not attempt to copy or change, alter, or otherwise attempt to modify the Services or these TOU.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Use of Services</h2>\r\n<p>&nbsp;</p>\r\n<p>The Services may contain e-mail services, bulletin board services, chat areas, news groups, forums, communities, personal web pages, calendars, photo albums, file cabinets and/or other message or communication facilities designed to enable you to communicate with others (each a \"Communication Service\" and collectively \"Communication Services\"). You agree to use the Communication Services only to post, send and receive messages and material that are proper and, when applicable, related to the particular Communication Service. By way of example, and not as a limitation, you agree that when using the Communication Services, you will not:</p>\r\n<ul class=\"c-list\">\r\n<li>Use the Communication Services in connection with surveys, contests, pyramid schemes, chain letters, junk email, spamming or any duplicative or unsolicited messages (commercial or otherwise).</li>\r\n<li>Defame, abuse, harass, stalk, threaten or otherwise violate the legal rights (such as rights of privacy and publicity) of others.</li>\r\n<li>Publish, post, upload, distribute or disseminate any inappropriate, profane, defamatory, obscene, indecent, or unlawful topic, name, material, or information.</li>\r\n<li>Upload, or otherwise make available, files that contain images, photographs, software, or other material protected by intellectual property laws, including, by way of example, and not as limitation, copyright, or trademark laws (or by rights of privacy or publicity) unless you own or control the rights thereto or have received all necessary consent to do the same.</li>\r\n<li>Use any material or information, including images or photographs, which are made available through the Services in any manner that infringes any copyright, trademark, patent, trade secret, or other proprietary right of any party.</li>\r\n<li>Upload files that contain viruses, Trojan horses, worms, time bombs, cancelbots, corrupted files, or any other similar software or programs that may damage the operation of another\'s computer or property of another.</li>\r\n<li>Advertise or offer to sell or buy any goods or services for any business purpose unless such Communication Services specifically allows such messages.</li>\r\n<li>Download any file posted by another user of a Communication Service that you know, or reasonably should know, cannot be legally reproduced, displayed, performed, and/or distributed in such manner.</li>\r\n<li>Falsify or delete any copyright management information, such as author attributions, legal or other proper notices or proprietary designations or labels of the origin or source of software or other material contained in a file that is uploaded.</li>\r\n<li>Restrict or inhibit any other user from using and enjoying the Communication Services.</li>\r\n<li>Violate any code of conduct or other guidelines which may be applicable for any particular Communication Service.</li>\r\n<li>Harvest or otherwise collect information about others, including e-mail addresses.</li>\r\n<li>Violate any applicable laws or regulations.</li>\r\n<li>Create a false identity for the purpose of misleading others.</li>\r\n<li>Use, download or otherwise copy, or provide (whether or not for a fee) to a person or entity any directory of users of the Services or other user or usage information or any portion thereof.</li>\r\n</ul>\r\n<p>Microsoft has no obligation to monitor the Communication Services. However, Microsoft reserves the right to review materials posted to the Communication Services and to remove any materials in its sole discretion. Microsoft reserves the right to terminate your access to any or all of the Communication Services at any time, without notice, for any reason whatsoever.</p>\r\n<p>&nbsp;</p>\r\n<p>Microsoft reserves the right at all times to disclose any information as Microsoft deems necessary to satisfy any applicable law, regulation, legal process or governmental request, or to edit, refuse to post or to remove any information or materials, in whole or in part, in Microsoft\'s sole discretion.</p>\r\n<p>&nbsp;</p>\r\n<p>Always use caution when giving out any personally identifiable information about yourself or your children in any Communication Services. Microsoft does not control or endorse the content, messages or information found in any Communication Services and, therefore, Microsoft specifically disclaims any liability with regard to the Communication Services and any actions resulting from your participation in any Communication Services. Managers and hosts are not authorized Microsoft spokespersons, and their views do not necessarily reflect those of Microsoft.</p>\r\n<p>&nbsp;</p>\r\n<p>Materials uploaded to the Communication Services may be subject to posted limitations on usage, reproduction and/or dissemination; you are responsible for adhering to such limitations if you download the materials.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Materials Provided to Microsoft or Posted at any Microsoft Website</h2>\r\n<p>&nbsp;</p>\r\n<p>Microsoft does not claim ownership of the materials you provide to Microsoft (including feedback and suggestions) or post, upload, input or submit to any Services or its associated services for review by the general public, or by the members of any public or private community, (each a \"Submission\" and collectively \"Submissions\"). However, by posting, uploading, inputting, providing or submitting (\"Posting\") your Submission you are granting Microsoft, its affiliated companies and necessary sublicensees permission to use your Submission in connection with the operation of their Internet businesses (including, without limitation, all Microsoft Services), including, without limitation, the license rights to: copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your Submission; to publish your name in connection with your Submission; and the right to sublicense such rights to any supplier of the Services.</p>\r\n<p>&nbsp;</p>\r\n<p>No compensation will be paid with respect to the use of your Submission, as provided herein. Microsoft is under no obligation to post or use any Submission you may provide, and Microsoft may remove any Submission at any time in its sole discretion.</p>\r\n<p>&nbsp;</p>\r\n<p>By Posting a Submission you warrant and represent that you own or otherwise control all of the rights to your Submission as described in these Terms of Use including, without limitation, all the rights necessary for you to provide, post, upload, input or submit the Submissions.</p>\r\n<p>&nbsp;</p>\r\n<p>In addition to the warranty and representation set forth above, by Posting a Submission that contain images, photographs, pictures or that are otherwise graphical in whole or in part (\"Images\"), you warrant and represent that (a) you are the copyright owner of such Images, or that the copyright owner of such Images has granted you permission to use such Images or any content and/or images contained in such Images consistent with the manner and purpose of your use and as otherwise permitted by these Terms of Use and the Services, (b) you have the rights necessary to grant the licenses and sublicenses described in these Terms of Use, and (c) that each person depicted in such Images, if any, has provided consent to the use of the Images as set forth in these Terms of Use, including, by way of example, and not as a limitation, the distribution, public display and reproduction of such Images. By Posting Images, you are granting (a) to all members of your private community (for each such Images available to members of such private community), and/or (b) to the general public (for each such Images available anywhere on the Services, other than a private community), permission to use your Images in connection with the use, as permitted by these Terms of Use, of any of the Services, (including, by way of example, and not as a limitation, making prints and gift items which include such Images), and including, without limitation, a non-exclusive, world-wide, royalty-free license to: copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your Images without having your name attached to such Images, and the right to sublicense such rights to any supplier of the Services. The licenses granted in the preceding sentences for Images will terminate at the time you completely remove such Images from the Services, provided that, such termination shall not affect any licenses granted in connection with such Images prior to the time you completely remove such Images. No compensation will be paid with respect to the use of your Images.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Notices and Procedure for Making Claims of Copyright Infringement</h2>\r\n<p>&nbsp;</p>\r\n<p>Pursuant to Title 17, United States Code, Section 512(c)(2), notifications of claimed copyright infringement should be sent to Service Provider\'s Designated Agent. All inquiries not relevant to the following procedure will not receive a response.</p>\r\n<p>&nbsp;</p>\r\n<p>Visit&nbsp;<a class=\"c-hyperlink\" href=\"https://aka.ms/notices-of-infringement\">Infringement Notices</a>&nbsp;to locate the notice and procedure for making claims of copyright infringement.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Links to Third-party Sites</h2>\r\n<p>&nbsp;</p>\r\n<p>The links in this area will let you leave Microsoft&rsquo;s site. The linked sites are not under the control of Microsoft and&nbsp;<span>Microsoft is not responsible for the contents of any linked site or any link contained in a linked site, or any changes or updates to such sites. Microsoft is not responsible for webcasting, or any other form of transmission received from any linked site.</span>&nbsp;Microsoft is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by Microsoft of the site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Unsolicited Idea Submission Policy</h2>\r\n<p>&nbsp;</p>\r\n<p>Microsoft or any of its employees do not accept or consider unsolicited ideas, including ideas for new advertising campaigns, new promotions, new products or technologies, processes, materials, marketing plans or new product names. Please do not send any original creative artwork, samples, demos, or other works. The sole purpose of this policy is to avoid potential misunderstandings or disputes when Microsoft&rsquo;s products or marketing strategies might seem similar to ideas submitted to Microsoft. So, please do not send your unsolicited ideas to Microsoft or anyone at Microsoft. If, despite our request that you not send us your ideas and materials, you still send them, please understand that Microsoft makes no assurances that your ideas and materials will be treated as confidential or proprietary.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"primaryR19\" class=\"pad-social\" data-grid=\"container\" data-region-key=\"primaryr19\" data-m=\"{&quot;cN&quot;:&quot;primaryR19 1&quot;,&quot;cT&quot;:&quot;Region_coreui-region&quot;,&quot;id&quot;:&quot;r2a2&quot;,&quot;sN&quot;:2,&quot;aN&quot;:&quot;a2&quot;}\">\r\n<div id=\"coreui-socialfollow-gjhc4sj\" data-m=\"{&quot;cN&quot;:&quot;R19SocialFollow 1&quot;,&quot;cT&quot;:&quot;Module_coreui-socialfollow&quot;,&quot;id&quot;:&quot;m1r2a2&quot;,&quot;sN&quot;:1,&quot;aN&quot;:&quot;r2a2&quot;}\" data-module-id=\"Authoring.AllModules|primaryR19|coreui-region|coreui-socialfollow-gjhc4sj|coreui-socialfollow\"><span>Follow MGiant</span>\r\n<ul>\r\n<li><a title=\"Follow Microsoft on Facebook, opens in a new tab\" href=\"https://www.facebook.com/Microsoft\" target=\"&quot;_blank&quot;\" data-m=\"{&quot;id&quot;:&quot;n1m1r2a2&quot;,&quot;sN&quot;:1,&quot;aN&quot;:&quot;m1r2a2&quot;}\"><source type=\"image/svg+xml\" srcset=\"//www.microsoft.com/onerfstatics/marketingsites-eas-prod/_h/2532198d/coreui.statics/images/social/facebook.svg\" /><img src=\"https://www.microsoft.com/onerfstatics/marketingsites-eas-prod/_h/85288795/coreui.statics/images/social/facebook.png\" alt=\"Facebook\" /></a></li>\r\n<li><a title=\"Follow Microsoft on Twitter, opens in a new tab\" href=\"https://www.twitter.com/Microsoft\" target=\"&quot;_blank&quot;\" data-m=\"{&quot;id&quot;:&quot;n2m1r2a2&quot;,&quot;sN&quot;:2,&quot;aN&quot;:&quot;m1r2a2&quot;}\"><source type=\"image/svg+xml\" srcset=\"//www.microsoft.com/onerfstatics/marketingsites-eas-prod/_h/6f40299c/coreui.statics/images/social/twitter.svg\" /><img src=\"https://www.microsoft.com/onerfstatics/marketingsites-eas-prod/_h/93690392/coreui.statics/images/social/twitter.png\" alt=\"Twitter\" /></a></li>\r\n<li><a title=\"Follow Microsoft on LinkedIn, opens in a new tab\" href=\"https://www.linkedin.com/company/microsoft\" target=\"&quot;_blank&quot;\" data-m=\"{&quot;id&quot;:&quot;n3m1r2a2&quot;,&quot;sN&quot;:3,&quot;aN&quot;:&quot;m1r2a2&quot;}\"><source type=\"image/svg+xml\" srcset=\"//www.microsoft.com/onerfstatics/marketingsites-eas-prod/_h/413bd4a8/coreui.statics/images/social/linkedin.svg\" /><img src=\"https://www.microsoft.com/onerfstatics/marketingsites-eas-prod/_h/b23f9ba2/coreui.statics/images/social/linkedin.png\" alt=\"LinkedIn\" /></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div id=\"footerArea\" class=\"x-hidden-print uhf\" data-m=\"{&quot;cN&quot;:&quot;footerArea 1&quot;,&quot;cT&quot;:&quot;Area_coreuiArea&quot;,&quot;id&quot;:&quot;a3Body&quot;,&quot;sN&quot;:3,&quot;aN&quot;:&quot;Body&quot;}\">\r\n<div id=\"footerRegion\" data-region-key=\"footerregion\" data-m=\"{&quot;cN&quot;:&quot;footerRegion 1&quot;,&quot;cT&quot;:&quot;Region_coreui-region&quot;,&quot;id&quot;:&quot;r1a3&quot;,&quot;sN&quot;:1,&quot;aN&quot;:&quot;a3&quot;}\">\r\n<div id=\"coreui-universalfooter-m12vj4u\" data-m=\"{&quot;cN&quot;:&quot;footer1 1&quot;,&quot;cT&quot;:&quot;Module_coreui-universalfooter&quot;,&quot;id&quot;:&quot;m1r1a3&quot;,&quot;sN&quot;:1,&quot;aN&quot;:&quot;r1a3&quot;}\" data-module-id=\"Authoring.AllModules|footerRegion|coreui-region|coreui-universalfooter-m12vj4u|coreui-universalfooter\">\r\n<div class=\"c-uhff-nav-row\">\r\n<div class=\"c-uhff-nav-group\" data-m=\"{&quot;cN&quot;:&quot;footerNavColumn1_cont&quot;,&quot;cT&quot;:&quot;Container&quot;,&quot;id&quot;:&quot;c1c1c1m1r1a3&quot;,&quot;sN&quot;:1,&quot;aN&quot;:&quot;c1c1m1r1a3&quot;}\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(1, 7, 'HP M24fd FHD USB-C Monitor', '<p>Lose yourself in the picture-perfect immersion of this massive 23.8-inch canvas designed to redefine comfort, wellness, and sustainability. Play, work, or simply stare into the new definition of high definition.</p>', 'upload/762242ff22.png', 'MGiant Tech Corp.', 'Monitor', '2022-10-17', 1),
(5, 2, 'Surface Studio 2+', '<p class=\"c01234 c01240 c01226 c01232\">This device is preloaded with Windows 11. This device is preloaded with Windows 11.Learn more &gt; Elevate your creativity with the most versatile all-in-one that gives you a large canvas to express yourself at any angle, and the most immersive experience for Microsoft Teams video calls, on a striking 28&rdquo; PixelSense&reg; touchscreen. Dive into brilliant color and graphics and let ideas flow with Surface Pen,&sup3; weightless transformations, and Windows 11. Surface Studio 2+ includes: Surface mouse, Surface keyboard and Surface pen. Why buy from Microsoft Store Our Surface Promise offers free 2-3 day shipping, free returns through Jan 31, 2023, and flexible payment options that start at 0% APR. Plus, We&rsquo;ll refund you the difference if our price drops before Jan 2, 2023. Our personal shoppers can help you choose the right gifts, from Xbox games to Surface devices.</p>', 'upload/192fcb62e1.png', 'MGiant Tech Corp.', 'Laptop', '2022-10-17', 1),
(13, 2, 'MGiant Developer', '<div class=\"media-card-content-titles\">\r\n<h2 id=\"github\">GitHub</h2>\r\n</div>\r\n<div class=\"display-flex flex-direction-column justify-content-space-between flex-grow-1\">\r\n<p class=\"margin-bottom-xs flex-grow-1\">Code-repository for software development and version control using Git.</p>\r\n<p class=\"margin-bottom-xs flex-grow-1\">&nbsp;</p>\r\n<p>At a high level, GitHub is a website and cloud-based service that helps developers store and manage their code, as well as track and control changes to their code. To understand exactly what GitHub is, you need to know two connected principles:</p>\r\n<ul>\r\n<li>Version control</li>\r\n<li>Git</li>\r\n</ul>\r\n<p>In this article, we&rsquo;ll first explain those two principles. Then, we&rsquo;ll dig into more about GitHub and how you can actually use GitHub to work with WordPress and/or Kinsta.</p>\r\n</div>', 'upload/6eac444987.png', 'MGiant Tech Corp.', 'Any platform. Your languages. Your tools.', '2022-10-17', 1),
(15, 2, 'Save up to $200 on Surface Pro 9', '<div class=\"card-body  pt-3\">\r\n<p class=\"h3    \"><span style=\"font-size: medium;\"><strong>Surface Pro 9</strong></span></p>\r\n<p class=\"h3    \">Wish list This device is preloaded with Windows 11. This device is preloaded with Windows 11. Learn more &gt; Surface Pro 9 gives you the tablet flexibility you want and the laptop performance and battery life&sup2; you need to move through your day &mdash; all in one ultra-portable device. Now with powerful new processors and optional high-speed 5G⁶ connectivity. Why buy from Microsoft Store Our Surface Promise offers free 2-3 day shipping, free returns through Jan 31, 2023, and flexible payment options that start at 0% APR. Plus, We&rsquo;ll refund you the difference if our price drops before Jan 2, 2023. Our personal shoppers can help you choose the right gifts, from Xbox games to Surface devices. Learn why to buy from Microsoft Store &gt; Connect with us for gift ideas &gt; Bundle and save with the Surface Pro 9 Essentials Bundle Includes your choice of Surface Pro 9, Surface Pro Signature Keyboard, Microsoft 365 and Microsoft Complete Protection Plan.</p>\r\n</div>', 'upload/033b46c16b.png', 'MGiant Tech Corp.', 'Laptop', '2022-10-17', 1),
(16, 7, 'Open gallery SAVE UP TO $300.00', '<p><span style=\"font-size: medium;\"><strong>Surface Laptop 5</strong></span></p>\r\n<p>Wish list This device is preloaded with Windows 11. This device is preloaded with Windows 11. Learn more &gt; Multitasking speed powered by 12th Gen Intel&reg; Core&trade; i5/i7 processors built on the Intel&reg; Evo&trade; platform, with Windows 11 and a vibrant touchscreen. Sleek and beautiful, in your choice of size.&sup1; And battery life&sup2; for real life to do your thing your way all day. Surface Laptop 5 gives you the perfect balance to do it all. Why buy from Microsoft Store Our Surface Promise offers free 2-3 day shipping, free returns through Jan 31, 2023, and flexible payment options that start at 0% APR. Plus, We&rsquo;ll refund you the difference if our price drops before Jan 2, 2023. Our personal shoppers can help you choose the right gifts, from Xbox games to Surface devices. Learn why to buy from Microsoft Store &gt; Connect with us for gift ideas &gt; Bundle and save with the Surface Laptop 5 Essentials Bundle Includes your choice of Surface Laptop 5, Microsoft 365 and Microsoft Complete Protection Plan and 20% off optional accessories.</p>', 'upload/363c74fce1.png', 'MGiant Tech Corp.', 'Laptop', '2022-10-17', 1),
(17, 1, 'Virtual workshops and training', '<h3 class=\"h2\">Learning starts here</h3>\r\n<p class=\"mb-3 mt-3\">Pick a training or workshop that&rsquo;ll help boost your business skills, uplift your education environment, or encourage learning at home.</p>\r\n<p>Discover something new or build on your skills in our free, interactive workshops and trainings.</p>', 'upload/56d6ef183f.jpg', 'MGiant Tech Corp.', 'Other', '2022-10-17', 1),
(22, 3, 'Dream, build, and transform with MGiant Cloud', '<p>Cloud computing[1] is the on-demand availability of computer system resources, especially data storage (cloud storage) and computing power, without direct active management by the user.[2] Large clouds often have functions distributed over multiple locations, each of which is a data center. Cloud computing relies on sharing of resources to achieve coherence and typically uses a \"pay as you go\" model, which can help in reducing capital expenses but may also lead to unexpected operating expenses for users.[3]</p>\r\n<p>&nbsp;</p>\r\n<p>Advocates of public and hybrid clouds claim that cloud computing allows companies to avoid or minimize up-front IT infrastructure costs. Proponents also claim that cloud computing allows enterprises to get their applications up and running faster, with improved manageability and less maintenance, and that it enables IT teams to more rapidly adjust resources to meet fluctuating and unpredictable demand,[4][5][6] providing burst computing capability: high computing power at certain periods of peak demand.[7]</p>', 'upload/e3158f7fa4.png', 'MGiant Tech Corp.', 'Clpoud storage', '2022-10-30', 1),
(24, 7, 'Surface Pro 8', '<p><span style=\"font-size: small;\"><strong>Save up to $600.00 | Surface Pro 8</strong></span></p>\r\n<p>This device is preloaded with Windows 11. Learn more Wish list Unlock more possibilities than ever with the Pro designed for a Pro like you. The first Surface Pro built on the Intel&reg; Evo&trade; platform on select configurati...More Why buy from Microsoft Store We offer free 2-3 day shipping, free returns through Jan 31, 2023, and flexible payment options that start at 0% APR. Plus, we&rsquo;ll refund you the difference if our price drops before Jan 2, 2023. Our personal shoppers can help you choose the right gifts, from Xbox games to Surface devices.</p>', 'upload/0294627f54.png', 'MGiant Tech Corp.', 'Laptop', '2022-11-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'A River of Technologies', 'upload/slider/50a5118453.jpg'),
(2, 'PCs & Devices', 'upload/slider/2895c2645c.jpg'),
(4, 'Artificial Inteligence Technology', 'upload/slider/09619e79cf.jpg'),
(5, 'System testing', 'upload/slider/fbd23039a6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Mainul Islam Munna', 'Munna7', '202cb962ac59075b964b07152d234b70', 'munna.cse6.bu@gmail.com', '<p>Student of university of barisal.Department of CSE.</p>\r\n<p>&nbsp;</p>\r\n<div id=\"gtx-anchor\" style=\"position: absolute; visibility: hidden; left: 8px; top: 8px; width: 260.406px; height: 34px;\">&nbsp;</div>\r\n<div class=\"jfk-bubble gtx-bubble\" style=\"visibility: visible; left: 123px; top: 52px; opacity: 1;\">&nbsp;</div>', 0),
(2, 'Taohid', 'Islam', '3111962eeb9509eaf53b21f1dce9c00f', 'tauhid.cse6@gmail.com', '<p>I author of this shop</p>', 1),
(3, 'Nayeem', 'Obaidul', '827ccb0eea8a706c4c34a16891f84e7b', 'neyeem.cse6.bu@gmail.com', '<p>Editor of this site</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'MGiant Tech Corp.', 'Internet and Software Service Provider', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
