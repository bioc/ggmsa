##' Theme for ggmsa.
##'
##' @title theme_msa
##' @importFrom ggplot2 theme_minimal
##' @importFrom ggplot2 labs
##' @export
##' @author Lang Zhou
theme_msa <- function(){
  list(
    xlab(NULL),
    ylab(NULL),
    labs(fill = "Fills"),
    coord_fixed(),
    scale_x_continuous(expand = c(0,0)),
    theme_minimal() +
        theme(
            strip.text = element_blank(),
            panel.spacing.y = unit(.4, "in"),
            panel.grid = element_blank())
  )
}


##' @importFrom grDevices colorRampPalette
##' @importFrom RColorBrewer brewer.pal
##' @importFrom ggplot2 coord_cartesian
##' @importFrom ggplot2 scale_x_continuous
##' @importFrom ggplot2 scale_y_continuous
##' @importFrom ggplot2 scale_fill_gradientn
bar_theme <- function(tidy){
    data <- bar_data(tidy)
    color_palettes <- colorRampPalette(brewer.pal(n = 9, 
                                                  name = "Blues")[c(4:7)])
    list(
        xlab(NULL),
        ylab("consensus"),
        scale_x_continuous(breaks = data[[3]], 
                           labels = data[[1]],
                           expand = c(0,0)),
        scale_y_continuous(breaks = NULL),
        scale_fill_gradientn(colours = color_palettes(100)),
        theme_minimal() +
            theme(panel.grid.minor.x = element_blank(), 
                  panel.grid.major.x = element_blank())
        )
}

facet_scale <- function(facetData, field) {
    facet0_pos <- facetData[facetData$facet == 0,"position"]
    msa_start <- min(facet0_pos)
    
    ## x labels of facet 0
    facet0_xl_scale <- pretty(min(facet0_pos):max(facet0_pos)) 
    
    ## assign the start postion to the first label
    facet0_xl_scale[1] <- msa_start 
    xl_scale <- facet0_xl_scale
    for(i in max(facetData$facet) %>% seq_len) {
        scale_i <- facet0_xl_scale + field * i
        if(msa_start > 1) scale_i[1] <- scale_i[1] + 1
        #print(scale_i)
        xl_scale <- xl_scale %>% c(scale_i)
    }
    max_pos <- facetData$position %>% max
    xl_scale <- xl_scale[xl_scale <= max_pos]
    return(xl_scale)
}




