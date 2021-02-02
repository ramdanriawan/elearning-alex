<?php

/* welcome.html */
class __TwigTemplate_eac5bd087f7d7ce830ba114e3d5059d5d345ccf707b1b3ae165ebebcc76f7e21 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout-private.html");

        $this->blocks = array(
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
    public function block_content($context, array $blocks = array())
    {
        // line 4
        echo "<div class=\"btn-controls\">
    <div id=\"show-urgent-info\"></div>

    <div class=\"btn-box-row row-fluid\">
        <div class=\"span12\">
            <div class=\"well well-small well-box\">
                <small class=\"pull-right hidden-phone hidden-tablet\">";
        // line 10
        echo twig_escape_filter($this->env, tgl_indo(date("Y-m-d")), "html", null, true);
        echo ", IP anda:";
        echo twig_escape_filter($this->env, get_ip(), "html", null, true);
        echo "</small>
                Selamat datang di <b>e-learning";
        // line 11
        echo twig_escape_filter($this->env, get_pengaturan("nama-sekolah", "value"), "html", null, true);
        echo "</b>
                <br>
                <i class=\"icon icon-map-marker\"></i> Alamat:";
        // line 13
        echo twig_escape_filter($this->env, get_pengaturan("alamat", "value"), "html", null, true);
        // line 14
        if ((!twig_test_empty(get_pengaturan("telp", "value")))) {
            // line 15
            echo "                <i class=\"icon icon-phone\"></i> Telpon:";
            echo twig_escape_filter($this->env, get_pengaturan("telp", "value"), "html", null, true);
        }
        // line 17
        echo "            </div>
        </div>
    </div>";
        // line 21
        if (is_admin()) {
            // line 22
            if (((isset($context["count_mapel_kelas"]) ? $context["count_mapel_kelas"] : null) == 0)) {
            }
            // line 25
            echo "
    <div class=\"btn-box-row row-fluid\">
        <a href=\"";
            // line 27
            echo twig_escape_filter($this->env, site_url("siswa/index/1"), "html", null, true);
            echo "\" class=\"btn-box big span3\">
            <i class=\"icon-group\"></i><b>";
            // line 28
            echo twig_escape_filter($this->env, (isset($context["jml_siswa"]) ? $context["jml_siswa"] : null), "html", null, true);
            echo "</b>
            <p class=\"text-muted\">Siswa</p>
        </a>
        <a href=\"";
            // line 31
            echo twig_escape_filter($this->env, site_url("pengajar/index/1"), "html", null, true);
            echo "\" class=\"btn-box big span3\">
            <i class=\"icon-user\"></i><b>";
            // line 32
            echo twig_escape_filter($this->env, (isset($context["jml_pengajar"]) ? $context["jml_pengajar"] : null), "html", null, true);
            echo "</b>
            <p class=\"text-muted\">Pengajar</p>
        </a>
        <a href=\"";
            // line 35
            echo twig_escape_filter($this->env, site_url("siswa/index/0"), "html", null, true);
            echo "\" class=\"btn-box big span3\">
            <i class=\"icon-group\"></i><b>";
            // line 36
            echo twig_escape_filter($this->env, (isset($context["jml_siswa_pending"]) ? $context["jml_siswa_pending"] : null), "html", null, true);
            echo "</b>
            <p class=\"text-muted\">Pending siswa</p>
        </a>
        <a href=\"";
            // line 39
            echo twig_escape_filter($this->env, site_url("pengajar/index/0"), "html", null, true);
            echo "\" class=\"btn-box big span3\">
            <i class=\"icon-user\"></i><b>";
            // line 40
            echo twig_escape_filter($this->env, (isset($context["jml_pengajar_pending"]) ? $context["jml_pengajar_pending"] : null), "html", null, true);
            echo "</b>
            <p class=\"text-muted\">Pending pengajar</p>
        </a>
    </div>

    <div class=\"btn-box-row row-fluid\">
        <div class=\"span6\">
            <div class=\"well well-small well-box\">
                <b><i class=\"icon-bullhorn\"></i> Pengumuman</b>
                <table class=\"table table-striped table-condensed\">";
            // line 50
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["pengumuman"]) ? $context["pengumuman"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["p"]) {
                // line 51
                echo "                    <tr>
                        <td>";
                // line 52
                echo anchor(("pengumuman/detail/" . $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id")), $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "judul"));
                echo "</td>
                    </tr>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['p'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 55
            echo "                </table>
            </div>

            <div class=\"well well-small well-box\">
                <b><i class=\"icon-signin\"></i> Riwayat login pengguna</b>
                <div id=\"show-last-login-list\"></div>
            </div>
        </div>

                </div>
                <table class=\"table table-striped table-condensed\" id=\"info-update\"></table>
                <input type=\"hidden\" id=\"info-update-link\" value=\"";
            // line 66
            echo twig_escape_filter($this->env, (isset($context["info_update_link"]) ? $context["info_update_link"] : null), "html", null, true);
            echo "\">";
        }
        // line 70
        if (is_pengajar()) {
            // line 71
            $context["peraturan"] = get_pengaturan("peraturan-elearning", "value");
            // line 72
            if ((!twig_test_empty((isset($context["peraturan"]) ? $context["peraturan"] : null)))) {
                // line 73
                echo "    <div class=\"btn-box-row row-fluid\">
         <div class=\"span12\">
            <div class=\"well well-small well-box\">
                <b>Peraturan e-learning : </b><br>";
                // line 77
                echo (isset($context["peraturan"]) ? $context["peraturan"] : null);
                echo "
            </div>
         </div>
    </div>";
            }
            // line 82
            echo "
    <div class=\"btn-box-row row-fluid\">
        <div class=\"span6\">
            <div class=\"well well-small well-box\">
                <b><i class=\"icon-bullhorn\"></i> Pengumuman</b>
                <table class=\"table table-striped table-condensed\">";
            // line 88
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["pengumuman"]) ? $context["pengumuman"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["p"]) {
                // line 89
                echo "                    <tr>
                        <td>";
                // line 90
                echo anchor(("pengumuman/detail/" . $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id")), $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "judul"));
                echo "</td>
                    </tr>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['p'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 93
            echo "                </table>
            </div>
        </div>
        <div class=\"span6\">
            <div class=\"well well-small well-box\">
                <b><i class=\"icon-signin\"></i> Riwayat login pengguna</b>
                <div id=\"show-last-login-list\"></div>
            </div>
        </div>
    </div>";
        }
        // line 105
        if (is_siswa()) {
            // line 106
            $context["peraturan"] = get_pengaturan("peraturan-elearning", "value");
            // line 107
            if ((!twig_test_empty((isset($context["peraturan"]) ? $context["peraturan"] : null)))) {
                // line 108
                echo "    <div class=\"btn-box-row row-fluid\">
         <div class=\"span12\">
            <div class=\"well well-small well-box\">
                <b>Peraturan e-learning : </b><br>";
                // line 112
                echo (isset($context["peraturan"]) ? $context["peraturan"] : null);
                echo "
            </div>
         </div>
    </div>";
            }
            // line 117
            echo "
    <div class=\"btn-box-row row-fluid\">
        <div class=\"span6\">
            <div class=\"well well-small well-box\">
                <b><i class=\"icon-tasks\"></i> Tugas terbaru</b>
                <table class=\"table table-striped table-condensed\">";
            // line 123
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["tugas_terbaru"]) ? $context["tugas_terbaru"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["m"]) {
                // line 124
                echo "                    <tr>
                        <td>
                            <a href=\"";
                // line 126
                echo twig_escape_filter($this->env, site_url(("tugas?judul=" . urlencode($this->getAttribute((isset($context["m"]) ? $context["m"] : null), "judul")))), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "judul"), "html", null, true);
                echo "</a>
                        </td>
                    </tr>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['m'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 130
            echo "                </table>
            </div>";
            // line 133
            if ((is_ortu() == false)) {
                // line 134
                echo "            <div class=\"well well-small well-box\">
                <b><i class=\"icon-book\"></i> Materi terbaru</b>
                <table class=\"table table-striped table-condensed\">";
                // line 137
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable((isset($context["materi_terbaru"]) ? $context["materi_terbaru"] : null));
                foreach ($context['_seq'] as $context["_key"] => $context["m"]) {
                    // line 138
                    echo "                    <tr>
                        <td>
                            <a href=\"";
                    // line 140
                    echo twig_escape_filter($this->env, site_url(("materi/detail/" . $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "id"))), "html", null, true);
                    echo "\" target=\"_tab\">";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["m"]) ? $context["m"] : null), "judul"), "html", null, true);
                    echo "</a>
                        </td>
                    </tr>";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['m'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 144
                echo "                </table>
            </div>";
            }
            // line 147
            echo "        </div>

        <div class=\"span6\">
            <div class=\"well well-small well-box\">
                <b><i class=\"icon-bullhorn\"></i> Pengumuman</b>
                <table class=\"table table-striped table-condensed\">";
            // line 153
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["pengumuman"]) ? $context["pengumuman"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["p"]) {
                // line 154
                echo "                    <tr>
                        <td>";
                // line 155
                echo anchor(("pengumuman/detail/" . $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "id")), $this->getAttribute((isset($context["p"]) ? $context["p"] : null), "judul"));
                echo "</td>
                    </tr>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['p'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 158
            echo "                </table>
            </div>

            <div class=\"well well-small well-box\">
                <b><i class=\"icon-signin\"></i> Riwayat login pengguna</b>
                <div id=\"show-last-login-list\"></div>
            </div>
        </div>
    </div>";
        }
        // line 168
        echo "
</div>
<!--/#btn-controls-->";
    }

    public function getTemplateName()
    {
        return "welcome.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  310 => 168,  299 => 158,  291 => 155,  288 => 154,  284 => 153,  277 => 147,  273 => 144,  262 => 140,  258 => 138,  254 => 137,  250 => 134,  248 => 133,  245 => 130,  234 => 126,  230 => 124,  226 => 123,  219 => 117,  212 => 112,  207 => 108,  205 => 107,  203 => 106,  201 => 105,  189 => 93,  181 => 90,  178 => 89,  174 => 88,  167 => 82,  160 => 77,  155 => 73,  153 => 72,  151 => 71,  149 => 70,  145 => 66,  132 => 55,  124 => 52,  121 => 51,  117 => 50,  105 => 40,  101 => 39,  95 => 36,  91 => 35,  85 => 32,  81 => 31,  75 => 28,  71 => 27,  67 => 25,  64 => 22,  62 => 21,  58 => 17,  54 => 15,  52 => 14,  50 => 13,  45 => 11,  39 => 10,  31 => 4,  28 => 3,);
    }
}
