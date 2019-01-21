from django.contrib.syndication.views import Feed
from django.urls import reverse
from projet.models import Projet


class LatestEntriesFeed(Feed):
    title = "project news"
    link = "/project/list/"
    description = "all project published"

    def items(self):
        return Projet.objects.order_by('id')[:5]

    def item_title(self, item):
        return item.titre

    def item_description(self, item):
        return item.description

    # item_link is only needed if NewsItem has no get_absolute_url method.
    def item_link(self, item):
        return reverse('project/project_view', args=[item.pk])
