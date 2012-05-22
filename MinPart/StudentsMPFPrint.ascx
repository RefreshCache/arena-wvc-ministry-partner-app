<%@ Control Language="C#" Inherits="ArenaWeb.UserControls.Custom.WVC.MPFPrint" CodeFile="MPFPrint.ascx.cs" CodeBehind="MPFPrint.ascx.cs" %>
<div id="printForm">
  <h1>Ministry Partner Application</h1>
  <h2>Contact Information</h2>
  <dl>

    <dt>First Name:</dt>
    <dd><asp:Label ID="firstName" runat="server"></asp:Label></dd>
    <dt>Last Name:</dt>
    <dd><asp:Label ID="lastName" runat="server"></asp:Label></dd>
    <dt>E-Mail:</dt>
    <dd><asp:Label ID="email" runat="server"></asp:Label></dd>

    <dt>Spouse Name:</dt>
    <dd><asp:Label ID="spouseName" runat="server" attid="192"></asp:Label></dd>

    <dt>Street Address:</dt>
    <dd><asp:Label ID="streetAddress1" runat="server"></asp:Label></dd>
    <dd><asp:Label ID="streetAddress2" runat="server"></asp:Label></dd>
    <dt>City:</dt>
    <dd><asp:Label ID="city" runat="server"></asp:Label></dd>
    <dt>State:</dt>
    <dd><asp:Label ID="state" runat="server"></asp:Label></dd>

    <dt>ZIP Code:</dt>
    <dd><asp:Label ID="zipCode" runat="server"></asp:Label></dd>
    <dt>Years at this address:</dt>
    <dd><asp:Label ID="yearsAtAddress" runat="server" attid="104"></asp:Label></dd>
    <dt>Previous Addresses:</dt>
    <dd><asp:Label ID="previousAddresses" runat="server" attid="105"></asp:Label></dd>
    <dt>Years at previous addresses:</dt>
    <dd><asp:Label ID="yearsAtPrevAddress" runat="server" attid="106"></asp:Label></dd>
    
    <dt>Home Phone:</dt>
    <dd><asp:Label ID="homePhone" runat="server"></asp:Label></dd>
    <dt>Work Phone:</dt>
    <dd><asp:Label ID="workPhone" runat="server"></asp:Label></dd>
    <dt>Cell Phone:</dt>
    <dd><asp:Label ID="cellPhone" runat="server"></asp:Label></dd>
    <dt>SMS:</dt>
    <dd><asp:Label ID="cellsms" runat="server"></asp:Label></dd>

  </dl>
  <h2>Volunteer Information</h2>
  <dl>
    <dt>Marital Status:</dt>
    <dd><asp:Label ID="maritalStatus" runat="server"></asp:Label></dd>
    <dt>Gender:</dt>
    <dd><asp:Label ID="gender" runat="server"></asp:Label></dd>

    <dt>Birth Date:</dt>
    <dd><asp:Label ID="birthdate" runat="server"></asp:Label></dd>
    <dt>Employer:</dt>
    <dd><asp:Label ID="employer" runat="server" attid="28"></asp:Label></dd>
    <dt>Employer City:</dt>
    <dd><asp:Label ID="employerCity" runat="server" attid="103"></asp:Label></dd>
    <dt>Occupation:</dt>
    <dd><asp:Label ID="occupation" runat="server" attid="29"></asp:Label></dd>
    <dt>CPR Certified:</dt>
    <dd><asp:Label ID="cprTraining" runat="server" attid="109"></asp:Label></dd>
    <dt>CPR Training Details:</dt>
    <dd><asp:Label ID="cprExplain" runat="server" attid="110"></asp:Label></dd>
    <dt>Medical Condition:</dt>
    <dd><asp:Label ID="medicalConditions" runat="server" attid="137"></asp:Label></dd>
    <dt>Please explain:</dt>
    <dd><asp:Label ID="medExplain" runat="server" attid="138"></asp:Label></dd>
    <dt>Painful Experiences:</dt>
    <dd><asp:Label ID="painfulExperiences" runat="server" attid="132"></asp:Label></dd>
    <dt>Meet with Counselor:</dt>
    <dd><asp:Label ID="counseling" runat="server" attid="133"></asp:Label></dd>
  </dl>
  <h2>Spiritual Information</h2>
  <dl>
    <dt>Churches in last 5 years:</dt>
    <dd><asp:Label ID="churchHistory" runat="server" attid="111"></asp:Label></dd>
    <dt>Relationship with Jesus Christ:</dt>
    <dd><asp:Label ID="spiritualRelationship" runat="server" attid="112"></asp:Label></dd>
    <dt>Interested Reasons:</dt>
    <dd><asp:Label ID="servingInterest" runat="server" attid="113"></asp:Label></dd>
    <dt>Ministry Experience:</dt>
    <dd><asp:Label ID="experience" runat="server" attid="114"></asp:Label></dd>
    <dt>Skills:</dt>
    <dd><asp:Label ID="Label5" runat="server" attid="115"></asp:Label></dd>
  </dl>
  <h2>Legal History</h2>
  <dl>
    <dt>Criminal Record:</dt>
    <dd><asp:Label ID="arrestRecord" runat="server" attid="134"></asp:Label></dd>
    <dt>Please Explain:</dt>
    <dd><asp:Label ID="arrestExplain" runat="server" attid="187"></asp:Label></dd>
    <dt>Moral Circumstances:</dt>
    <dd><asp:Label ID="moralIssue" runat="server" attid="135"></asp:Label></dd>
    <dt>Please Explain:</dt>
    <dd><asp:Label ID="moralExplain" runat="server" attid="188"></asp:Label></dd>
    <dt>Agree to Background Check:</dt>
    <dd><asp:Label ID="bgCheck" runat="server" attid="136"></asp:Label></dd>
    <dt>Please Explain:</dt>
    <dd><asp:Label ID="backgroundExplain" runat="server" attid="189"></asp:Label></dd>
    <dt>Sexual Misconduct Policy:</dt>
    <dd><asp:Label ID="SMP" runat="server" attid="170"></asp:Label></dd>
  </dl>
  <h2>References</h2>
  <h3>First Reference</h3>
  <dl>
    <dt>Name:</dt>
    <dd><asp:Label ID="firstReferenceName" runat="server" attid="116"></asp:Label></dd>
    <dt>Relationship:</dt>
    <dd><asp:Label ID="firstReferenceRelationship" runat="server" attid="117"></asp:Label></dd>
    <dt>Address:</dt>
    <dd><asp:Label ID="firstReferenceAddress" runat="server" attid="118"></asp:Label></dd>
    <dt>Phone:</dt>
    <dd><asp:Label ID="firstReferencePhone" runat="server" attid="119"></asp:Label></dd>
    <dt>Email:</dt>
    <dd><asp:Label ID="firstReferenceEmail" runat="server" attid="120"></asp:Label></dd>
  </dl>
  <h3>Second Reference</h3>
  <dl>
    <dt>Name:</dt>
    <dd><asp:Label ID="secondReferenceName" runat="server" attid="121"></asp:Label></dd>
    <dt>Relationship:</dt>
    <dd><asp:Label ID="secondReferenceRelationship" runat="server" attid="122"></asp:Label></dd>
    <dt>Address:</dt>
    <dd><asp:Label ID="secondReferenceAddress" runat="server" attid="123"></asp:Label></dd>
    <dt>Phone:</dt>
    <dd><asp:Label ID="secondReferencePhone" runat="server" attid="124"></asp:Label></dd>
    <dt>Email:</dt>
    <dd><asp:Label ID="secondReferenceEmail" runat="server" attid="125"></asp:Label></dd>
  </dl>
  <h3>Third Reference</h3>
  <dl>
    <dt>Name:</dt>
    <dd><asp:Label ID="thirdReferenceName" runat="server" attid="126"></asp:Label></dd>
    <dt>Relationship:</dt>
    <dd><asp:Label ID="thirdReferenceRelationship" runat="server" attid="127"></asp:Label></dd>
    <dt>Address:</dt>
    <dd><asp:Label ID="thirdReferenceAddress" runat="server" attid="128"></asp:Label></dd>
    <dt>Phone:</dt>
    <dd><asp:Label ID="thirdReferencePhone" runat="server" attid="130"></asp:Label></dd>
    <dt>Email:</dt>
    <dd><asp:Label ID="thirdReferenceEmail" runat="server" attid="131"></asp:Label></dd>
  </dl>
   <h2>Other Info</h2>
  <dl>
    <dt>Preferred Campus:</dt>
    <dd><asp:Label ID="Label1" runat="server" attid="193"></asp:Label></dd>
    <dt>Preferred Student Age Group:</dt>
    <dd><asp:Label ID="Label2" runat="server" attid="258"></asp:Label></dd>
    <dt>Preferred Opportunity:</dt>
    <dd><asp:Label ID="Label3" runat="server" attid="259"></asp:Label></dd>
    <dt>Driver's License:</dt>
    <dd><asp:Label ID="Label4" runat="server" attid="147"></asp:Label></dd>
    <dt>Kid's Names and Ages:</dt>
    <dd><asp:Label ID="Label6" runat="server" attid="195"></asp:Label></dd>
    <dt>All cities lived in as an adult:</dt>
    <dd><asp:Label ID="Label7" runat="server" attid="148"></asp:Label></dd>
    <dt>Non-church work with vulnerable populations:</dt>
    <dd><asp:Label ID="Label8" runat="server" attid="149"></asp:Label></dd>
    <dt>Age Group or Gender Preference:</dt>
    <dd><asp:Label ID="Label9" runat="server" attid="150"></asp:Label></dd>
  </dl>
   <h2>Code of Conduct</h2>
  <dl>
    <dt>I declare that all statements contained in my Safety Application are true. I understand that any misrepresentation or omission is cause for dismissal from any ministry involvement.</dt>
    <dd><asp:Label ID="Label10" runat="server" attid="151"></asp:Label></dd>
    <dt>I understand that my references and contacts from prior church or non-church work with children, student or disabled adults will be contacted and that an appropriate criminal background check will be conducted. I authorize investigations of all statements contained in this application. I specifically authorize the church to undertake a criminal background check of my past.</dt>
    <dd><asp:Label ID="Label11" runat="server" attid="152"></asp:Label></dd>
    <dt>I understand that I can withdraw from the application process at any time.</dt>
    <dd><asp:Label ID="Label12" runat="server" attid="153"></asp:Label></dd>
    <dt>I understand that WVC has a policy of ZERO TOLERANCE for abuse and takes all allegations seriously. I further understand that WVC cooperates fully with the authorities to investigate all cases of alleged abuse. Abuse of any kind is grounds for immediate dismissal from my volunteer position and possible criminal charges.</dt>
    <dd><asp:Label ID="Label13" runat="server" attid="154"></asp:Label></dd>
    <dt>I declare that I am not a pedophile or child molester. I have not perpetrated physical abuse, sexual abuse, emotional abuse or neglect against a child, student or disabled adult, and I have never been accused of these acts.</dt>
    <dd><asp:Label ID="Label14" runat="server" attid="155"></asp:Label></dd>
    <dt>I understand and agree that false statements regarding past conduct and/or present situations may be grounds for denial of this application to provide volunteer services, and that refusal to inform WVC of the contents of a sealed criminal record will result in the automatic denial of the application.</dt>
    <dd><asp:Label ID="Label19" runat="server" attid="156"></asp:Label></dd>
    <dt>I will read and abide by all WVC Policies and Procedures.</dt>
    <dd><asp:Label ID="Label20" runat="server" attid="157"></asp:Label></dd>
    <dt>All aspects of this application, including the paperwork, interview and Ministry Safe Training will be completed prior to my serving.</dt>
    <dd><asp:Label ID="Label15" runat="server" attid="158"></asp:Label></dd>
    <dt>I will attend a WVC church service on a regular basis.</dt>
    <dd><asp:Label ID="Label18" runat="server" attid="159"></asp:Label></dd>
    <dt>I, as a leader, will never be alone with any individual student, regardless of gender.</dt>
    <dd><asp:Label ID="Label17" runat="server" attid="160"></asp:Label></dd>
    <dt>I will not have inappropriate physical contact with anyone on the team. I understand that I am making a commitment to the Children's Ministry Department at Woodmen Valley Chapel and agree to be a responsible team member</dt>
    <dd><asp:Label ID="Label16" runat="server" attid="161"></asp:Label></dd>
  </dl>
   <h2>Submit</h2>
  <dl>
    <dt>Other Information:</dt>
    <dd><asp:Label ID="otherInformation" runat="server" attid="169"></asp:Label></dd>
    <dt>Applicant Signature:</dt>
    <dd><asp:Label ID="applicantSignature" runat="server" attid="167"></asp:Label></dd>
    <dt>Signature Date:</dt>
    <dd><asp:Label ID="signatureDate" runat="server" attid="168"></asp:Label></dd>
  </dl>
</div>