from django.shortcuts import render,redirect
from accounts.confirmation_email import send_booking_confirmation_email
from accounts.models import Prospectivetenant, Landlord
from rental_app.models import Rooms, Apartments, Booking_History
from rental_app.forms import RoomForm, ApartmentForm
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from accounts.decorators import landlord_required, tenant_required
from django.db.models import Q
from django.contrib.auth.decorators import permission_required

#veiwing one room, booking it and sending the emails to both tenant and landlord
def viewRoom(request, id):
    room = Rooms.objects.get(id=id)
    if request.method == 'POST':
        user = request.user
        real_user = Prospectivetenant.objects.get(user=user)
        booking_history = Booking_History(room=room,user=real_user)
        booking_history.save()
        send_booking_confirmation_email(real_user,room,request)
        
        room.booked=True
        room.tenant=real_user
        room.save()
        return render(request, "app/notification.html")
    return render(request, 'app/detail_page.html',{'room':room})


#view all rooms
# @permission_required('user.is_active',login_url='/')
def viewRooms(request):
    rooms = Rooms.objects.filter(booked=False)
    return render(request, 'app/rooms.html', {'rooms': rooms})

#view one apartment
def viewApartment(request, id):
    apartment = Apartments.objects.get(id=id)
    return render(request, 'app/apartment.html', {'apartment': apartment})

#view rooms for a specific landlord
@landlord_required
def viewRooms_L(request):
    user = request.user
    rooms = Rooms.objects.filter(apartment__landlord__user__id = user.id)
    return render(request, 'app/rooms.html', {'rooms': rooms})

#tenant booking history
@tenant_required
def viewHistory(request):
    user = request.user
    tenant = Prospectivetenant.objects.get(user=user)
    history = Booking_History.objects.filter(user=tenant)
    return render(request, 'app/booking-history.html', {'histories':history})

#search room by different fields
def result(request):
    if request.method == 'GET':
        query = request.GET.get('query')
        if query:
            rooms = Rooms.objects.filter(
                Q(booked=False) & 
                (
                    Q(room_number__icontains=query) |
                    Q(rent__icontains=query) | 
                    Q(room_type__icontains=query) |
                    Q(apartment__apartment_name__icontains=query) |
                    Q(apartment__location__icontains=query)
                )
            )
            return render(request, 'app/search.html', {'rooms': rooms,'query':query})

        return render(request, 'app/search.html')

#add room
@landlord_required  
def add_room(request, id):
    if request.method == 'POST':
        form = RoomForm(request.POST, request.FILES)
        if form.is_valid():
            form.instance.apartment = Apartments.objects.get(id=id)
            form.save()
            id = form.instance.id
            return redirect(f'/rentals/room/{id}/')
    else:
        form = RoomForm()
    return render(request, 'app/add_room.html',{'form':form,'mode':'room'})

#update the particular room
@landlord_required
def update_room(request, id):
    room = Rooms.objects.get(id=id)
    if request.user == room.apartment.landlord.user:
        if request.method == 'POST':
            form = RoomForm(request.POST, request.FILES, instance=room)
            if form.is_valid():
                form.save()
                return redirect(f'/rentals/room/{id}/')
                
        else:
            form = RoomForm(instance=room)
            
        context = {'form':form, 'mode':'room_u'}
        return render(request, 'app/add_room.html',context)
    else:
        messages.info(request,"You are not allowed to perform this operation")
        return redirect('/')

#delete room
def delete_room(request, id):
    room = Rooms.objects.get(id=id)
    if request.user == room.apartment.landlord.user:
        room.delete()
        messages.info(request, 'Room deleted succesfully')
        return redirect('/')
    
    else:
        messages.info(request, 'You are not allowed to perform this operation')
        return redirect('/')

#add apartment
@landlord_required  
def add_apartment(request):
    if request.method == 'POST':
        form = ApartmentForm(request.POST, request.FILES)
        if form.is_valid():
            user_l = Landlord.objects.get(user=request.user)
            form.instance.landlord = user_l
            form.save()
            id = form.instance.id
            return redirect(f'/rentals/apartment/{id}/')
    else:
        form = ApartmentForm()
    return render(request, 'app/add_room.html',{'form':form, 'mode':'apartment'})


#update apartment
@landlord_required
def update_apartment(request, id):
    apartment = Apartments.objects.get(id=id)
    if request.user == apartment.landlord.user:
        if request.method == 'POST':
            form = ApartmentForm(request.POST, request.FILES, instance=apartment)
            if form.is_valid():
                form.save()
                return redirect(f'/rentals/apartment/{id}/')
        else:
            form = ApartmentForm(instance=apartment)
            
        return render(request, 'app/add_room.html',{'form':form, 'mode':'apartment_u'})
    else:
        messages.info(request,"You are not allowed to perform this operation")
        return redirect('/')


#delete apartment
@landlord_required
def delete_apartment(request, id):
    apartment = Apartments.objects.get(id=id)
    if request.user == apartment.landlord.user:
        apartment.delete()
        messages.info(request, 'Apartment deleted succesfully')
        return redirect('/')
    
    else:
        messages.info(request, 'You are not allowed to perform this operation')
        return redirect('/')

# Create your views here.


'''
student = Student.objects.get(id=id)
    student.delete()
'''