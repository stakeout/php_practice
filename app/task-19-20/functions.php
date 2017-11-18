<?php
function select_parse($arr, $name, $id='', $default='', $select_value=''){
    $selected = '';
    $html = '';

    $html .= "<select name={$name} id={$id}>";

    if (!empty($default)){
        $html .= "<option>{$default}</option>";
    }

    foreach($arr as $key => $value){
        if (!empty($select_value)) {
            $selected = ($key == $select_value) ? 'selected=""' : '';
        }
        $html .= '<option value="' .$key. '" '.$selected.'>' .$value. '</option>';
    }

    $html .= '</select>';

    return $html;
}
