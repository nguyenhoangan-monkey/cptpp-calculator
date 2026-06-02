<h1 align="center">
<img src="https://raw.githubusercontent.com/nguyenhoangan-monkey/cptpp-dashboard/main/docs/assets/cover.jpg" width="750">
</h1>

Photo by [Carl Campbell](https://www.flickr.com/photos/carlbcampbell/40771198003/) (CC BY). Hatsune Miku © Crypton Future Media, Inc. 2007 (CC BY-NC)

----

Simple dashboard to manipulate with the OCaml CPTPP compliance engine and create exportable documents.

TODO:
- Enable .xlsx and .csv upload, then feed to OCaml to generate internal types
- Allow manual entry from the dashboard
- The idea is that the user must format it locally before uploading. if it reject, it gives an useful notification why. also provide the user the template to format the data to similar to Thompson Reuters ONESOURCE



## Certificate of origin for exporters

 There is no standardized form for CPTPP certificate of origin. Thus, exporters may use the "certificate of origin generator" from cptpp-dashboard and add your signature directly, since the fields are made to match with CPTPP Annex 3-B. In addition, there is a toggle to add the additional forms and fields **recommended** by some countries. The form is heavily based from Japan Customs [C5292](https://www.customs.go.jp/roo/procedure/C5292-3e.docx) and [C-5293](https://www.customs.go.jp/kaisei/youshiki/form_C/C5293.docx) forms.

NOTE: Some countries did not go to full self-certification for the exporter yet. If you are from Brunei, Vietnam and Malaysia, please consult the local authorities to get a certificate of origin, unless you have been officially granted 'Approved Exporter' status.

```
Origin Criterion Legend:
WO: Wholly obtained or produced goods.
PE: Goods produced exclusively from originating materials.
PSR: Goods satisfying substantial transformation criterion.
CTC: Change in tariff classification criterion.
VA: Value-added criterion.
SP: Specific manufacturing or processing operation criterion.
DMI: De Minimis or Tolerance.
ACU: Accumulation.
```
