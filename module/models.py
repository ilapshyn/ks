# -*- coding:utf-8 -*-
from PIL import Image
from django.db import models


STATIC              = '/static/'
MODULE_STATIC       = 'module/static/'
STATIC_IMAGES       = 'module/static/images/'
STATIC_IMAGES_SMALL = 'module/static/images/small/'

# Create your models here.
class BaseDivan(models.Model):
    name        = models.CharField(max_length=50)
    image       = models.ImageField(upload_to = STATIC_IMAGES)
    
    class Meta:
        abstract = True
    
    @property
    def url(self):
        return self.image.name.replace(MODULE_STATIC, STATIC)
    
    @property
    def small_url(self):
        return self.image.name.replace(STATIC_IMAGES, STATIC_IMAGES_SMALL).replace(MODULE_STATIC, STATIC)

    def save(self, size=(290, 190)):
        if not self.id and not self.image:
            return
        super(BaseDivan, self).save()
        filename = self.image.name
        filename_small = filename.replace(STATIC_IMAGES, STATIC_IMAGES_SMALL)
        _image = Image.open(filename)
        _image.thumbnail(size, Image.ANTIALIAS)
        _image.save(filename_small)
    
    def __unicode__(self):
        return self.name
    
    
class SoftMebel(BaseDivan):    
    type        = models.CharField(max_length=50, choices = [('1', 'Дивани'),
                                                             ('2', 'Кутові дивани'),
                                                             ('3', 'Дивани-ліжка'), 
                                                             ('4', 'Офісні дивани'),
                                                             ('5', 'Мякі крісла та пуфіки'), 
                                                             ('6', 'Готові мякі меблі')])
    
