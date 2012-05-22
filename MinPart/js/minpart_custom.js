jQuery.noConflict()(function ($) {
    var computedLeft = ($(document).width() - $("#formWrapper").width() - 40) / 2;
    var currentStep = 0;
    $("#formWrapper").hide();
    $(".step").hide();
    $("#first").toggle();
    $("body").prepend('<div id="shader" style="display: none;"></div>');
    $("#shader").height($(document).height() + 200);
    $("#shader").width($(window).width());
    $("#formWrapper").css('left', computedLeft + 'px');
    var d = new Date();
    $("select[name$=SignedYear]").append('<option value="' + d.getFullYear() + '">' + d.getFullYear() + '</option>');
    $("#shader").fadeIn("slow", function () {
        $("#formWrapper").fadeIn("slow", function () {
            $("input[name$=firstName]").focus();
        });
    });

    $('.date').datepicker();
    $('.required').after('<span class="showRequired">*</span>');
    TofslaFormsStart();
    evalYearsAtAddress();
    var cpr = "No"
    if ($('input[name$=cprTraining][value=Yes]').attr("checked") == "checked") {
        cpr = "Yes";
    }
    evalCPR(cpr);
    var medCon = "No";
    if ($('input[name$=medicalConditions][value=Yes]').attr("checked") == "checked") {
        medCon = "Yes";
    }
    evalMedicalCondition(medCon);
    var panEx = "No";
    if ($('input[name$=painfulExperiences][value=Yes]').attr("checked") == "checked") {
        panEx = "Yes";
    }
    evalPainfulExperiences(panEx);
    var arrested = "No";
    if ($('input[name$=arrestRecord][value=Yes]').attr("checked") == "checked") {
        arrested = "Yes";
    }
    evalArrestRecord(arrested);
    var moral = "No";
    if ($('input[name$=moralIssue][value=Yes]').attr("checked") == "checked") {
        moral = "Yes";
    }
    evalMoralIssue(moral);
    var bgc = "No";
    if ($('input[name$=bgCheck][value=Yes]').attr("checked") == "checked") {
        bgc = "Yes";
    }
    evalbgCheck(bgc);
    $('input, textarea, select').change(function () {
        // Validate Data
        valid = $("#frmMain").validate().element($(this));
        if (!valid) {
            $("#next").hide();
            return false;
        } else {
            $("#next").show();
        }
        // Submit the data via ajax
        var regex = /\b\$(?!.*\$).*$\b/g;
        if ($(this).attr("name") != '') {
            var field = $(this).attr("name").match(regex).toString().substr(1);
        }
        if (typeof $(this).attr("type") != 'undefined') {
            switch ($(this).attr("type").toString()) {
                case 'checkbox':
                    if (typeof $(this).attr("checked") == 'undefined') {
                        var value = false;
                    } else {
                        var value = true;
                    }
                    break;
                default:
                    var value = $(this).val();
            }
        } else {
            switch (field) {
                case 'birthMonth':
                case 'birthDay':
                case 'birthYear':
                    field = 'birthdate';
                    var value = $('select[name$=birthMonth]').val().toString() + '/' + $('select[name$=birthDay]').val().toString() + '/' + $('select[name$=birthYear]').val().toString();
                    break;
                case 'signedMonth':
                case 'signedDay':
                case 'signedYear':
                    var value = $('select[name$=signedMonth]').val().toString() + '/' + $('select[name$=signedDay]').val().toString() + '/' + $('select[name$=signedYear]').val().toString();
                    break;
                default:
                    var value = $(this).val();
            }
        }

        if (typeof $(this).attr("attid") != 'undefined') {
            $.post('WebServices/custom/WVC/PersonAttributeService.asmx/SetPersonAttribute',
                {
                    attribute_id: $(this).attr("attid"),
                    user_name: $("input[name$=user_name]").val(),
                    new_value: value
                }, function (data) {
                    var response = $.xml2json(data);
                });

        } else {
            $.post('WebServices/custom/WVC/PersonInfoService.asmx/SetPersonInfo',
                {
                    user_name: $("input[name$=user_name]").val(),
                    info: field,
                    new_value: value
                }, function (data) {
                    var response = $.xml2json(data);
                });
        }

        //conditional fields
        switch (field) {
            case 'yearsAtAddress':
                evalYearsAtAddress();
                break;
            case 'cprTraining':
                evalCPR($(this).val());
                break;
            case 'medicalConditions':
                evalMedicalCondition($(this).val());
                break;
            case 'painfulExperiences':
                evalPainfulExperiences($(this).val());
                break;
            case 'arrestRecord':
                evalArrestRecord($(this).val());
                break;
            case 'moralIssue':
                evalMoralIssue($(this).val());
                break;
            case 'bgCheck':
                evalbgCheck($(this).val());
                break;
        }


    });

    //visualization navigation handlers
    $("#visualization_stepOne").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            $(".step").fadeOut("fast", function () {
                $("#first").fadeIn("slow");
                $(".visualization > a").removeClass("currentStep");
                $("#visualization_stepOne > a").addClass("currentStep");
                currentStep = 0;
                $("input[name$=firstName]").focus();
            });
        }
    });
    $("#visualization_stepTwo").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            $(".step").fadeOut("fast", function () {
                $("#second").fadeIn("slow");
                $(".visualization > a").removeClass("currentStep");
                $("#visualization_stepTwo > a").addClass("currentStep");
                currentStep = 1;
                $("select[name$=maritalStatus]").focus();
            });
        }
    });
    $("#visualization_stepThree").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            $(".step").fadeOut("fast", function () {
                $("#third").fadeIn("slow");
                $(".visualization > a").removeClass("currentStep");
                $("#visualization_stepThree > a").addClass("currentStep");
                currentStep = 2;
                $("textarea[name$=churchHistory]").focus();
            });
        }
    });
    $("#visualization_stepFour").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            $(".step").fadeOut("fast", function () {
                $("#fourth").fadeIn("slow");
                $(".visualization > a").removeClass("currentStep");
                $("#visualization_stepFour > a").addClass("currentStep");
                currentStep = 3;
                $("input[name$=arrestNo]").focus();
            });
        }
    });
    $("#visualization_stepFive").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            $(".step").fadeOut("fast", function () {
                $("#fifth").fadeIn("slow");
                $(".visualization > a").removeClass("currentStep");
                $("#visualization_stepFive > a").addClass("currentStep");
                currentStep = 4;
                $("input[name$=firstReferenceName]").focus();
            });
        }
    });
    $("#visualization_stepSix").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            $(".step").fadeOut("fast", function () {
                $("#sixth").fadeIn("slow");
                $(".visualization > a").removeClass("currentStep");
                $("#visualization_stepSix > a").addClass("currentStep");
                currentStep = 5;
                //$("input[name$=firstReferenceName]").focus();
            });
        }
    });
    $("#visualization_finalStep").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            $(".step").fadeOut("fast", function () {
                $("#final").fadeIn("slow");
                $(".visualization > a").removeClass("currentStep");
                $("#visualization_finalStep > a").addClass("currentStep");
                currentStep = 6;
                $("textarea[name$=otherInfo]").focus();
            });
        }
    });

    //Wizard Control Button Handers

    $("#next").click(function () {
        foo = validateStep(currentStep);
        if (foo == true) {
            switch (currentStep) {
                case 0:
                    $(".step").fadeOut("fast", function () {
                        $("#second").fadeIn("slow");
                        $(".visualization > a").removeClass("currentStep");
                        $("#visualization_stepTwo > a").addClass("currentStep");
                        currentStep = 1;
                        $("select[name$=maritalStatus]").focus();
                    });
                    break;
                case 1:
                    $(".step").fadeOut("fast", function () {
                        $("#third").fadeIn("slow");
                        $(".visualization > a").removeClass("currentStep");
                        $("#visualization_stepThree > a").addClass("currentStep");
                        currentStep = 2;
                        $("textarea[name$=churchHistory]").focus();
                    });
                    break;
                case 2:
                    $(".step").fadeOut("fast", function () {
                        $("#fourth").fadeIn("slow");
                        $(".visualization > a").removeClass("currentStep");
                        $("#visualization_stepFour > a").addClass("currentStep");
                        currentStep = 3;
                        $("input[name$=arrestNo]").focus();
                    });
                    break;
                case 3:
                    $(".step").fadeOut("fast", function () {
                        $("#fifth").fadeIn("slow");
                        $(".visualization > a").removeClass("currentStep");
                        $("#visualization_stepFive > a").addClass("currentStep");
                        currentStep = 4;
                        $("input[name$=firstReferenceName]").focus();
                    });
                    break;
                case 4:
                    $(".step").fadeOut("fast", function () {
                        $("#sixth").fadeIn("slow");
                        $(".visualization > a").removeClass("currentStep");
                        $("#visualization_stepSix > a").addClass("currentStep");
                        currentStep = 5;
                        //$("textarea[name$=otherInfo]").focus();
                    });
                    break;
                case 5:
                    $(".step").fadeOut("fast", function () {
                        $("#final").fadeIn("slow");
                        $(".visualization > a").removeClass("currentStep");
                        $("#visualization_finalStep > a").addClass("currentStep");
                        currentStep = 6;
                        $("textarea[name$=otherInfo]").focus();
                    });
                    break;
                case 6:
                    window.location = $("input[name$=postLocation]").val().toString();
                    break;
            }
        }
    });

    $("#back").click(function () {
        switch (currentStep) {
            case 0:
                break;
            case 1:
                $(".step").fadeOut("fast", function () {
                    $("#first").fadeIn("slow");
                    $(".visualization > a").removeClass("currentStep");
                    $("#visualization_stepOne > a").addClass("currentStep");
                    currentStep = 0;
                    $("input[name$=firstName]").focus();
                });
                break;
            case 2:
                $(".step").fadeOut("fast", function () {
                    $("#second").fadeIn("slow");
                    $(".visualization > a").removeClass("currentStep");
                    $("#visualization_stepTwo > a").addClass("currentStep");
                    currentStep = 1;
                    $("select[name$=maritalStatus]").focus();
                });
                break;
            case 3:
                $(".step").fadeOut("fast", function () {
                    $("#third").fadeIn("slow");
                    $(".visualization > a").removeClass("currentStep");
                    $("#visualization_stepThree > a").addClass("currentStep");
                    currentStep = 2;
                    $("textarea[name$=churchHistory]").focus();
                });
                break;
            case 4:
                $(".step").fadeOut("fast", function () {
                    $("#fourth").fadeIn("slow");
                    $(".visualization > a").removeClass("currentStep");
                    $("#visualization_stepFour > a").addClass("currentStep");
                    currentStep = 3;
                    $("input[name$=arrestNo]").focus();
                });
                break;
            case 5:
                $(".step").fadeOut("fast", function () {
                    $("#fifth").fadeIn("slow");
                    $(".visualization > a").removeClass("currentStep");
                    $("#visualization_stepFive > a").addClass("currentStep");
                    currentStep = 4;
                    $("input[name$=firstReferenceName]").focus();
                });
                break;
            case 6:
                $(".step").fadeOut("fast", function () {
                    $("#sixth").fadeIn("slow");
                    $(".visualization > a").removeClass("currentStep");
                    $("#visualization_stepSix > a").addClass("currentStep");
                    currentStep = 5;
                    //$("input[name$=firstReferenceName]").focus();
                });
                break;
        }
    });

    $('.close').click(function () {
        window.location = $("input[name$=postLocation]").val().toString();
    });
});

function evalYearsAtAddress() {
    if (jQuery('input[name$=yearsAtAddress]').val() <= 5) {
        jQuery('#previousAddressesHider').slideDown();
        jQuery('textarea[name$=previousAddresses]').focus();
        if (!jQuery('textarea[name$=previousAddresses]').hasClass('required')) {
            jQuery('textarea[name$=previousAddresses]').addClass('required');
            jQuery('textarea[name$=previousAddresses]').after('<span id="paReq"><span class="showRequired">*</span></span>');
            jQuery('input[name$=yearsAtPrevAddress]').addClass('required');
            jQuery('input[name$=yearsAtPrevAddress]').after('<span id="ypaReq"><span class="showRequired">*</span></span>');
        }
    } else {
        jQuery('#previousAddressesHider').slideUp();
        jQuery('textarea[name$=previousAddresses]').removeClass('required');
        jQuery('input[name$=yearsAtPrevAddress]').removeClass('required');
        jQuery('#paReq').remove();
        jQuery('#ypaReq').remove();
        jQuery('input[name$=homePhone]').focus();
    }
}

function evalCPR(selected) {
    if (selected == "Yes") {
        jQuery('#cprDetails').slideDown();
        jQuery('textarea[name$=cprExplain]').focus();
        if (!jQuery('textarea[name$=cprExplain]').hasClass('required')) {
            jQuery('textarea[name$=cprExplain]').addClass('required');
            jQuery('textarea[name$=cprExplain]').after('<span id="cprReq"><span class="showRequired">*</span></span>');
        }
    } else {
        jQuery('#cprDetails').slideUp();
        jQuery('textarea[name$=cprExplain]').removeClass('required');
        jQuery('#cprReq').remove();
    }
}

function evalMedicalCondition(selected) {
    if (selected == "Yes") {
        jQuery('#medDetails').slideDown();
        jQuery('textarea[name$=medExplain]').focus();
        if (!jQuery('textarea[name$=medExplain]').hasClass('required')) {
            jQuery('textarea[name$=medExplain]').addClass('required');
            jQuery('textarea[name$=medExplain]').after('<span id="medReq"><span class="showRequired">*</span></span>');
        }
    } else {
        jQuery('#medReq').remove();
        jQuery('textarea[name$=medExplain]').removeClass('required');
        jQuery('#medDetails').slideUp();
    }
}

function evalPainfulExperiences(selected) {
    if (selected == "Yes") {
        jQuery('#expDetails').slideDown();
    } else {
        jQuery('#expDetails').slideUp();
    }
}

function evalArrestRecord(selected) {
    if (selected == "Yes") {
        jQuery('#arrestDetails').slideDown();
        if (!jQuery('textarea[name$=arrestExplain]').hasClass('required')) {
            jQuery('textarea[name$=arrestExplain]').addClass('required');
            jQuery('textarea[name$=arrestExplain]').after('<span id="arrestReq"><span class="showRequired">*</span></span>');
        }
    } else {
        jQuery('#arrestReq').remove();
        jQuery('textarea[name$=arrestExplain]').removeClass('required');
        jQuery('#arrestDetails').slideUp();
    }
}

function evalMoralIssue(selected) {
    if (selected == "Yes") {
        jQuery('#moralDetails').slideDown();
        if (!jQuery('textarea[name$=moralExplain]').hasClass('required')) {
            jQuery('textarea[name$=moralExplain]').addClass('required');
            jQuery('textarea[name$=moralExplain]').after('<span id="moralReq"><span class="showRequired">*</span></span>');
        }
    } else {
        jQuery('#moralReq').remove();
        jQuery('textarea[name$=moralExplain]').removeClass('required');
        jQuery('#moralDetails').slideUp();
    }
}

function evalbgCheck(selected) {
    if (selected == "Yes") {
        jQuery('#backgroundDetails').slideDown();
        if (!jQuery('textarea[name$=backgroundExplain]').hasClass('required')) {
            jQuery('textarea[name$=backgroundExplain]').addClass('required');
            jQuery('textarea[name$=backgroundExplain]').after('<span id="bgReq"><span class="showRequired">*</span></span>');
        }
    } else {
        jQuery('#bgReq').remove();
        jQuery('textarea[name$=backgroundExplain]').removeClass('required');
        jQuery('#backgroundDetails').slideUp();
    }
}

function validateStep(step) {
    var steps = ["#first", "#second", "#third", "#fourth", "#fifth", "#sixth", "#final"];
    var foo = true;
    jqSearch = steps[step].toString() + " input, " + steps[step] + " select, " + steps[step] + " textarea";
    jQuery(jqSearch).each(function (index, element) {
        if (jQuery("#frmMain").validate().element(jQuery(element)) == false) {
            foo = false;
        }
    });
    return foo;
}