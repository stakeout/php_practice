<?php
function select_parse($arr, $name, $default_value='', $selected_value) {
    $html = $selected = '';

    $html .= "<select name={$name} id={$name}>";

    if (isset($default_value) && !empty($default_value)){
        $html .= "<option>{$default_value}</option>";
    }

    foreach($arr as $key => $value){
        if (isset($selected_value)) {
            $selected = ($value == $selected_value) ? 'selected' : '';
        }
        $html .= '<option value="' .$value. '" '.$selected.'>' .$value. '</option>';
    }

    $html .= '</select>';

    return $html;
}
