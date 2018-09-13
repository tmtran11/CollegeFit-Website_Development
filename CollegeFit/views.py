from django.shortcuts import render
from .models import Form
from nn.DNN import predict


def home(request):
    return render(request, 'CollegeFit/home.html')


def form(request):
    if request.method == 'POST':
        form = Form(request.POST)
        if form.is_valid():
            data = [
                form.cleaned_data['act_avg'],
                form.cleaned_data['sat_avg'],
                form.cleaned_data['enrollment'],
                form.cleaned_data['acceptance_rate'],
                form.cleaned_data['percent_receiving_aid'],
                form.cleaned_data['business_rep_score'],
                form.cleaned_data['engineering_rep_score'],
                form.cleaned_data['cost_after_aid'],
                form.cleaned_data['tuition'],
                form.cleaned_data['rank'],
                form.cleaned_data['state'],
                form.cleaned_data['institutional_control']
            ]
            univ_list = predict(data, top=form.cleaned_data['top'])
            return render(request, 'CollegeFit/result.html', {'univ_list': univ_list})
    else:
        form = Form()
    return render(request, 'CollegeFit/form.html', {'form': form})

