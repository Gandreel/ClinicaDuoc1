/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function() {
  "use strict";
  var options = {};
  options.ui = {
    container: "#pwd-container",
    showVerdictsInsideProgressBar: true,
    viewports: {
      progress: ".pwstrength_viewport_progress"
    }
  };
  options.common = {
    debug: true,
    onLoad: function() {
      $('#messages').text('Start typing password');
    }
  };
  $(':password').pwstrength(options);
});


(function (jQuery) {
// Source: src/rules.js




var rulesEngine = {};

try {
    if (!jQuery && module && module.exports) {
        var jQuery = require("jquery"),
            jsdom = require("jsdom").jsdom;
        jQuery = jQuery(jsdom().parentWindow);
    }
} catch (ignore) {}

(function ($, rulesEngine) {
    "use strict";
    var validation = {};

    rulesEngine.forbiddenSequences = [
        "0123456789", "abcdefghijklmnopqrstuvwxyz", "qwertyuiop", "asdfghjkl",
        "zxcvbnm", "!@#$%^&*()_+"
    ];

    validation.wordNotEmail = function (options, word, score) {
        if (word.match(/^([\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+\.)*[\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)$/i)) {
            return score;
        }
        return 0;
    };

    validation.wordLength = function (options, word, score) {
        var wordlen = word.length,
            lenScore = Math.pow(wordlen, options.rules.raisePower);
        if (wordlen < options.common.minChar) {
            lenScore = (lenScore + score);
        }
        return lenScore;
    };

    validation.wordSimilarToUsername = function (options, word, score) {
        var username = $(options.common.usernameField).val();
        if (username && word.toLowerCase().match(username.toLowerCase())) {
            return score;
        }
        return 0;
    };

    validation.wordTwoCharacterClasses = function (options, word, score) {
        if (word.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/) ||
                (word.match(/([a-zA-Z])/) && word.match(/([0-9])/)) ||
                (word.match(/(.[!,@,#,$,%,\^,&,*,?,_,~])/) && word.match(/[a-zA-Z0-9_]/))) {
            return score;
        }
        return 0;
    };

    validation.wordRepetitions = function (options, word, score) {
        if (word.match(/(.)\1\1/)) { return score; }
        return 0;
    };

    validation.wordSequences = function (options, word, score) {
        var found = false,
            j;
        if (word.length > 2) {
            $.each(rulesEngine.forbiddenSequences, function (idx, seq) {
                var sequences = [seq, seq.split('').reverse().join('')];
                $.each(sequences, function (idx, sequence) {
                    for (j = 0; j < (word.length - 2); j += 1) { // iterate the word trough a sliding window of size 3:
                        if (sequence.indexOf(word.toLowerCase().substring(j, j + 3)) > -1) {
                            found = true;
                        }
                    }
                });
            });
            if (found) { return score; }
        }
        return 0;
    };

    validation.wordLowercase = function (options, word, score) {
        return word.match(/[a-z]/) && score;
    };

    validation.wordUppercase = function (options, word, score) {
        return word.match(/[A-Z]/) && score;
    };

    validation.wordOneNumber = function (options, word, score) {
        return word.match(/\d+/) && score;
    };

    validation.wordThreeNumbers = function (options, word, score) {
        return word.match(/(.*[0-9].*[0-9].*[0-9])/) && score;
    };

    validation.wordOneSpecialChar = function (options, word, score) {
        return word.match(/.[!,@,#,$,%,\^,&,*,?,_,~]/) && score;
    };

    validation.wordTwoSpecialChar = function (options, word, score) {
        return word.match(/(.*[!,@,#,$,%,\^,&,*,?,_,~].*[!,@,#,$,%,\^,&,*,?,_,~])/) && score;
   ��*!#%'+/37=AFKPUZ^bglpty~���������������������� ����������������������~{zxvtrpnlihgf�e�d�e	fghklnpqrs�r�s�r�qponmkigfdca`^^]\[[ZYY�X�W�VUTSRQPOMKJHGFECBA?==<;:98654320/.-,*)'&%$#"!�����  !�"�#�$�%�&!'()*,-.02569<=@CFGILNOQQRQQPOMJGFEBA??>==>?ABBCDFGILOQRUWXZ\^_`b�c�ba_^][YXXW�V�W�X�YIZ[\]^_`acdeghklnoqrtvwyz}������������������������������������������������ ������������������������������������ ��ž��������}vqkd_\XWUSQQONMLKJIH�G F�G�F�E�F�G�H�I�J�K�L�M�N�O�P�O�N�O�P�Q�R�Q�P�O�N�M�L�KJIIH�GFEDCBA@?>==<;:�9�8�7 6�543�2
10//.--,,++�* *�)�* )�*�)�( '�&�%$#""!������������ ���+ #%(+-0359<@DHMQUY]aeimqux{������������������������������������������������������������������������������������~{yvsplgc_[XTQNJGFCBBABBCDFFGGH�IHGG�FEDD�C B�BA@?>�=<;:9976�5�4�3�2�1�0�/ .�-.//1235579;==@BEGIKNPQSTVW�XWVUTRQPOMKIGGFFE�D�E�F�GGHIJKLMM�NMLJHGFC@=;852/-+(&%#"!����� "#$$%&(),-./022�3�20/-,*'%$"!��� ��
 "#$$�%$#"!����
�����" !""$%&()+-.024589<=@CFHKNPRUXZ]`cfimoqsuv�w#vusrpnmlkkllmnoqsvx{�������������������������,�����������������{xurnkfc`^[XWTQPNKHFDB>=;98 6�54332210//..--,,*)&%$$""!  �������� ���) "$'+.37<AFKPUZ^cglpty~�������������������������������������������~}{ywusqonlihg�f�e�fghklmoqr�s�t�s�r�qpomlihgedba`_^]\\[[ZZY�XWVUTRQPONLJHGFFDCB@?>==<:9755421/.-,*)'&%$"!����� �!�"�#�$�%�&!'()+,-/1459;=@CFGJLOPQSTUTSQPOLIGF�B@?>>=>?A�BCDFGJMOQTWXZ\^^`a�b�a`^][YXXW�V�W�XJYZ[\]^^_`acdeghklnoqrtuwyz}~����������������������������������������������� �������������������������������!�������������ysngb^ZXVTSQPONMLJIHH�G�F�G�H�I�J�K�L�M�N�O�P�Q�Q�P�O�P�Q�P�O�N�M�L�K�J�I�H�G�FECBBA@?�=<;::�9�8�7�6�5�4	322100//.-�,�+�* *�)�* )�*�)�( '�&�%$#"" �����������������."%'),/257<?CGKOSX[^bfkosvz~����������������������������������������������������������������������������������������� ��������� ~}zxvsokfb^[WSPNJGFDCBBCCEFFGHHI�JIHGG�F�E�D�C�B�A@?>�=<;:9987�6�5433�2�1�0�102345579:<=?ACEGILNPQSUWXXYYZZYYXXWVTSQQONLJHGFEDD�C�D�E�F�GIJKLL�MLKIHGEB@=;9530-+)&%$"! � ���!"#$%&')+,-/0�2�3�21/-,*(&$"!����
 "#$$�%$#"!�� ��������  "#$%')*,-/12558:=>ACFHKNOQTXZ^`dgkmprtvv�wvusqoml�klmnprtwy}�������������������������,�����������������{wtqmieb_]ZXURPOLIGEB?=;976�543�210�/.--,*)'&%$#""!  �� � ��� ��3 "$&*.27<AFKPUZ^cglquy~������������������������������������������~}zxwusqomlkihgg�f�ghklmopr�s�t u�t�s�rqonmkihfedba`_^^]]\\[�Z�Y�XWUTSQPONLKIHGFEDBBA@>==;98655320.-,*(&%$#" ����� �!�" #�$�%�&'))+,./257:=?BFHKMOQRTV�WUTQPNKHFDBA??�>?@�A�BDFHKOQTWX[]^_``a�b�a�`Y^][YXXWVVUVVWWXXYZ[\]^^_`bcdfghklnoqrtuwyz}~���������������������������������������������������������������������� ������������"���ü��������}wqke`]ZXVTSQPONMLJIHH�G�F�G�H�I�J�K�L�M�N�O�P�Q�R�S T�T�S�R�Q�P�O�P�O�N�M�L�K�J�I�H�G�FEDDCBBA@>�=<;::�9�8�7�6�543�210//.--�,�+�* *�)�*�)�*�)�( '�&�%$#"" ������ �����
."$&)+-036:=BFINQUY]`einquy~������������������������������������������������������������������ �������������������������������*~}{ywtqniea^ZWSPNJGFEDCCDEFFGGHIJJKKJJIIHGG�F�EEDDC�BA@??>�=<;::�9�8�7 6�5�4�5689:<=>@BCFGILOPRTVWXYZZ�[�ZYXWVUSRQONLJHGFEDC�BCDEFGHIJK�LKJHGFEB@=<9641.,)'%$#" � ��� � ""#$%&)*,-/0122�3�21/-,*(&$#!����
 ""$$�%$#"!�� ��������!"$%&()+-./13569:=>ACFGJMOQTX[^adhloqsuvw�xwvtrpnl�klmoqsuxz~�����������������������.�������������������~zvsplhda^[XVSQOLIGFB@=<9755�4�3�210�/�-,*)'&%$#""! �� �������( "$&*.37=AFKQV[_chmquy~�����������������������������������������}{zxvtrpomllkhh�g�h	klmnpqrstt�u v�u�tsrqpomlkigfedca`__�^ ]�\�[ZYYXWVUSRQPOMLJIGGFEDCBA?>=<:975532/.-+)(&%$"! ��� �!�" #�$�%�&"'()*,-.0358;=BEGKNPQTUWXYYXXVTQOLIGDBA@?�>�?�@ABEGJNQSWY