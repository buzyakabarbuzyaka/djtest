from django.urls import path
from . import views

urlpatterns = [
    path('hello_world/', views.hello_world, name='hello_world'),
    # path('prediction/', views.prediction, name='prediction'),
    path('prediction/', views.JsonView.as_view(), name='prediction'),
]