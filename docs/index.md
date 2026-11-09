# BioImage Index

**Does this public bioimage exist, and where is it?**

BioImage Index is a federated, image-level search layer for public bioimaging data. Repositories keep their data. The index helps people find which images exist and where to get them.

[Share a use case](https://github.com/chili-chiu/bioimage-index/issues/new){ .md-button .md-button--primary }
[Follow on GitHub](https://github.com/chili-chiu/bioimage-index){ .md-button }

*Open project · Phase 1 · Building in public. We are looking for use cases and repositories to help shape the schema and protocol.*

## The gap

Public bioimage data is growing, but finding the right images in it is still hard.

- **Spread across repositories.** Each has its own search and its own way of describing images.
- **Study-level, not image-level.** Finding the images that fit a question can mean opening studies one by one.
- **A first step for reuse.** Reuse, benchmarking and model training all start with finding the right images.

## How it works

A findability layer, not another archive.

1. **Federated.** Each repository keeps its storage, curation and identity. The index holds lightweight records that point back to the source.
2. **Image-level.** One record per image, answering: does this file exist, and where is it? Each record keeps the license of its source repository.
3. **Just enough metadata.** A small core schema, not full harmonization. We define the minimum needed to find and locate images.

!!! note "Where we start"
    Phase 1 covers OME-Zarr images from five resources: Allen Institute, Biohub, BioImage Archive (EMBL-EBI), Image Data Resource (University of Dundee) and SSBD (RIKEN). It builds on [foundingGIDE's GIDE-REMBI](https://github.com/German-BioImaging/gide-data-deliverable) and extends it from studies to individual images.

## What would you search for?

Illustrative searches. Are these the right questions?

- Mouse brain volumes imaged by light-sheet microscopy at sub-micron resolution
- Live-cell time-lapse movies that already come with segmentation labels
- Every public image of a given tissue, whichever repository holds it
- Images I can stream directly in OME-Zarr, without downloading a whole dataset

Have a different question? [Tell us](get-involved.md).
