#' Calcular media do volume
#'
#' Essa funcao calcula a media de volume (%) armazenado ...
#'
#' @param reservoir nome do reservatorio, em texto
#' @param year ano em numero
#' @param month mes em numero
#'
#' @return uma tibble
#' @export
#'
#' @examples media_vol("Cantareira")
media_vol <- function(reservoir, year = 2022, month = 4) {

  "https://git.io/JOLeb" %>%
    readr::read_csv2() %>%
    dplyr::mutate(ano = lubridate::year(data), mes = lubridate::month(data)) %>%
    dplyr::group_by(sistema, ano, mes) %>%
    dplyr::summarise(media_volume_porcentagem = mean(volume_porcentagem)) %>%
    dplyr::ungroup() %>%
    dplyr::filter(ano == year, mes == month, sistema == reservoir)
}
