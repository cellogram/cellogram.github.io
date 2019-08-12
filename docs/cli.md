# Command-line Interface

One asset of Cellogram is the possibility to process large amounts of
data in automatically in a batch process. For this the command-line
interface needs to be used. The command-line interface options are
visible in *Table 1*.

| Short Option | Long Option | Type | Description |
|-----|--------------|-------| ------------------------------------|
| `-h`  | `--help`      |       | Print help message and exit         |
| `-i`  | `--input`     | TEXT  | Input image.                        |
| `-s`  | `--settings`  | TEXT  | Path to json settings               |
| `-f`  | `--file`      | TEXT  | Path to saved data for scene        |
| `-b`  | `--begin`     | INT   | From which phase to run the script  |
| `-e`  | `--end`       | INT   | Until which phase to run the script |
| `-c`  | `--cmd`       |       | Run without GUI                     |

**Table 1.** Command-line interface options

<br>

- **`-i --input`** This input is followed by a path to the image that is
analyzed. For a batch process, iterate over different images

- **`-s --settings`** This input determines the path to a json file that
contains non-default parameters for Cellogram. The easiest way to
generate this, is by running one image with the UI and saving a json of
the data, which will include the settings.

- **`-c`** Add this flag to not show the UI. This flag is required to do
automatic processing. If it omitted, then Cellogram will only load the
input file and the settings, but not do any processing.

- **`-f --file`** If there is already data available, with which the batch
process should start, then the path to this file is given with this
argument. Be sure to adjust `-b` to not start from the first stage.

- **`-b --begin`** Followed by an integer. See below which integer to
choose:

    - 0: Fresh start
    - 1: Start with detection
    - 2: Start with reference position estimation
    - 3: Start with FEA

- **`-e --end`** Followed by an integer. See below which integer to
choose:

    - 1: End after detection
    - 2: End after reference position estimation
    - 3: End after FEA

### Examples

- Start Cellogram with image and settings
    ```
    ./Cellogram.exe -i ./TestImages/QDs/1.tif -s ./TestImages/QDs/1/settings.json
    ```

- Start Cellogram and run full analysis with default settings
    ```
    ./Cellogram.exe -i ./test.tif -c
    ```

- Start Cellogram and run full analysis with custom settings
    ```
    ./Cellogram.exe -i ./test.tif -s ./settings.json -c
    ```

- Start Cellogram and run FEA only with custom settings and loading
    available data
    ```
    ./Cellogram.exe -i ./test.tif -s ./settings.json -f ./test/all.json -b 3 -e 3 -c
    ```
