
media_vol <- function(base, reservoir, year = 2022, month = 4) {
  "https://git.io/JOLeb" %>%
    readr::read_csv2() %>%
    dplyr::mutate(ano = lubridate::year(data), mes = lubridate::month(data)) %>%
    dplyr::group_by(sistema, ano, mes) %>%
    dplyr::summarise(media_volume_porcentagem = mean(volume_porcentagem)) %>%
    dplyr::ungroup() %>%
    dplyr::filter(ano == year, mes == month, sistema == reservoir)
}
