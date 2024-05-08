# Slurm Project

This repository contains two example projects designed to demonstrate how to run computational jobs on a Slurm cluster using R and Python. Each project is structured to promote reproducibility and organization, making use of Slurm for job scheduling.

# Project Structure

Each language-specific project (r_project and python_project) contains several directories:

- `data/`: Store input data files that will be used by the scripts.
- `results/`: Output results will be saved here after script execution.
- `scripts/`: Contains the main project scripts and the Slurm submit script.
- `utilities/`: Place for additional utility functions or scripts.
- `config/`: Holds configuration files where script variables and settings are defined to ensure reproducibility.

## Specifics for Python Project

The python_project also includes a virtual environment to isolate and manage Python package dependencies. The dependencies should be defined in a requirements.txt file, ensuring consistent setups across different environments. To generate the requirements.txt file for your project, run the following command:

```bash
pip freeze > requirements.txt
```

# Prerequisites

- For the R project: \
  - `R` and necessary R packages
- For the Python project:
  - `Python 3.x`
  - `pip` for managing packages

# Testing the basic setup
You can test the basic setup by running the following commands:

```bash
cd python_project
./scripts/submit_py.sh scripts/script.py configs/config.conf
```

or if you are using R:

```bash
cd r_project
./scripts/submit_R.sh scripts/script.R configs/config.conf
```

This should submit a job to the Slurm cluster, which will run the script using the configuration file provided. The output, which in this case is a simple copy of the 'data/dummy_data.csv' should be saved in the `results/` directory.


# Customizing to your needs

1. Create your own directory on the group share if not already done so:

  ```bash
  cd /net/home.isilon/ag-pahle/
  mkdir <your_name>
  ```

2. Clone the Repository:
  ```bash
  cd /net/home.isilon/ag-pahle/your_name
  git clone https://github.com/SzVarga/slurm_examples.git
  ```

3. Taylor the project to your needs. Make sure to install the necessary packages for your projects.
   If you are using Python, you can follow the steps below to set up the virtual environment:
  
  ```bash
  source env/bin/activate
  pip install <required_package>
  pip freeze > requirements.txt
  deactivate
  ```

4. Submit jobs to Slurm:

  ```bash
  cd /net/home.isilon/ag-pahle/your_name/project_name
  ./scripts/submit_R.sh scripts/<script_name> <path_to_script_config_file>
  ./scripts/submit_py.sh scripts/<script_name> <path_to_script_config_file>
  ```

5. Monitor the job status:

  ```bash
  squeue
  ```

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).