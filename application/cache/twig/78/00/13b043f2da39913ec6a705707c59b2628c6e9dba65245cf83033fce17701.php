<?php

/* redirect.html */
class __TwigTemplate_780013b043f2da39913ec6a705707c59b2628c6e9dba65245cf83033fce17701 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout-redirect.html");

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
            'js' => array($this, 'block_js'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout-redirect.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_title($context, array $blocks = array())
    {
        // line 4
        echo "Redirect...
";
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "Mohon tunggu, halaman akan segera dialihkan...
";
    }

    // line 11
    public function block_js($context, array $blocks = array())
    {
        // line 12
        echo "<script type=\"text/javascript\">
    \$( document ).ready(function() {
        setTimeout(function() {
            location.href = \"";
        // line 15
        echo twig_escape_filter($this->env, (isset($context["redirect_to"]) ? $context["redirect_to"] : null), "html", null, true);
        echo "\";
        }, 3000);
    });
</script>
";
    }

    public function getTemplateName()
    {
        return "redirect.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  54 => 15,  49 => 12,  46 => 11,  41 => 8,  38 => 7,  33 => 4,  30 => 3,);
    }
}
