<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); class Template { var $template_data = array(); function set($name, $value) { $this-&gt;template_data[$name] = $value;
        }
     
        function load($template = '', $view = '' , $view_data = array(), $return = FALSE)
        {               
            $this-&gt;CI =&amp; get_instance();
            $this-&gt;set('contents', $this-&gt;CI-&gt;load-&gt;view($view, $view_data, TRUE));         
            return $this-&gt;CI-&gt;load-&gt;view($template, $this-&gt;template_data, $return);
        }
}
?>