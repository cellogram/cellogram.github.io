<!-- Hide h4+ from toc  -->
<style>.md-nav--secondary .md-nav__list .md-nav__list .md-nav__list { display: none }</style>

<h1>Cellogram Documentation</h1>

## Requirements

Cellogram does not require any commercial software and was tested on
Windows 10 Enterprise and Mac OS X 10.14. The executable is not signed,
therefore on Mac it requires to enable the option to run untrusted
applications. The simplest way is to right click on Cellogram, select
"open" and allow it to open in any subsequent dialogues. Note that you
might need to allow running apps from not coming from the apple store.
To do so, go to `System Preferences > Security & Privacy` the
General tab and click the `App Store and identified developers` radio
button (this step requires admin priviledges).

## Usage Instructions

This section explains the most important steps to calculate the traction
forces for an image. For a detailed explanation of all the fields, see
Section 4. Save the progress at any time during this process by clicking
`File > Save` or the floppy disk icon.

### Loading Image

The mouse navigates in the user interface (UI). Right click and drag
moves the field of view. The mouse wheel zooms in and out. When
Cellogram starts up there is no image loaded. First, click on the `Load Image`
in the UI or select `File > Load Image` (*Figure 1: Stage 1
- Detection*). Navigate to a grayscale image in Portable Network
Graphics (png) or Tagged Image File Format (tiff) format and select and
load the image. The image should appear as seen in the screenshot in
Figure 1.

![**Figure 1.** Stage 1 - Detection.](media/image1.png)

### Marker Detection

For the detection of the markers Gaussian are fitted in the image. The
fields under `Stage 1 - Detection` are `Sigma` which determines the
size of the Gaussian that are fitted. A good starting value for is 1.5
and 3 for QDs and pillars, respectively. This value may need to adjusted
depending on magnification and marker size. To start detection click on
the `Detect` button. In case markers are missed, or detected
incorrectly they can be added or deleted under `Advanced vertex
options` or with the hot-keys `a` and `d`.

### Reference Estimation

The connectivity of the mesh is found by clicking on the right arrow
button in `Stage 1 - Detection` menu (*Figure 1*). If the meshing
step finds missing or surplus markers, it fixes them. Removed markers
are marked orange, while added markers are green. Should there be added
marker, the user has the option to move the added marker to the correct
position by clicking `Move vertex` in the `Stage 2 - Meshing` menu
before proceeding. Next click on the right arrow button to relax the
mesh and find the reference position. The displacements become visible
(*Figure 2*).

![**Figure 2.** Stage 3 - Analysis.](media/image2.png)

### Finite Element Analysis

For the finite element analysis (FEA) enter the material parameters in
the `Stage 3 - Analysis` menu. Hover the fields to get information on
the individual fields and units. Next click `Build volumetric mesh` to
generate a finer mesh for the analysis (*Figure 2*). The density of the
mesh is tuned in the `Advanced mesh option` see Section 4 for details.
Once the mesh is available, click the right arrow button to start the
FEA.

### Results

Once the FEA is complete and the `Results` menu is visible (*Figure 3*).
At this point the process is complete but the viewer has options to
either show the displacements `U` or the tractions `T`.

![**Figure 3.** Results.](media/image3.png)

## Command-line Interface

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

## UI Documentation

Many fields in the UI have tool-tips when hovered. If the tool-tips do
not help find the explanation for every button, field and panel below.

### Menu bar

-   File

    -   Load Image:

        To load a gray scale image (png, tiff) navigate to the directory
        where the image is stored and load it.

    -   Save:

        This will save the current scene (detected positions, mesh,
        etc.) as a json in the standard location (directory of image in
        a subdirectory with the image\'s name) under the standard name
        (`all`)

    -   Save as:

        Same as `Save` but gives the option to choose the directory
        and file name

    -   Quit:\
        Closes Cellogram

-   View

    -   Image:

        Toggle displaying the image

    -   Points:

        Toggle displaying the detected markers

    -   Points Color (color picker):

        Pick color of displayed markers

    -   Mesh:

        Toggle displaying retrieved mesh

    -   Mesh Color (color picker)

        Pick color of retrieved mesh

    -   Mesh Fill:

        Toggle the fill of the mesh faces

    -   Displacements:

        Toggle the visualization of displacements

    -   Traction:

        Toggle to show tractions

    -   Point size (slider):

        Change the displayed size of detected markers

### Input File

-   Load Image:

    Load a gray scale image (png, tiff). Navigate to the directory where
    the image is stored and load it.

-   Load data (icon):

    If data is available as a json in the standard location (directory
    of image in a subdirectory with the image\'s name) under the
    standard name (`all`), this button is enabled. It will load
    previously stored data and jump to the last available stage in the
    analysis process.

-   Save data (icon)

    Saves current scene as a json in the standard location (directory of
    image in a subdirectory with the image\'s name) under the standard
    name (`all`)

### Stage 1 - Detection

In this stage, Cellogram detects the markers in the image. There are
options for helping out the detection algorithm.

-   Sigma

    Determines size of Gaussian for fitting to the markers in the image.
    If too many markers are detected, Sigma should be increased.

-   Otsu

    Cellogram generates a binary mask of the image at the Otsu-threshold
    level. However, this level is scaled with the factor entered here.
    If markers in dark regions are missed in the detection, lower this
    value.

-   Detect

    Initiates detection

-   Histogram (graph)

    Histogram of pixel intensities in the image. Green bars left and
    right indicate the minimum and maximum value displayed.

-   min (slider)

    Adjust the minimum pixel intensity displayed to stretch contrast in
    the image. This aids manual detection only.

-   max (slider)

    Adjust the maximum pixel intensity displayed to stretch contrast in
    the image. This aids manual detection only.

-   Advanced vertex options

    -   Delete (icon)

        Activates deleting of incorrectly detected markers by clicking
        on them with the red crosshair. Hotkey is `d`. Deactivate by
        clicking on the `Delete` button again.

    -   Add (icon)

        Activates adding of undetected markers by clicking on them with
        the green crosshair. Hotkey is `a`. Deactivate by clicking on
        the `Add` button again.

    -   Move (icon)

        Move a vertex to a new position by dragging

-   Back (icon)

    Removes image and detected points

-   Next (icon)

    Advance to `Stage 2 - Meshing` by finding the mesh connectivity

### Stage 2 - Meshing

In this stage, Cellogram has found a valid connectivity of the mesh and
cleaned up incorrectly detected markers. Additionally it has added
points that were missed during the detection.

-   Move vertex

    In case there were previously undetected points added, the button to
    move points appears. Move the points to their exact position by
    clicking and dragging them.

### Stage 3 - Analysis

-   Displacement (slider)

    Moving this slider will move the markers between their detected and
    reference position.

-   Pillars

    Toggle to switch between pillars and continuous substrates.
    Selecting `Pillars` will display a different menu, as the
    processing of the two cases is different from here on out.

#### Stage 3 - Analysis - Pillars 

-   Scaling

    The magnification in the image with respect to the actual distance
    in *μm/px*.

-   E

    The pillar's Young's Modulus in *MPa*

-   I

    The pillar's area moment of inertia in *μm^4^*

-   L

    The pillar's length in *μm*

#### Stage 3 - Analysis - Continuous

-   Material Model (drop down)

    Selection between the material models `Linear Elasticity` or `Neo Hooke`.
    The fit for the following material parameters may differ,
    depending on the selected model.

-   Scaling

    The magnification in the image with respect to the actual distance
    in *μm/px*.

-   E

    Young's modulus in *kPa*

-   nu

    Poisson ratio, select 0.49 for incompressible material.

-   Advanced mesh options

    -   Padding

        The volumetric mesh is oversized with respect to the image. This
        is to remove edge effects in *μm*.

    -   Thickness

        This is the thickness of the deformable substrate *μm*.

    -   Relative Threshold

        Toggle between the adaptive meshing criterium. Either the dense
        meshing is done based on a threshold with respect to the maximum
        displacement, or the median edge length. See below.

    -   Displ. Threshold

        This threshold identifies regions that should be meshed more
        densely, i.e. the regions with higher deformations. If
        `Relative Threshold` is selected above, then threshold value
        is with respect to the maximum displacement in the image. If
        `Relative Threshold` is not selected, then the threshold value
        is with respect to the median edge length of the marker mesh.

    -   Edge length

        Set the target edge length for the dense mesh as a percentage of
        the median marker mesh.

    -   Gradation

        The gradation determines how strong the gradient of the mesh
        element sizes is. A higher value will lead to higher gradient,
        meaning that the mesh element will grow quickly when moving away
        from regions of high displacements.

-   Build volumetric mesh

    This will initiate the volumetric mesh generation

-   Back (icon)

    Go back to `Stage 2 - Meshing`

-   Next (icon)

    Run the finite element analysis

### Results

-   View (drop down)

    Select the displayed metric. Either `U` for displacements, or
    `T` for tractions.

-   Uview (drop down)

    Select the element of the metric to display. Either the magnitude or
    one of the directional components.

-   Smooth results

    Toggle between the solution and a smoothed version of the solution.
    In the smoothed version, the constant elements are replaced by
    linear elements interpolated from their vertices.

-   Colorbar

    Indicates the value corresponding to the colors. For displacements
    in μm, for tractions in *kPa*. For pillars, the value given is in
    *μN*.
