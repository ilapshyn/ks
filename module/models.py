from django.db import models

DATE_PUBLISHED = 'date published'

# Create your models here.
class Divan(models.Model):
    name        = models.CharField(max_length=50)
    pub_date    = models.DateField(DATE_PUBLISHED)
    
    def __unicode__(self):
        return self.name