from django.conf.urls import re_path

from api.views import CalculationView

urlpatterns = [
    re_path(r'^calculation/$', CalculationView.as_view(), name='calculation'),
]
