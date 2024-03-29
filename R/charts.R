#' Full data from tsort.info: Songs and Albums from 1900 to 2018.
#'
#' A dataset containing all songs and albums from \url{https://tsort.info}. Version 2-8-0044.
#'
#' Note that usage of data from tsort.info is free under the following conditions:
#'
#' 1. Acknowledge the source.
#'
#' 2. Prominently link to \url{https://tsort.info}
#'
#' 3. Always include version number.
#'
#' File version "2-8-0044" included as an attribute. See Examples section.
#'
#' Note that rankings and scores are likely to change in new versions provided at \url{https://tsort.info}.
#'
#'@format A data frame with 71291 rows and 17 variables:
#' \describe{
#'     \item{artist}{Name of Band / Artist}
#'     \item{name}{The name of the entry (song or album title)}
#'     \item{type}{The type of the entry, either "song" or "album"}
#'     \item{year}{The year allocated to the entry (may be unknown)}
#'     \item{score}{Total score, calculated using weights by region and year, as documented in more detail at tsort.info. See FAQ. Datasets containing weights are available there.}
#'     \item{songentry_pos}{The song's position in the Top Songs list (or the empty string if it is not in it)}
#'     \item{songyear_pos}{The song's position in its Song Year list}
#'     \item{songartist_pos}{The artist's position in the Top Artists list (note that only the artist's top song is labeled in this way)}
#'     \item{songtitle_pos}{The song title's position in the Top Titles list (note that only the most highly placed cover version is labeled for each title)}
#'     \item{songdecade_pos}{The song's position in its Song Decade list}
#'     \item{namsong_pos}{The song's position in the Top North American Songs list for its year}
#'     \item{eursong_pos}{The song's position in the Top European Songs list for its year}
#'     \item{albumentry_pos}{The album's position in the Top Albums list}
#'     \item{albumyear_pos}{The album's position in its Album Year list}
#'     \item{albumartist_pos}{The artist's position in the Top Album Artists list (note that only the artist's top album is labeled in this way)}
#'     \item{albumdecade_pos}{The album's position in its Album Decade list}
#'     \item{notes}{The chart entries for this item (this follows the templates defined on the Song Charts and Album Charts pages)}
#'     }
#'
#' @source \url{https://tsort.info}
#'
#' @examples
#' data(charts)        # Lazy loading
#'
#' ## Access file version number:
#' attr(charts, "version")
#' str(charts)
"charts"
