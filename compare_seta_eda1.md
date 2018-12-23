---
title: 'Long Term Care Facilities Comparison: Beechtree, Cayuga Ridge, Kendall, Oak
  Hill; Ithaca, NY'
output:
  html_document: 
    keep_md: yes
  html_notebook: default
---










## Staffing by day of week, Apr - Jun 2018


![](compare_seta_eda1_files/figure-html/unnamed-chunk-1-1.png)<!-- -->



```r
ggsave(filename = "output/ithaca_cna_staffing_pbj_2018_apr-jun_rmd.png",
       width=11,
       height=7,
       dpi = 600)
```

# Nursing Home Compare

https://www.medicare.gov/NursingHomeCompare/


The Medicare.Gov website contains profiles of facilities. (The comparison tool permits only 3 at a time.)



```r
webshot("https://www.medicare.gov/NursingHomeCompare/compare.html#cmprTab=0&cmprID=335017%2C335249%2C335793&cmprDist=1.5%2C2.4%2C4.3&lat=42.435511&lng=-76.5257007&loc=14850",
        "data/compare_seta_1.png",
        delay = 1.0)
```

![](compare_seta_eda1_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

## Beechtree Center for Rehabilitation and Nursing - ownership

Some of the information is inaccurate. The people listed as a managing employees no longer work at Beechtree.  

![](compare_seta_eda1_files/figure-html/unnamed-chunk-4-1.png)<!-- -->


## Cayuga Ridge Extended Care - ownership

Why is ownership information unavailable for Cayuga Ridge?

![](compare_seta_eda1_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

Kendall at Ithaca - ownership

![](compare_seta_eda1_files/figure-html/unnamed-chunk-6-1.png)<!-- -->


Oak Hill Manor Nursing Home - ownership

![](compare_seta_eda1_files/figure-html/unnamed-chunk-7-1.png)<!-- -->



