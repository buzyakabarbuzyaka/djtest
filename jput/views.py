from django.shortcuts import render


def hello_world(request):
    return render(request, 'jput/hello_world.html', {'data':'{"predict":True}'})