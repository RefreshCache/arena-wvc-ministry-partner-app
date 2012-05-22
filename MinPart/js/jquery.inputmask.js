/*
Author:         huangjb.cn@gmail.com
Time:           2009-12-07
Function:
        Add a mask into the form field
        When the field get focus, remove the mask
        If nothing input, show the mask again
*/
(function($){
        $.fn.extend({
                inputMaskText: function( mask ){
                        return this.each(function(){
                                var obj = $(this);
                                var v = obj.attr( "value" );
                                if( $.trim( v ) == "" ){
                                        obj.attr( "value", mask );
                                }
                               
                                obj.focus(function(){
                                        var o = $(this);
                                        var v = o.attr( "value" );
                                        if( $.trim( v ) == mask ){
                                                o.attr( "value", "" );
                                        }
                                });
                                obj.blur(function(){
                                        var o = $(this);
                                        var v = o.attr( "value" );
                                        if( $.trim( v ) == "" ){
                                                o.attr( "value", mask );
                                        }
                                });
                        });
                },
                inputMaskPassword: function( mask ){
                        return this.each(function(){

                                var obj = $(this);
                                var inputText = obj.clone();
                                var id = "id"+parseInt(Math.random()*10000)+parseInt(Math.random()*10000);
                                inputText.attr( "id", id );
                                inputText.attr( "name", id );  
                                inputText.attr( "type", "text" );
                                inputText.attr( "value", mask );
                                var v = $.trim( obj.attr( "value" ) );
                                if( v == "" ){
                                        obj.hide();
                                }
                                inputText.insertBefore( obj );
                                inputText.focus(function(){
                                        inputText.hide();
                                        obj.show();
                                        obj.focus();
                                });
                                obj.blur(function(){
                                        var v = obj.attr( "value" );
                                        if( $.trim( v ) == "" ){
                                                obj.hide();
                                                inputText.show();
                                                inputText.attr( "value", mask );
                                        }
                                });
                               
                        });
                },
                inputMask: function( mask ){
                        return this.each(function(){
                                var obj = $(this);
                                if( $.trim( obj.attr( "type" ) ) == "password" ){
                                        obj.inputMaskPassword( mask );
                                }else{
                                        obj.inputMaskText( mask );
                                }
                        });
                }
        });    
})(jQuery);