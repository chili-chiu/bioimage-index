# BioImage Index

**Does this public bioimage exist, and where is it?**

BioImage Index is a federated, image-level search layer for public bioimaging data. Repositories keep their data. The index helps people find which images exist and where to get them.

*Open project · Phase 1 · Building in public. Schema and protocol drafts are developed in the open, and we are looking for use cases and repositories to shape them.*

[Share a use case](get-involved.md){ .md-button .md-button--primary }
[Follow on GitHub](https://github.com/bioimage-index){ .md-button }

## The gap

Public bioimage data is growing. Finding the right images in it is still hard.

- **Spread across repositories.** Each repository has its own search and its own way of describing images. You need to know where to look before you can look.
- **Study-level, not image-level.** Discovery typically works at the level of a study or dataset. Finding the specific images that fit a question can mean opening studies one by one.
- **A first step for reuse.** Reuse, benchmarking and model training all start with finding the right images. A shared findability layer can serve people and automated agents alike.

## How it works

A findability layer, not another archive.

1. **Federated, not centralized.** Each repository keeps its storage, its curation and its identity. The index brings together lightweight records that point back to the source.
2. **Image-level.** One record per image, answering a simple question: does this file exist, and where is it? Each record keeps the license of its repository of origin.
3. **Just enough metadata.** A small core schema, not full harmonization. Repositories describe images the way they already do. We define the minimum needed to find and locate them.

!!! note "Where we start"
    Phase 1 covers OME-Zarr images from five resources: Allen Institute, Biohub, BioImage Archive (EMBL-EBI), Image Data Resource (University of Dundee) and SSBD (RIKEN). It builds on the study-level work of [foundingGIDE's GIDE-REMBI](https://github.com/German-BioImaging/gide-data-deliverable) and extends it to individual images.

## What would you search for?

We are organizing the work around what people want to find, not around which repository holds it. Illustrative searches (are these the right questions?):

- Mouse brain volumes imaged by light-sheet microscopy at sub-micron resolution
- Live-cell time-lapse movies that already come with segmentation labels
- Every public image of a given tissue, whichever repository holds it
- Images I can stream directly in OME-Zarr, without downloading a whole dataset

Tell us which searches would save you the most time, what a result must show before you would trust it (license, modality, resolution, access), and what you wish repositories exposed that they do not today. See [Get involved](get-involved.md).
