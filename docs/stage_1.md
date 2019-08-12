# Stage 1 - Detection

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
