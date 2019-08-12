# Interface Documentation

Many fields in the UI have tool-tips when hovered. If the tool-tips do
not help find the explanation for every button, field and panel below.

## Menu bar

-   File

    -   Load Image

        To load a gray scale image (png, tiff) navigate to the directory
        where the image is stored and load it.

    -   Save

        This will save the current scene (detected positions, mesh,
        etc.) as a json in the standard location (directory of image in
        a subdirectory with the image\'s name) under the standard name
        (`all`)

    -   Save as

        Same as `Save` but gives the option to choose the directory
        and file name

    -   Quit

        Closes Cellogram

-   View

    -   Image

        Toggle displaying the image

    -   Points

        Toggle displaying the detected markers

    -   Points Color (color picker)

        Pick color of displayed markers

    -   Mesh

        Toggle displaying retrieved mesh

    -   Mesh Color (color picker)

        Pick color of retrieved mesh

    -   Mesh Fill

        Toggle the fill of the mesh faces

    -   Displacements

        Toggle the visualization of displacements

    -   Traction

        Toggle to show tractions

    -   Point size (slider)

        Change the displayed size of detected markers

## Input File

-   Load Image

    Load a gray scale image (png, tiff). Navigate to the directory where
    the image is stored and load it.

-   Load data (icon)

    If data is available as a json in the standard location (directory
    of image in a subdirectory with the image\'s name) under the
    standard name (`all`), this button is enabled. It will load
    previously stored data and jump to the last available stage in the
    analysis process.

-   Save data (icon)

    Saves current scene as a json in the standard location (directory of
    image in a subdirectory with the image\'s name) under the standard
    name (`all`)
