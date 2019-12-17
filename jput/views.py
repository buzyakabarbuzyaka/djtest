from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.views import APIView


class JsonView(APIView):
    def get(self, request):
        return Response({"predicton": False})

from django.conf import settings

def hello_world(request):
    with open("./content/media/hookah.txt", "r") as f:
        data = f.readlines()
    data = [l.strip() for l in data]
    return render(request, 'jput/hello_world.html', {'data': data, 'ID': settings.ID})
