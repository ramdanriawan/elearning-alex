<?php

/* layout-public.html */
class __TwigTemplate_e90fa57625215670b6cadf6ca7ed17e0cf12b9d2d310477f3e4d8bec9581a7cb extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'css' => array($this, 'block_css'),
            'content' => array($this, 'block_content'),
            'js' => array($this, 'block_js'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <title>";
        // line 4
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
    ";
        // line 5
        $this->env->loadTemplate("layout-header.html")->display($context);
        // line 6
        echo "    ";
        $this->displayBlock('css', $context, $blocks);
        // line 7
        echo "</head>
<body>

    <div class=\"navbar navbar-fixed-top\">
        <div class=\"navbar-inner\">
            <div class=\"container\">
                <a class=\"btn btn-navbar\" data-toggle=\"collapse\" data-target=\".navbar-inverse-collapse\">
                    <i class=\"icon-reorder shaded\"></i>
                </a>

                <a class=\"brand\" href=\"";
        // line 17
        echo twig_escape_filter($this->env, site_url(), "html", null, true);
        echo "\">
                    <img src=\"";
        // line 18
        echo twig_escape_filter($this->env, get_logo_config(), "html", null, true);
        echo "\"> <span class=\"visible-phone brand-txt\">e-Learning</span><span class=\"visible-desktop visible-tablet brand-txt\">";
        echo twig_escape_filter($this->env, (isset($context["site_name"]) ? $context["site_name"] : null), "html", null, true);
        echo "</span>
                </a>

                <div class=\"nav-collapse collapse navbar-inverse-collapse\">
                    <ul class=\"nav pull-right\">
                        ";
        // line 23
        if (((get_pengaturan("registrasi-siswa", "value") == 1) || (get_pengaturan("registrasi-pengajar", "value") == 1))) {
            // line 24
            echo "                        <li><a href=\"";
            echo twig_escape_filter($this->env, site_url("login/register"), "html", null, true);
            echo "\">Register</a></li>
                        ";
        }
        // line 26
        echo "                    </ul>
                </div>
            </div>
        </div><!-- /navbar-inner -->
    </div><!-- /navbar -->

    <div class=\"wrapper\">
        <div class=\"container\">

            ";
        // line 35
        $this->displayBlock('content', $context, $blocks);
        // line 36
        echo "
        </div>
    </div><!--/.wrapper-->

    <div class=\"footer\">
        <div class=\"container\">
            <center>
                <b class=\"copyright\">";
        // line 43
        echo (isset($context["copyright"]) ? $context["copyright"] : null);
        echo " </b> All rights reserved.<br>
                ";
        // line 44
        echo (isset($context["version"]) ? $context["version"] : null);
        echo " | Page loaded in ";
        echo twig_escape_filter($this->env, (isset($context["elapsed_time"]) ? $context["elapsed_time"] : null), "html", null, true);
        echo " seconds.
            </center>
        </div>
    </div>

    ";
        // line 49
        $this->env->loadTemplate("layout-footer.html")->display($context);
        // line 50
        echo "    ";
        $this->displayBlock('js', $context, $blocks);
        // line 51
        echo "</body>
";
    }

    // line 4
    public function block_title($context, array $blocks = array())
    {
        echo twig_escape_filter($this->env, (isset($context["site_name"]) ? $context["site_name"] : null), "html", null, true);
    }

    // line 6
    public function block_css($context, array $blocks = array())
    {
    }

    // line 35
    public function block_content($context, array $blocks = array())
    {
    }

    // line 50
    public function block_js($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "layout-public.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  133 => 50,  128 => 35,  123 => 6,  117 => 4,  112 => 51,  109 => 50,  107 => 49,  97 => 44,  93 => 43,  84 => 36,  82 => 35,  71 => 26,  65 => 24,  63 => 23,  53 => 18,  49 => 17,  37 => 7,  34 => 6,  28 => 4,  23 => 1,  143 => 53,  136 => 49,  120 => 36,  116 => 35,  110 => 32,  102 => 27,  98 => 26,  95 => 25,  90 => 22,  81 => 19,  76 => 18,  72 => 17,  69 => 16,  56 => 14,  52 => 13,  47 => 10,  45 => 9,  42 => 8,  39 => 7,  32 => 5,  29 => 3,);
    }
}
