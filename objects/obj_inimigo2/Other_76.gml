if (event_data[? "event_type"] == "sequence event") {
    if (event_data[? "message"] == "fim") {
        layer_sequence_destroy(event_data[? "element_id"]);
    }
}