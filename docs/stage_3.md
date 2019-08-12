# Stage 3 - Analysis

-   Displacement (slider)

    Moving this slider will move the markers between their detected and
    reference position.

-   Pillars

    Toggle to switch between pillars and continuous substrates.
    Selecting `Pillars` will display a different menu, as the
    processing of the two cases is different from here on out.

## Stage 3 - Analysis - Pillars 

-   Scaling

    The magnification in the image with respect to the actual distance
    in *μm/px*.

-   E

    The pillar's Young's Modulus in *MPa*

-   I

    The pillar's area moment of inertia in *μm^4^*

-   L

    The pillar's length in *μm*

## Stage 3 - Analysis - Continuous

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
