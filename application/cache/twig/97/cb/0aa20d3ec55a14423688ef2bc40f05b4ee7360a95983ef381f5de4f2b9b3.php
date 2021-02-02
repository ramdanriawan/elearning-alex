<?php

/* urgent-info.html */
class __TwigTemplate_97cb0aa20d3ec55a14423688ef2bc40f05b4ee7360a95983ef381f5de4f2b9b3 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"bs-callout bs-callout-warning\">
    ";
        // line 2
        echo (isset($context["info"]) ? $context["info"] : null);
        echo "
</div>
<br>
";
    }

    public function getTemplateName()
    {
        return "urgent-info.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  22 => 2,  19 => 1,);
    }
}
