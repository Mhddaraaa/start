<img align='center' width="700" height='400' src="https://production-media.paperswithcode.com/tasks/instance_seg_example_0xxe9yz.png">

# **Instance Segmentation**
Instance Segmentation is a computer vision task that involves identifying and separating individual objects within an image, including detecting the boundaries of each object and assigning a unique label to each object.
<br>
<br>
We can refer to Instance Segmentation as a combination of semantic segmentation and object detection 

## **Instance segmentation vs. Semantic Segmentation vs. Panoptic Segmentation**
- **Stuff** defines categories, which cannot be counted such as the sky and the road.
- **Things** are the actual objects in the image—they can be counted by assigning different instance IDs to each one of them.

1. **Semantic** Segmentation takes the input image and marks every pixel in the image to category class. Thus all instances of a particular category receive the same label.
2. **Instance** Segmentation, bounding boxes are generated for each instance of multiple categories present along with the object segmentation masks. It treats multiple objects of the same class as distinct instances.
3. **Panoptic** segmentation uses an algorithm to understand the difference between amorphous stuff and countable things like cars and persons. Panoptic segmentation uses the same backbone as that of `Mask-RCNN` used for Instance Segmentation with an extra panoptic head responsible for producing the final
  <br>
  <img align="center" width="500" height="300" src="https://assets-global.website-files.com/5d7b77b063a9066d83e1209c/621467216a720a629f946e50_ksnrpSlUFdeFtX-o_4GGcCRUBT94K1Zx04O4NWz7EL2ze1PVEUSMPq1tSD4BwlqwU6OgBFyX2PdoKGhz2IGJS8r5CBQTt6ERjbg3mVfm9DLQ9oERCYwt2BUIaAx2YWSLy1NPnPtO.png">

<br>
<br>

## **How does Instance Segmentation work?**
- Instance Segmentation methods can be both R-CNN driven or FCN drive
  <br>
  <br>
  <img align="center" width="500" src="https://assets-global.website-files.com/5d7b77b063a9066d83e1209c/621467216a720afc5b946e4f_5Ri1TC4GWqn9IguFnmIjwUn2Nj3-4SuRKcusQyE2O5tVIFuVXcXOq4SUFHSQMtleb-_nNn3nihcWj1H7UeVNeERc2_iGxpPf2ND5xYe5fwRyb4yDQ14dVbZj4elssAbUl7w3r031.png">
  <br>

- `Mask R-CNN` is the state-of-the-art model for Instance Segmentation with three outputs. It has a class label and a bounding box offset, which is similar to that of `Faster R-CNN`, and a third branch that outputs the object mask requiring extraction of a much finer spatial layout of an object.
  <br>
  <br>
  <img align='center' width='400' height='500' src="https://assets-global.website-files.com/5d7b77b063a9066d83e1209c/62146721fce59be2d8640e31_Q5WDJJexoflnMT90LixPahcPu_GlIwKY7Hr3mfmnRzNUotRty8Tb6xmt5EGnusvd2aHpOWopWM-j3iU0tq6nz7RFEejb6Z8O15HoJfQqv3XArEZLdheBOTgrzC-TZoptbsPPMNQP.png">
