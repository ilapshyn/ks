from django.conf.urls.defaults import patterns, url
import views

urlpatterns = patterns('',
    url(r'^soft-mebel',     views.soft_mebli,   name='soft-mebel'),
    url(r'^vorota',         views.vorota,       name='vorota'),
    url(r'^kyhni',          views.kyhni,        name='kyhni'),
    url(r'^shafy-kupe',     views.shafy_kupe,   name='shafy-kupe'),
    url(r'^stoly-krisla',   views.stoly_krisla, name='stoly-krisla'),
    url(r'^spalni',         views.spalni,       name='spalni'),
    url(r'^shaluzi',        views.shaluzi,      name='shaluzi'),
    url(r'^kartyny',        views.kartyny,      name='kartyny'),
    url(r'^oplata',         views.oplata,       name='oplata'),
    url(r'^kontakty',       views.kontakty,     name='kontakty'),
    url(r'^home',           views.index,        name='home'),
    url(r'^',               views.index,        name='index'),
    url(r'^$',              views.index,        name='root'),
)
