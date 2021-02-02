<?php

/* list-siswa.html */
class __TwigTemplate_a345721d4f8a8d97e9895bdb66af546779397817bf392e9d4fd7c73908fb18ad extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout-private.html");

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout-private.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_title($context, array $blocks = array())
    {
        // line 4
        echo "Data Siswa - ";
        $this->displayParentBlock("title", $context, $blocks);
        echo "
";
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "<div class=\"module\">
    <div class=\"module-head\">
        <h3>Data Siswa</h3>
    </div>
    <div class=\"module-body\">
        ";
        // line 13
        echo get_flashdata("siswa");
        echo "

        <div class=\"row-fluid\">
            
             <div class=\"span2\">
                <a href=\"";
        // line 18
        echo twig_escape_filter($this->env, site_url(("siswa/add/" . (isset($context["status_id"]) ? $context["status_id"] : null))), "html", null, true);
        echo "\" class=\"btn btn-primary\">Tambah Siswa</a>
            </div>
            <div class=\"span3\">
                <a href=\"";
        // line 21
        echo twig_escape_filter($this->env, site_url(("welcome/hapus_data/pengajar/" . (isset($context["pengajar_id"]) ? $context["pengajar_id"] : null))), "html", null, true);
        echo "\" class=\"btn btn-primary\">Hapus Siswa</a>
            </div>


            <div class=\"span5\">
                <div class=\"btn-group pull-right\">
                    ";
        // line 27
        echo anchor("siswa/index/1", "Aktif", array("class" => ((((isset($context["status_id"]) ? $context["status_id"] : null) == 1)) ? ("btn btn-info") : ("btn btn-default"))));
        echo "
                    ";
        // line 28
        echo anchor("siswa/index/0", ("Pending " . ((((isset($context["count_pending"]) ? $context["count_pending"] : null) > 0)) ? ((("<span class=\"label label-warning\">" . (isset($context["count_pending"]) ? $context["count_pending"] : null)) . "</span>")) : (""))), array("class" => ((((isset($context["status_id"]) ? $context["status_id"] : null) == 0)) ? ("btn btn-info") : ("btn btn-default"))));
        echo "
                    ";
        // line 29
        echo anchor("siswa/index/2", "Blocking", array("class" => ((((isset($context["status_id"]) ? $context["status_id"] : null) == 2)) ? ("btn btn-info") : ("btn btn-default"))));
        echo "
                    ";
        // line 30
        echo anchor("siswa/index/3", "Alumni", array("class" => ((((isset($context["status_id"]) ? $context["status_id"] : null) == 3)) ? ("btn btn-info") : ("btn btn-default"))));
        echo "
                    ";
        // line 31
        echo anchor("siswa/filter", "<i class=\"icon-search\" style=\"line-height: 0px;\"></i> Filter", array("class" => "btn btn-default"));
        echo "
                </div>
            </div>
        </div>
        <br>

        ";
        // line 37
        echo form_open(("siswa/index/" . (isset($context["status_id"]) ? $context["status_id"] : null)));
        echo "
        <table class=\"table table-striped\">
            <thead>
                <tr>
                    <th width=\"7%\">
                        ";
        // line 42
        if ((((isset($context["status_id"]) ? $context["status_id"] : null) == 0) || ((isset($context["status_id"]) ? $context["status_id"] : null) == 2))) {
            // line 43
            echo "                            <input type=\"checkbox\" style=\"margin-top:-2px;\" onclick=\"filter_siswa_ch_uch_checkbox(this)\">
                        ";
        }
        // line 45
        echo "                        ID
                    </th>
                    <th>Informasi Siswa</th>
                    <th width=\"22%\"></th>
                </tr>
            </thead>
            <tbody>
                ";
        // line 52
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["siswas"]) ? $context["siswas"] : null));
        foreach ($context['_seq'] as $context["no"] => $context["v"]) {
            // line 53
            echo "                <tr>
                    <td>
                        ";
            // line 55
            if ((((isset($context["status_id"]) ? $context["status_id"] : null) == 0) || ((isset($context["status_id"]) ? $context["status_id"] : null) == 2))) {
                // line 56
                echo "                            <input type=\"checkbox\" name=\"siswa_id[]\" value=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id"), "html", null, true);
                echo "\" style=\"margin-top:-2px;\">
                        ";
            }
            // line 58
            echo "                        <b>";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id"), "html", null, true);
            echo "</b>
                    </td>
                    <td>
                        <img style=\"height:40px;width:40px; margin-right: 10px;\" class=\"img-polaroid img-circle pull-left\" src=\"";
            // line 61
            echo twig_escape_filter($this->env, get_url_image_siswa($this->getAttribute((isset($context["v"]) ? $context["v"] : null), "foto"), "medium", $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "jenis_kelamin")), "html", null, true);
            echo "\">
                        <b>";
            // line 62
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "nama"), "html", null, true);
            echo " ";
            echo (((!twig_test_empty($this->getAttribute((isset($context["v"]) ? $context["v"] : null), "nis")))) ? ((("<span class=\"text-muted\">(" . $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "nis")) . ")</span>")) : (""));
            echo "</b>
                        <br>";
            // line 63
            echo twig_escape_filter($this->env, ((($this->getAttribute((isset($context["v"]) ? $context["v"] : null), "status_id") != 3)) ? (($this->getAttribute($this->getAttribute((isset($context["v"]) ? $context["v"] : null), "kelas_aktif"), "nama") . " , ")) : ("")), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "jenis_kelamin"), "html", null, true);
            echo " , ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "agama"), "html", null, true);
            echo "
                    </td>
                    <td>
                        <ul class=\"nav nav-pills\" style=\"margin-bottom:0px;\">
                            <li><a class=\"btn btn-default btn-small\" href=\"";
            // line 67
            echo twig_escape_filter($this->env, site_url(((("siswa/detail/" . (isset($context["status_id"]) ? $context["status_id"] : null)) . "/") . $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id"))), "html", null, true);
            echo "\"><i class=\"icon-zoom-in\"></i> Detail</a></li>
                            <li class=\"dropdown\">
                                <a class=\"btn btn-default btn-small\" href=\"#\" id=\"act-";
            // line 69
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id"), "html", null, true);
            echo "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"icon-edit\"></i> Edit <b class=\"caret\" style=\"margin-top:5px;\"></b></a>
                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"act-";
            // line 70
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id"), "html", null, true);
            echo "\">
                                    <li>";
            // line 71
            echo anchor(((("siswa/edit_profile/" . (isset($context["status_id"]) ? $context["status_id"] : null)) . "/") . $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id")), "Edit Profil", array("class" => "siswa-iframe-4", "title" => "Edit Profil Siswa"));
            echo "</li>
                                    <li>";
            // line 72
            echo anchor(((("siswa/edit_picture/" . (isset($context["status_id"]) ? $context["status_id"] : null)) . "/") . $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id")), "Edit Foto", array("class" => "siswa-iframe-5", "title" => "Edit Foto Siswa"));
            echo "</li>
                                    ";
            // line 73
            if (((isset($context["status_id"]) ? $context["status_id"] : null) != 3)) {
                // line 74
                echo "                                    <li>";
                echo anchor(((("siswa/moved_class/" . (isset($context["status_id"]) ? $context["status_id"] : null)) . "/") . $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id")), "Edit Kelas Aktif", array("class" => "siswa-iframe", "title" => "Edit Kelas Aktif"));
                echo "</li>
                                    ";
            }
            // line 76
            echo "                                    <li>";
            echo anchor(((("siswa/edit_username/" . (isset($context["status_id"]) ? $context["status_id"] : null)) . "/") . $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id")), "Edit Username", array("class" => "siswa-iframe-2", "title" => "Edit Username Siswa"));
            echo "</li>
                                    <li>";
            // line 77
            echo anchor(((("siswa/edit_password/" . (isset($context["status_id"]) ? $context["status_id"] : null)) . "/") . $this->getAttribute((isset($context["v"]) ? $context["v"] : null), "id")), "Edit Password", array("class" => "siswa-iframe-3", "title" => "Edit Password Siswa"));
            echo "</li>
                                </ul>
                            </li>
                        </ul>
                    </td>
                </tr>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['no'], $context['v'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 84
        echo "            </tbody>
        </table>

        ";
        // line 87
        if (((!twig_test_empty((isset($context["siswas"]) ? $context["siswas"] : null))) && (((isset($context["status_id"]) ? $context["status_id"] : null) == 0) || ((isset($context["status_id"]) ? $context["status_id"] : null) == 2)))) {
            // line 88
            echo "        <br>
        <div class=\"row-fluid\">
            <div class=\"span7\">
                <table cellpadding=\"5\">
                    <tr>
                        <th valign=\"top\">Update Status Terpilih</th>
                        <td valign=\"top\">
                            <select name=\"status_id\" style=\"width:100%;\">
                                <option>--Pilih Status--</option>
                                <option value=\"1\">Aktif</option>
                                ";
            // line 98
            if (((isset($context["status_id"]) ? $context["status_id"] : null) == 0)) {
                // line 99
                echo "                                <option value=\"2\">Blocking</option>
                                ";
            } elseif (((isset($context["status_id"]) ? $context["status_id"] : null) == 2)) {
                // line 101
                echo "                                <option value=\"3\">Alumni</option>
                                ";
            }
            // line 103
            echo "                            </select>
                        </td>
                        <td valign=\"top\">
                            <button type=\"submit\" class=\"btn\">Update</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        ";
        }
        // line 113
        echo "
        ";
        // line 114
        echo form_close();
        echo "

        <br>
        ";
        // line 117
        echo (isset($context["pagination"]) ? $context["pagination"] : null);
        echo "

    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "list-siswa.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  261 => 117,  255 => 114,  252 => 113,  240 => 103,  236 => 101,  232 => 99,  230 => 98,  218 => 88,  216 => 87,  211 => 84,  198 => 77,  193 => 76,  187 => 74,  185 => 73,  181 => 72,  177 => 71,  173 => 70,  169 => 69,  164 => 67,  153 => 63,  147 => 62,  143 => 61,  136 => 58,  130 => 56,  128 => 55,  124 => 53,  120 => 52,  111 => 45,  107 => 43,  105 => 42,  97 => 37,  88 => 31,  84 => 30,  80 => 29,  76 => 28,  72 => 27,  63 => 21,  57 => 18,  49 => 13,  42 => 8,  39 => 7,  32 => 4,  29 => 3,);
    }
}
