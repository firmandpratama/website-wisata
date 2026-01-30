<?php

function geocode_osm_by_name(string $namaWisata): ?array
{
    $query = urlencode($namaWisata . " Bantul Yogyakarta");

    $url = "https://nominatim.openstreetmap.org/search"
        . "?format=json&q={$query}&limit=1";

    $opts = [
        "http" => [
            "header" => "User-Agent: Wisataku/1.0\r\n"
        ]
    ];

    $context = stream_context_create($opts);
    $response = @file_get_contents($url, false, $context);

    if (!$response) return null;

    $data = json_decode($response, true);

    if (empty($data[0])) return null;

    return [
        'lat' => (float) $data[0]['lat'],
        'lng' => (float) $data[0]['lon'],
    ];
}
