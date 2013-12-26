from PIL import Image
from django.db import models


DATE_PUBLISHED = 'date published'

# Create your models here.
class Divan(models.Model):
    name        = models.CharField(max_length=50)
    pub_date    = models.DateField(DATE_PUBLISHED)
    image       = models.ImageField(upload_to = 'module/static/images/')

    def save(self, size=(40, 30)):
        if not self.id and not self.image:
            return
        super(Divan, self).save()
        filename = self.image.name
        
        _image = Image.open(filename)
        _image.thumbnail(size, Image.ANTIALIAS)
        _image.save(filename)
    
    def __unicode__(self):
        return self.name