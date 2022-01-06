{*
* 2007-2022 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2022 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!-- Button trigger modal -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Modal -->
<div class="modal fade" id="bannercookie" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title" id="exampleModalLabel">{l s='titulo' mod='simoesbannercookie' }</h1>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h5> {l s='mensaje' mod='simoesbannercookie' } </h5>
            </div>
            <div class="modal-footer">
                <button type="button" id="aceptar" class="btn btn-primary">{l s='aceptar' mod='simoesbannercookie' }</button>
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function() {
       
        if (document.cookie.replace(/(?:(?:^|.*;\s*)BannerAlertCookie\s*\=\s*([^;]*).*$)|^.*$/,
                "$1") !== "true") {
            $("#bannercookie").modal('show');
        }

        $("#aceptar").click(function() {
            if (document.cookie.replace(/(?:(?:^|.*;\s*)BannerAlertCookie\s*\=\s*([^;]*).*$)|^.*$/,
                    "$1") !== "true") {
                document.cookie = "BannerAlertCookie=true; expires=Fri, 31 Dec 9999 23:59:59 GMT";
                $("#bannercookie").modal('hide');
            }
        });

    });
</script>