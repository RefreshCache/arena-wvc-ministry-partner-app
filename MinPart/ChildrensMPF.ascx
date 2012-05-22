<%@ Control Language="C#" Inherits="ArenaWeb.UserControls.Custom.WVC.MPF.Custom.MinistryPartnerForm" CodeFile="CustomMPF.ascx.cs" CodeBehind="CustomMPF.ascx.cs" %>

<input type="hidden" id="iRedirect" runat="server" name="iRedirect" />

<script runat="server">

</script>

<div id="formWrapper" style="display: none;">
  <h3>Ministry Partner Application</h3>
  <a href="javascript:window.close();" class="close">Close</a>
  <h5 id="status"></h5>
  <h5 id="data"></h5>
  <ul class="formNav">
    <li class="visualization" id="visualization_stepOne"><a class="currentStep" href="javascript:void(0);">Contact Information</a></li>
    <li class="visualization" id="visualization_stepTwo"><a href="javascript:void(0);">Volunteer Information</a></li>
    <li class="visualization" id="visualization_stepThree"><a href="javascript:void(0);">Spiritual History</a></li>
    <li class="visualization" id="visualization_stepFour"><a href="javascript:void(0);">Legal History</a></li>
    <li class="visualization" id="visualization_stepFive"><a href="javascript:void(0);">References</a></li>
    <li class="visualization" id="visualization_stepSix"><a href="javascript:void(0);">Other Info</a></li>
    <li class="visualization"id="visualization_finalStep"><a href="javascript:void(0);">Submit</a></li>
  </ul>
  <div>
All fields with a red arrow (<img alt="red arrow" src="/UserControls/Custom/WVC/MinPart/images/backgrounds/required.gif" />) are required.
</div>
  <div class="clear">&nbsp;</div>
  
    <fieldset class="step" id="first">
      <legend>Contact Information</legend>
      <div>
        <label for="firstName" title="First Name">First Name</label>
        <input type="text" name="firstName" id="firstName" class="required" runat="server" />
      </div>
      <div>
        <label for="lastName" title="Last Name">Last Name</label>
        <input type="text" name="lastName" id="lastName" class="required" runat="server" />
      </div>
      <div>
        <label for="email" title="Email">E-Mail</label>
        <input type="text" name="email" id="email" class="required email" runat="server" />
      </div>
      <div>
        <label for="streetAddress" title="Street Address">Street Address</label>
        <input type="text" name="streetAddress" id="streetAddress1" class="required" runat="server" />
      </div>
      <div>
        <label for="streetAddress2" title="Street Address2">Street Address</label>
        <input type="text" name="streetAddress2" id="streetAddress2" class="" runat="server" />
      </div>
      <div>
        <label for="city" title="City">City</label>
        <input type="text" name="city" id="city" class="required" runat="server" />
      </div>
      <div>
        <label for="state" title="State">State</label>
        <select name="state" id="state" class="required" runat="server" >
          <option class="image">Select...</option>
		    <option class="image"  value="AL">Alabama</option>
		    <option class="image"  value="AK">Alaska</option>
		    <option class="image"  value="AZ">Arizona</option>
		    <option class="image"  value="AR">Arkansas</option>
		    <option class="image"  value="CA">California</option>
		    <option class="image"  value="CO">Colorado</option>
		    <option class="image"  value="CT">Connecticut</option>
		    <option class="image"  value="DE">Delaware</option>
		    <option class="image"  value="DC">District of Columbia</option>
		    <option class="image"  value="FL">Florida</option>
		    <option class="image"  value="GA">Georgia</option>
		    <option class="image"  value="GU">Guam</option>
		    <option class="image"  value="HI">Hawaii</option>
		    <option class="image"  value="ID">Idaho</option>
		    <option class="image"  value="IL">Illinois</option>
		    <option class="image"  value="IN">Indiana</option>
		    <option class="image"  value="IA">Iowa</option>
		    <option class="image"  value="KS">Kansas</option>
		    <option class="image"  value="KY">Kentucky</option>
		    <option class="image"  value="LA">Louisiana</option>
		    <option class="image"  value="ME">Maine</option>
		    <option class="image"  value="MD">Maryland</option>
		    <option class="image"  value="MA">Massachusetts</option>
		    <option class="image"  value="MI">Michigan</option>
		    <option class="image"  value="MN">Minnesota</option>
		    <option class="image"  value="MS">Mississippi</option>
		    <option class="image"  value="MO">Missouri</option>
		    <option class="image"  value="MT">Montana</option>
		    <option class="image"  value="NE">Nebraska</option>
		    <option class="image"  value="NV">Nevada</option>
		    <option class="image"  value="NH">New Hampshire</option>
		    <option class="image"  value="NJ">New Jersey</option>
		    <option class="image"  value="NM">New Mexico</option>
		    <option class="image"  value="NY">New York</option>
		    <option class="image"  value="NC">North Carolina</option>
		    <option class="image"  value="ND">North Dakota</option>
		    <option class="image"  value="OH">Ohio</option>
		    <option class="image"  value="OK">Oklahoma</option>
		    <option class="image"  value="OR">Oregon</option>
		    <option class="image"  value="PA">Pennsylvania</option>
		    <option class="image"  value="PR">Puerto Rico</option>
		    <option class="image"  value="RI">Rhode Island</option>
		    <option class="image"  value="SC">South Carolina</option>
		    <option class="image"  value="SD">South Dakota</option>
		    <option class="image"  value="TN">Tennessee</option>
		    <option class="image"  value="TX">Texas</option>
		    <option class="image"  value="UT">Utah</option>
		    <option class="image"  value="VT">Vermont</option>
		    <option class="image"  value="VI">Virgin Islands</option>
		    <option class="image"  value="VA">Virginia</option>
		    <option class="image"  value="WA">Washington</option>
		    <option class="image"  value="WV">West Virginia</option>
		    <option class="image"  value="WI">Wisconsin</option>
		    <option class="image"  value="WY">Wyoming</option>
		    <option class="image"  value="AA">AA</option>
		    <option class="image"  value="AE">AE</option>
		    <option class="image"  value="AP">AP</option>
        </select>
      </div>
      <div>
        <label for="zipCode" title="Zip Code">Zip Code</label>
        <input type="text" name="zipCode" id="zipCode" class="required" runat="server" />
      </div>
      <div>
        <label for="SSN" title="Social Security Number">Social Security Number</label>
        <input type="text" name="socialsecurity" id="socialsecurity" class="required" runat="server" />
      </div>
      <div>
        <label for="yearsAtAddress" title="Years At Address">How many years have you lived at this address?</label>
        <input type="text" name="yearsAtAddress" id="yearsAtAddress" class="digits prefill" attid="104" runat="server" />
      </div>
      <div id="previousAddressesHider" style="display:none;">
        <div>
          <label for="previousAddresses" title="Previous Addresses">Please list the previous addresses you've lived in the last five years</label>
          <textarea cols="50" rows="10"  name="previousAddresses" class="null" id="previousAddresses" runat="server" attid="105"></textarea>
        </div>
        <div>
          <label for="yearsAtPrevAddress" title="Years At Previous Address">How many years did you live at these addresses?</label>
          <input type="text" name="yearsAtPrevAddress" id="yearsAtPrevAddress" class="digits prefill" runat="server" attid="106" />
        </div>
      </div>
      <div>
        <label for="homePhone" title="Home Phone">Home Phone</label>
        <input type="text" name="homePhone" id="homePhone" class="phoneUS required" runat="server" />
      </div>
      <div>
        <label for="workPhone" title="Work Phone">Work Phone</label>
        <input type="text" name="workPhone" id="workPhone" class="phoneUS" runat="server" />
      </div>
      <div>
        <label for="cellPhone" title="Cell Phone">Cell Phone</label>
        <input type="text" name="cellPhone" id="cellPhone" class="phoneUS" runat="server" />
      </div>
      <div class="showCB" id="smsBox">
        <label for="cellsms" class="cBox" title="cellSMS">Allow Text Messaging?</label>
        <input type="checkbox" name="cellsms" id="cellsms" runat="server" />
      </div>
      <div class="clear">&nbsp;</div>
    </fieldset>
    <div class="clear">&nbsp;</div>
    <fieldset class="step" id="second">
      <legend>Volunteer Information</legend>
      <div>
        <label for="maritalStatus" title="Marital Status">Marital Status</label>
        <select name="maritalStatus" id="maritalStatus" runat="server" class="required">
            <option value="Select...">Select...</option>
	        <option value="Single">Single</option>
	        <option value="Married">Married</option>
	        <option value="Divorced">Divorced</option>
	        <option value="Widowed">Widowed</option>
	        <option value="Remarried">Remarried</option>
	        <option value="Separated">Separated</option>
        </select>
      </div>
      <div>
        <label for="spoiseName" title="Spouse">Spouse</label>
        <input type="text" name="spouseName" id="spouseName" runat="server" attid="192" />
      </div>
      <div>
        <label for="gender" title="Gender">Gender</label>
        <select name="gender" id="gender" runat="server" class="required">
          <option selected="selected"></option>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
        </select>
      </div>
      <div>
        <label for="birthDate" title="Birth Date">Birth Date</label>
        <div id="birthDate">
          <select id="birthMonth" runat="server">
            <option selected="selected"></option>
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
          </select>
          <select id="birthDay" runat="server">
            <option selected="selected"></option>
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option>
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option>
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
          </select>

          <select id="birthYear" runat="server" class="required">
            <option selected="selected"></option>
            
          </select> 
        </div>
      </div>
      <div>
        <label for="employer" title="Employer">Employer</label>
        <input type="text" name="employer" id="employer" class="" attid="28" runat="server" />
      </div>
      <div>
        <label for="employerCity" title="Employer City">Employer City</label>
        <input type="text" name="employerCity" id="employerCity" class="" attid="103" runat="server" />
      </div>
      <div>
        <label for="occupation" title="Occupation">Occupation</label>
        <input type="text" name="occupation" id="occupation" class="" attid="29" runat="server" />
      </div>
      <div class="clear">&nbsp;</div>
      <div>
        <label class="vCent radioLabel" for="cpr" title="CPR Training">Do you have any training in, or are you certified in CPR?</label>
        <div id="cpr" class="radioBox"><span class="labelHolder">
          <label for="cprNo">No</label>
          <input type="radio" name="cprTraining" id="cprNo" value="No" checked="true" runat="server" attid="109" />
          </span> <span class="labelHolder">
          <label for="cprYes">Yes</label>
          <input type="radio" name="cprTraining" id="cprYes" value="Yes" runat="server" attid="109" />
          </span> </div>
      </div>
      <div class="clear">&nbsp;</div>
      <div id="cprDetails" style="display:none;">
        <label for="cprExplain" title="CPR Explanation">Please provide the details of your CPR training</label>
        <textarea cols="50" rows="10" name="cprExplain" id="cprExplain" runat="server" attid="110"></textarea>
      </div>
      <div class="clear">&nbsp;</div>
      <div>
        <label class="vCentTwo radioLabel" for="medical" title="Medical">Do you presently have a medical condition that might affect your capacity to serve as a ministry partner?</label>
        <div id="medical" class="radioBox"><span class="labelHolder">
          <label for="medNo">No</label>
          <input type="radio" name="medicalConditions" id="medNo" value="No" checked="true" runat="server" attid="137" />
          </span> <span class="labelHolder">
          <label for="medYes">Yes</label>
          <input type="radio" name="medicalConditions" id="medYes" value="Yes" runat="server" attid="137" />
          </span> </div>
      </div>
      <div class="clear">&nbsp;</div>
      <div id="medDetails" style="display:none;">
        <label for="medExplain" title="Medical Explanation">Please explain:</label>
        <textarea cols="50" rows="10" name="medExplain" id="medExplain" runat="server" attid="138"></textarea>
      </div>
      <div class="clear">&nbsp;</div>
      <label class="vCentThree radioLabel" for="experiences" title="Experiences">Have you had any painful experiences in your life<br /> that have better equipped you or may hinder you from productively serving in ministry?</label>
      <div id="experiences" class="radioBox"><span class="labelHolder">
        <label for="expNo">No</label>
        <input type="radio" name="painfulExperiences" id="expNo" value="No" checked="true" runat="server" attid="132" />
        </span> <span class="labelHolder">
        <label for="expYes">Yes</label>
        <input type="radio" name="painfulExperiences" id="expYes" value="Yes" runat="server" attid="132" />
        </span> </div>
      <div class="clear">&nbsp;</div>
      <div id="expDetails" style="display:none;">
        <label for="counselor" class="radioLabel" title="Counselor">Would you like to meet with a counselor regarding this circumstance?</label>
        <div id="counselor" class="radioBox"><span class="labelHolder">
          <label for="counselorNo">No</label>
          <input type="radio" name="counseling" id="counselorNo" value="No" checked="true" runat="server" attid="133"/>
          </span> <span class="labelHolder">
          <label for="counselorYes">Yes</label>
          <input type="radio" name="counseling" id="counselorYes" value="Yes" runat="server" attid="133" />
          </span> </div>
      </div>
    </fieldset>
    <div class="clear">&nbsp;</div>
    <fieldset style="display:block;" class="step" id="third">
      <legend>Spiritual History</legend>
      <div>
        <label for="churchHistory" title="Churches Attended">Please list the name, city and state of the churches you have regularly attended in the last five years</label>
        <textarea cols="50" rows="10"  name="churchHistory" id="churchHistory" runat="server" attid="111" class="required"></textarea>
      </div>
      <div>
        <label for="spiritualRelationship" title="Spiritual Relationship">Please tell us about your spiritual journey and relationship with Jesus Christ</label>
        <textarea cols="50" rows="10"  name="spiritualRelationship" id="spiritualRelationship" runat="server" attid="112" class="required"></textarea>
      </div>
      <div>
        <label for="servingInterest" title="Serving Interest">Why are you interested in serving<br /> in this volunteer capacity?</label>
        <textarea cols="50" rows="10"  name="servingInterest" id="servingInterest" runat="server" attid="113" class="required"></textarea>
      </div>
      <div>
        <label for="experience" title="Volunteer or Ministry Experience">Please describe your volunteer or ministry experience (both past and current, WVC or other churches)</label>
        <textarea cols="50" rows="10"  name="experience" id="experience" runat="server" attid="114" class="required"></textarea>
      </div>
      <div>
        <label for="talents" title="Talents and Skills">List special talents, vocation, preparation, training or other experience which help qualify you for this volunteer role</label>
        <textarea cols="50" rows="10"  name="talents" id="talents" runat="server" attid="115"></textarea>
      </div>
    </fieldset>
    <fieldset style="display:none;" class="step" id="fourth">
      <legend>Legal History</legend>
      <div class="clear">&nbsp;</div>
      <div>
        <label class="vCentThree radioLabel" for="arrest" title="Arrest"> Have you ever been arrested for a criminal offense (sexual, abuse, fraud, drugs) excluding minor traffic violations?</label>
        <div id="arrest" class="radioBox"><span class="labelHolder">
          <label for="arrestNo">No</label>
          <input type="radio" name="arrestRecord" id="arrestNo" value="No" checked="true" runat="server" attid="134"/>
          </span> <span class="labelHolder">
          <label for="arrestYes">Yes</label>
          <input type="radio" name="arrestRecord" id="arrestYes" value="Yes" runat="server" attid="134" />
          </span> </div>
      </div>
      <div class="clear">&nbsp;</div>
      <div id="arrestDetails" style="display:none;">
        <label for="arrestExplain" title="Arrest Explanation">Please explain:</label>
        <textarea cols="50" rows="10"  name="arrestExplain" id="arrestExplain" runat="server" attid="187"></textarea>
      </div>
      <div class="clear">&nbsp;</div>
      <div>
        <label class="vCentThree radioLabel" for="moral" title="Moral">Are there any moral circumstances involving your current lifestyle or in your background that would bring into question your ability to work in ministry (alcohol and/or substance abuse, pornography, sexual immorality)?</label>
        <div id="moral" class="radioBox"><span class="labelHolder">
          <label for="moralNo">No</label>
          <input type="radio" name="moralIssue" id="moralNo" value="No" checked="true" runat="server" attid="135" />
          </span> <span class="labelHolder">
          <label for="moralYes">Yes</label>
          <input type="radio" name="moralIssue" id="moralYes" value="Yes" runat="server" attid="135" />
          </span> </div>
      </div>
      <div class="clear">&nbsp;</div>
      <div id="moralDetails" style="display:none;">
        <label for="moralExplain" title="Moral Explanation">Please explain:</label>
        <textarea cols="50" rows="10"  name="moralExplain" id="moralExplain" runat="server" attid="188"></textarea>
      </div>
      <div class="showCB labelFix">
        <label class="vCentThree radioLabel" for="background" title="Background">We conduct a background check on all applicants (16 and above) who desire to work with children and students and in any other critical areas as deemed necessary. Do you have any objections?</label>
        <div id="background" class="radioBox"><span class="labelHolder">
          <label for="moralNo">No</label>
          <input type="radio" name="bgCheck" id="backgroundNo" value="No" checked="true" runat="server" attid="136" />
          </span> <span class="labelHolder">
          <label for="moralYes">Yes</label>
          <input type="radio" name="bgCheck" id="backgroundYes" value="Yes" runat="server" attid="136" />
          </span> </div>
      </div>
      <div class="clear">&nbsp;</div>
      <div id="backgroundDetails" style="display:none;">
        <label for="backgroundExplain" title="Background Explanation">Please explain:</label>
        <textarea cols="50" rows="10"  name="backgroundExplain" id="backgroundExplain" runat="server" attid="189"></textarea>
      </div>
      <div class="clear">&nbsp;</div>
      <div>
        <label class="vCentThree" for="policy" title="Policy"> I have read and will comply with the <a href="http://www.woodmenvalley.org/images/images_WVC/SMP%20updated%2008-2009%20wo%20sig%20page.pdf">Sexual Misconduct Policy</a> </label>
        <input type="checkbox" name="policy" id="policy" class="required" runat="server" attid="170"/>
      </div>
    </fieldset>
    <div class="clear">&nbsp;</div>
    <fieldset style="display:block;" class="step" id="fifth">
      <legend>References</legend>
      <h4>First Reference</h4>
      <div>
        <label for="firstReferenceName" title="First Reference Name">Name</label>
        <input type="text" name="firstReferenceName" id="firstReferenceName" runat="server" attid="116" class="required" />
      </div>
      <div>
        <label for="firstReferenceRelationship" title="First Reference Relationship">Relationship</label>
        <input type="text" name="firstReferenceRelationship" id="firstReferenceRelationship" runat="server" attid="117" class="required" />
      </div>
      <div>
        <label for="firstReferenceAddress" title="First Reference Address">Address</label>
        <input type="text" name="firstReferenceAddress" id="firstReferenceAddress" runat="server" attid="118" class="required" />
      </div>
      <div>
        <label for="firstReferencePhone" title="First Reference Phone">Phone</label>
        <input type="text" name="firstReferencePhone" id="firstReferencePhone" runat="server" attid="119" class="required" />
      </div>
      <div>
        <label for="firstReferenceEmail" title="firstReferenceEmail">E-Mail</label>
        <input type="text" name="firstReferenceEmail" id="firstReferenceEmail" runat="server" attid="120" class="required" />
      </div>
      <h4>Second Reference</h4>
      <div>
        <label for="secondReferenceName" title="Second Reference Name">Name</label>
        <input type="text" name="secondReferenceName" id="secondReferenceName" runat="server" attid="121" class="required" />
      </div>
      <div>
        <label for="secondReferenceRelationship" title="Second Reference Relationship">Relationship</label>
        <input type="text" name="secondReferenceRelationship" id="secondReferenceRelationship" runat="server" attid="122" class="required" />
      </div>
      <div>
        <label for="secondReferenceAddress" title="Second Reference Address">Address</label>
        <input type="text" name="secondReferenceAddress" id="secondReferenceAddress" runat="server" attid="123" class="required" />
      </div>
      <div>
        <label for="secondReferencePhone" title="Second Reference Phone">Phone</label>
        <input type="text" name="secondReferencePhone" id="secondReferencePhone" runat="server" attid="124" class="required" />
      </div>
      <div>
        <label for="secondReferenceEmail" title="secondReferenceEmail">E-Mail</label>
        <input type="text" name="secondReferenceEmail" id="secondReferenceEmail" runat="server" attid="125" class="required" />
      </div>
      <h4>Third Reference</h4>
      <div>
        <label for="thirdReferenceName" title="Third Reference Name">Name</label>
        <input type="text" name="thirdReferenceName" id="thirdReferenceName" runat="server" attid="126" class="required" />
      </div>
      <div>
        <label for="thirdReferenceRelationship" title="Third Reference Relationship">Relationship</label>
        <input type="text" name="thirdReferenceRelationship" id="thirdReferenceRelationship" runat="server" attid="127" class="required" />
      </div>
      <div>
        <label for="thirdReferenceAddress" title="Third Reference Address">Address</label>
        <input type="text" name="thirdReferenceAddress" id="thirdReferenceAddress" runat="server" attid="128" class="required" />
      </div>
      <div>
        <label for="thirdReferencePhone" title="Third Reference Phone">Phone</label>
        <input type="text" name="thirdReferencePhone" id="thirdReferencePhone" runat="server" attid="130" class="required" />
      </div>
      <div>
        <label for="thirdReferenceEmail" title="thirdReferenceEmail">E-Mail</label>
        <input type="text" name="thirdReferenceEmail" id="thirdReferenceEmail" runat="server" attid="131" class="required" />
      </div>
    </fieldset>
    <div class="clear">&nbsp;</div>
    <fieldset class="step" id="sixth">
      <legend>Other Info</legend>
      <h4>Serving Preferences</h4>
      <div>
        <label for="preferredCampus" title="Preferred Campus">Preferred Campus:</label>
        <select name="preferredCampus" id="preferredCampus" runat="server" attid="193">
            <option value="">Select...</option>
            <option value="10191">Rockrimmon</option>
            <option value="10192">Woodmen Heights</option>
        </select>
      </div>
      <div>
        <label for="timeOfService" title="Preferred Time of Service">Preferred Time of Service:</label>
        <select name="timeOfService" id="timeOfService" runat="server" attid="194">
            <option value="">Select...</option>
            <option value="Saturday, 6 pm">Saturday, 6 pm</option>
            <option value="Sunday, 9 am">Sunday, 9 am</option>
            <option value="Sunday, 11:15 am">Sunday, 11:15 am</option>
            <option value="Sunday, 6 pm">Sunday, 6 pm</option>
            <option value="Wednesday, 6 pm (Awana)">Wednesday, 6 pm (Awana)</option>
        </select>
      </div>
      <div>
        <label for="driversLicense" title="Drivers License">Drivers License</label>
        <input type="text" name="driversLicense" id="driversLicense" runat="server" attid="147" />
      </div>
      <div>
        <label for="familyInfo" title="Kids Names and Ages">Kids Names and Ages:</label>
        <textarea cols="50" rows="10" name="familyInfo" id="familyInfo" runat="server" attid="195"></textarea>
      </div>
      <div>
        <label for="completeAddressHistory" title="Complete Address History">List all citites and states where you have lived as an adult:</label>
        <textarea cols="50" rows="10" name="completeAddressHistory" id="completeAddressHistory" runat="server" attid="148"></textarea>
      </div>
      <div>
        <label for="nonChurchChildWork" title="Non-Church Child Work">List all previous non-church work involving children, students or vulnerable populations. (List each organization's name and address, type of work carried out, dates and a contact person familiar with your work there).</label>
        <textarea cols="50" rows="10" name="nonChurchChildWork" id="nonChurchChildWork" runat="server" attid="149"></textarea>
      </div>
      <div>
        <label for="agePreference" title="Age Preference">Do you have a preference concering the age group or sex of children or students with whom you would like to work? Why?</label>
        <textarea cols="50" rows="10" name="agePreference" id="agePreference" runat="server" attid="150"></textarea>
      </div>
      
      <h4>Children's Ministries Volunteer Statement and Agreed Code of Conduct:</h4>
      <div>
        <label class="vCentThree" for="trueStatements" title="Statements are True">I declare that all statements contained in my Safety Application are true. I understand that any misrepresentation or omission is cause for dismissal from any ministry involvement.</label>
        <input type="checkbox" name="trueStatements" id="trueStatements" class="required" runat="server" attid="151"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="investigation" title="Agree to Investigation">I understand that my references and contacts from prior church or non-church work with children, student or disabled adults will be contacted and that an appropriate criminal background check will be conducted. I authorize investigations of all statements contained in this application. I specifically authorize the church to undertake a criminal background check of my past.</label>
        <input type="checkbox" name="investigation" id="investigation" class="required" runat="server" attid="152"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="withrawal" title="Can Withdraw from Process">I understand that I can withdraw from the application process at any time.</label>
        <input type="checkbox" name="withdrawal" id="withdrawal" class="required" runat="server" attid="153"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="zeroTolerance" title="Zero Tolerance">I understand that WVC has a policy of ZERO TOLERANCE for abuse and takes all allegations seriously. I further understand that WVC cooperates fully with the authorities to investigate all cases of alleged abuse. Abuse of any kind is grounds for immediate dismissal from my volunteer position and possible criminal charges.</label>
        <input type="checkbox" name="zeroTolerance" id="zeroTolerance" class="required" runat="server" attid="154"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="notAPedophile" title="Not A Pedophile">I declare that I am not a pedophile or child molester. I have not perpetrated physical abuse, sexual abuse, emotional abuse or neglect against a child, student or disabled adult, and I have never been accused of these acts.</label>
        <input type="checkbox" name="notAPedophile" id="notAPedophile" class="required" runat="server" attid="155"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="falseStatements" title="No False Statements">I understand and agree that false statements regarding past conduct and/or present situations may be grounds for denial of this application to provide volunteer services, and that refusal to inform WVC of the contents of a sealed criminal record will result in the automatic denial of the application.</label>
        <input type="checkbox" name="falseStatements" id="falseStatements" class="required" runat="server" attid="156"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="followPolicies" title="Follow Policies">I will read and abide by all WVC Policies and Procedures.</label>
        <input type="checkbox" name="followPolicies" id="followPolicies" class="required" runat="server" attid="157"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="applicationComplete" title="Application will be complete">All aspects of this application, including the paperwork, interview and Ministry Safe Training will be completed prior to my serving.</label>
        <input type="checkbox" name="applicationComplete" id="applicationComplete" class="required" runat="server" attid="158"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="attendChurch" title="Regularly Attend WVC">I will attend a WVC church service on a regular basis.</label>
        <input type="checkbox" name="attendChurch" id="attendChurch" class="required" runat="server" attid="159"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="leaderConduct" title="Leader Conduct">I, as a leader, will never be alone with anyone of the opposite sex (unrelated).</label>
        <input type="checkbox" name="leaderConduct" id="leaderConduct" class="required" runat="server" attid="160"/>
      </div>
      <div class="clear"></div>
      <div>
        <label class="vCentThree" for="teamMember" title="Be a good Team Member">I will not have inappropriate physical contact with anyone on the team. I understand that I am making a commitment to the Children's Ministry Department at Woodmen Valley Chapel and agree to be a responsible team member by doing the following:
            <br /><br />
                -Attend all my scheduled service times, except when ill, arriving at least 1/2 hour before the service time<br /><br />
                -Make advance arrangements when I am unable to serve<br /><br />
                -Check my email weekly and prepare my lesson beforehand<br /><br />
                -Show respect to the leaders and children at all times<br /><br />
                -Respect the rules and follow them<br /><br />
                -Encourage the children by being an ambassador for Jesus<br /><br />
                -Agree to accept discipleship/mentoring from other leaders<br /><br />
                -Complete all necessary paperwork, Ministry Safe and other training prior to serving<br /><br />
                -Attend other forums of training offered throughout the year to improve my skills and learn to better serve our children and families<br /><br />
            
        </label>
        <input type="checkbox" name="teamMember" id="teamMember" class="required" runat="server" attid="161"/>
      </div>
      <div class="clear"></div>
    <h4>Intention of Commitment for Parents of Volunteers under 18:</h4>
    <div>
        <label class="vCentThree" for="timeCommitment" title="Time Commitment">I commit to have my child at the church for service 1/2 hour prior to his/her service time at least two times per month.</label>
        <input type="checkbox" name="timeCommitment" id="timeCommitment" class="" runat="server" attid="162"/>
    </div>
    <div class="clear"></div>
    <div>
        <label class="vCentThree" for="makeArrangements" title="Make Arrangements">I commit to ensure that my child makes arrangements if he/she is unable to serve at his/her regularly scheduled time.</label>
        <input type="checkbox" name="makeArrangements" id="makeArrangements" class="" runat="server" attid="163"/>
    </div>
    <div class="clear"></div>
    <div>
        <label class="vCentThree" for="encourage" title="Encourage">I commit to encourage my child to be prepared each time he/she serves.</label>
        <input type="checkbox" name="encourage" id="encourage" class="" runat="server" attid="164"/>
    </div>
    <div class="clear"></div>
    <div>
        <label for="parentSignature" title="Parent Signature">Parent Signature</label>
        <input type="text" name="parentSignature" id="parentSignature" runat="server" attid="165" class="" />
      </div>
      <div>
        <label for="parentDateSigned" title="Parent Date Signed">Date Signed</label>
        <div id="Div1">
          <select id="parentSignedMonth" name="parentSignedMonth" runat="server" attid="166">
            <option selected="selected"></option>
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
          </select>
          <select id="parentSignedDay" name="parentSignedDay" runat="server" attid="166">
            <option selected="selected"></option>
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option>
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option>
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
          </select>
          <select id="parentSignedYear" runat="server" name="parentSignedYear" attid="166" class="">
            <option selected="selected"></option>
          </select>
        </div>      </div>
    </fieldset>
    <div class="clear">&nbsp;</div>
    <fieldset style="display:block;" class="step" id="final">
      <legend>Submit</legend>
      <label for="otherInfo" title="Other Info">Please enter any other information you'd like us to know:</label>
      <textarea cols="50" rows="10"  name="otherInfo" id="otherInfo" runat="server" attid="169"></textarea>
      <div>
        <label for="signature" title="Signature">Applicant Signature</label>
        <input type="text" name="signature" id="signature" runat="server" attid="167" class="required" />
      </div>
      <div>
        <label for="dateSigned" title="Date Signed">Date Signed</label>
        <div id="signedDate">
          <select id="signedMonth" name="signedMonth" runat="server" attid="168">
            <option selected="selected"></option>
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
          </select>
          <select id="signedDay" name="signedDay" runat="server" attid="168">
            <option selected="selected"></option>
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option>
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option>
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
          </select>
          <select id="signedYear" runat="server" name="signedYear" attid="168" class="required">
            <option selected="selected"></option>
          </select>
        </div>      </div>
      <div class="clear">&nbsp;</div>
      <p></p>
                <a id="print" target="_blank" title="Print Your Answers" href="" runat="server" class="printButton">Print</a>
</fieldset>
    <input id="user_name" type="hidden" runat="server" />
    <input id="back" value="Back" type="button" />
    <input id="next" value="Go" type="button" />
    <input id="postLocation" value="" type="hidden" name="postLocation" runat="server" />
  
</div>
