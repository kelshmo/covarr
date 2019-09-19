processing_plan <- drake_plan(
  raw_data = readr::read_csv(file_in("../../files_to_import.csv")),
  input_data = get_data(raw_data)
)
config <- drake_config(processing_plan)
drake::vis_drake_graph(config)
